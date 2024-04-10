import 'package:maids_task/domain/models/auth_models/requests/refresh_token/refresh_request.dart';
import 'package:maids_task/domain/models/auth_models/responses/profile_response/profile_response.dart';
import 'package:maids_task/domain/models/todos_models/requests/create_request/create_request.dart';
import 'package:maids_task/domain/models/todos_models/requests/pagination_request/pagination.dart';
import 'package:maids_task/domain/models/todos_models/requests/update_request/update_request.dart';
import 'package:maids_task/domain/models/todos_models/responses/todo_model.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../data/newtwok/failure_model/failure.dart';
import '../models/auth_models/requests/login/login_request.dart';
import '../models/auth_models/responses/login_response/login_response.dart';

abstract class Repository {
  //------------------Auth---------------------
  Future<Result<LoginResponse, FailureModel>> login(LoginRequest loginRequest);
  Future<Result<ProfileResponse, FailureModel>> profile();
  Future<Result<LoginResponse, FailureModel>> refreshToken(
      RefreshRequest refreshRequest);
  //-------------------------------------------

  //------------------Todos---------------------
  Future<Result<TodosModel, FailureModel>> todos(Pagination pagination);
  Future<Result<TodoModel, FailureModel>> singleTodo(int id);
  Future<Result<TodoModel, FailureModel>> randomTodo();
  Future<Result<TodosModel, FailureModel>> todosByUserIdEndPoint(
      int userId, Pagination pagination);

  Future<Result<TodoModel, FailureModel>> addTodo(CreateRequest request);
  Future<Result<TodoModel, FailureModel>> updateTodo(
      int id, UpdateRequest request);
  Future<Result<TodoModel, FailureModel>> deleteTodo(int id);

  //-------------------------------------------
}
