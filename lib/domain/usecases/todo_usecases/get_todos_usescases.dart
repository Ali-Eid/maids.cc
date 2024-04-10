import 'package:maids_task/data/newtwok/failure_model/failure.dart';
import 'package:maids_task/domain/models/todos_models/requests/pagination_request/pagination.dart';
import 'package:maids_task/domain/models/todos_models/responses/todo_model.dart';
import 'package:multiple_result/src/result.dart';

import '../../repository/repository.dart';
import '../base_usecases/base_usecase.dart';

class GetTodosUsecase extends BaseUseCase<Pagination, TodosModel> {
  final Repository repository;

  GetTodosUsecase({required this.repository});

  @override
  Future<Result<TodosModel, FailureModel>> execute(Pagination input) async {
    return await repository.todos(input);
  }
}

class GetSingleTodoUsecase extends BaseUseCase<int, TodoModel> {
  final Repository repository;

  GetSingleTodoUsecase({required this.repository});

  @override
  Future<Result<TodoModel, FailureModel>> execute(int input) async {
    return await repository.singleTodo(input);
  }
}

class GetRandomTodoUsecase extends BaseUseCaseEmptyInput<TodoModel> {
  final Repository repository;

  GetRandomTodoUsecase({required this.repository});

  @override
  Future<Result<TodoModel, FailureModel>> execute() async {
    return await repository.randomTodo();
  }
}

class GetTodosByUserIdUsecase
    extends BaseUseCase<({int userId, Pagination pagination}), TodosModel> {
  final Repository repository;

  GetTodosByUserIdUsecase({required this.repository});

  @override
  Future<Result<TodosModel, FailureModel>> execute(
      ({Pagination pagination, int userId}) input) async {
    return await repository.todosByUserIdEndPoint(
        input.userId, input.pagination);
  }
}
