import 'package:dio/dio.dart';
import 'package:maids_task/domain/models/auth_models/requests/refresh_token/refresh_request.dart';
import 'package:maids_task/domain/models/auth_models/responses/profile_response/profile_response.dart';
import 'package:maids_task/domain/models/todos_models/requests/create_request/create_request.dart';
import 'package:maids_task/domain/models/todos_models/requests/pagination_request/pagination.dart';
import 'package:maids_task/domain/models/todos_models/requests/update_request/update_request.dart';
import 'package:maids_task/domain/models/todos_models/responses/todo_model.dart';
import 'package:multiple_result/src/result.dart';

import '../../domain/models/auth_models/requests/login/login_request.dart';
import '../../domain/models/auth_models/responses/login_response/login_response.dart';
import '../../domain/repository/repository.dart';
import '../../presentations/resources/strings_manager.dart';
import '../newtwok/app_api.dart';
import '../newtwok/failure_model/failure.dart';
import '../newtwok/network_info.dart';

class RepositoryImplementer extends Repository {
  final AppServiceClient appServiceClient;
  final NetworkInfo networkInfo;

  RepositoryImplementer(
      {required this.appServiceClient, required this.networkInfo});

//------------------Auth---------------------------
  @override
  Future<Result<LoginResponse, FailureModel>> login(
      LoginRequest loginRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.login(loginRequest);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Result<ProfileResponse, FailureModel>> profile() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.profile();
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Result<LoginResponse, FailureModel>> refreshToken(
      RefreshRequest refreshRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.refreshToken(refreshRequest);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetError));
    }
  }

//-------------------------------------
//--------------------Todos------------
  @override
  Future<Result<TodosModel, FailureModel>> todos(Pagination pagination) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.todos(
            skip: pagination.skip, limit: pagination.limit);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Result<TodoModel, FailureModel>> randomTodo() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.randomTodo();
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Result<TodoModel, FailureModel>> singleTodo(int id) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.singleTodo(id: id);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Result<TodosModel, FailureModel>> todosByUserIdEndPoint(
      int userId, Pagination pagination) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.todosByUserIdEndPoint(
            id: userId, skip: pagination.skip, limit: pagination.limit);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Result<TodoModel, FailureModel>> addTodo(CreateRequest request) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.addTodo(request);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Result<TodoModel, FailureModel>> deleteTodo(int id) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await appServiceClient.deleteTodo(id: id);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetError));
    }
  }

  @override
  Future<Result<TodoModel, FailureModel>> updateTodo(
      int id, UpdateRequest request) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await appServiceClient.updateTodo(id: id, request: request);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: AppStrings().noInternetError));
    }
  }
//-------------------------------------
}
