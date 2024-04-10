import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maids_task/app/app_preferences.dart';
import 'package:maids_task/app/constants.dart';
import 'package:maids_task/domain/models/todos_models/requests/create_request/create_request.dart';
import 'package:maids_task/domain/models/todos_models/requests/pagination_request/pagination.dart';
import 'package:maids_task/domain/models/todos_models/requests/update_request/update_request.dart';
import 'package:maids_task/domain/models/todos_models/responses/todo_model.dart';
import 'package:maids_task/domain/usecases/todo_usecases/get_todos_usescases.dart';
import 'package:maids_task/domain/usecases/todo_usecases/todos_usecases.dart';

import '../../../../../app/depndency_injection.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final GetTodosUsecase getTodosUsecase;
  final DeleteTodoUsecase deleteTodoUsecase;
  List<TodoModel> todosPagination = [];
  List<TodoModel> todos = [];

  TodoBloc({
    required this.getTodosUsecase,
    required this.deleteTodoUsecase,
  }) : super(const TodoState.loading()) {
    int total = 0;
    bool hasReach = false;

    on<TodoEvent>((event, emit) async {
      await event.map(
        getTodos: (value) async {
          emit(const TodoState.loading());
          todos = await instance<AppPreferences>().getTodosList();
          if (todos.isEmpty) {
            final failureOrTodos =
                await getTodosUsecase.execute(Pagination(skip: 0, limit: 0));
            await failureOrTodos.when((success) async {
              todos = success.todos;
              await instance<AppPreferences>().saveTodosList(todos);
              todosPagination
                  .addAll(success.todos.skip(0).take(Constant.limit));
              total = success.total;
              emit(TodoState.loaded(
                  isLoading: false,
                  todos: TodosModel(
                    limit: success.limit,
                    skip: success.skip,
                    todos: todosPagination,
                    total: success.total,
                  )));
            }, (error) {
              emit(TodoState.error(message: error.message));
            });
          } else {
            todosPagination.addAll(todos.skip(0).take(Constant.limit));
            emit(TodoState.loaded(
                isLoading: false,
                todos: TodosModel(
                  limit: Constant.limit,
                  skip: 0,
                  todos: todosPagination,
                  total: todos.length,
                )));
          }
        },
        getTodosPagination: hasReach
            ? (value) {}
            : (value) async {
                emit(TodoState.loaded(
                    isLoading: true,
                    todos: TodosModel(
                      todos: todosPagination,
                    )));
                if (todos.length == todosPagination.length) {
                  hasReach = true;
                }
                await Future.delayed(const Duration(seconds: 1));
                todosPagination.addAll(
                    todos.skip(todosPagination.length).take(Constant.limit));
                emit(TodoState.loaded(
                    isLoading: false,
                    todos: TodosModel(
                      limit: Constant.limit,
                      skip: todosPagination.length,
                      todos: todosPagination,
                      total: total,
                    )));
              },
        deleteToodo: (value) async {
          final index =
              todosPagination.indexWhere((item) => item.id == value.todoId);
          final indexTodo = todos.indexWhere((item) => item.id == value.todoId);
          emit(TodoState.loaded(
              isLoading: false,
              isDeleted: true,
              todos: TodosModel(
                limit: Constant.limit,
                skip: todosPagination.length,
                todos: todosPagination,
                total: total,
              )));
          if (value.todoId > 150) {
            todos[indexTodo] = todos[indexTodo].copyWith(
                isDeleted: true, deletedOn: DateTime.now().toUtc().toString());
            todos = todos.where((element) => !element.isDeleted).toList();
            await instance<AppPreferences>().saveTodosList(todos);
            todosPagination[index] = todosPagination[indexTodo].copyWith(
                isDeleted: true, deletedOn: DateTime.now().toUtc().toString());
            todosPagination =
                todosPagination.where((element) => !element.isDeleted).toList();
            emit(TodoState.loaded(
                isLoading: false,
                isDeleted: false,
                todos: TodosModel(
                  limit: Constant.limit,
                  skip: todosPagination.length,
                  todos: todosPagination,
                  total: total,
                )));
          } else {
            final failureOrDelete =
                await deleteTodoUsecase.execute(value.todoId);
            await failureOrDelete.when((todoDeleted) async {
              todos[indexTodo] = todoDeleted;
              todos = todos.where((element) => !element.isDeleted).toList();
              await instance<AppPreferences>().saveTodosList(todos);
              todosPagination[index] = todoDeleted;
              todosPagination = todosPagination
                  .where((element) => !element.isDeleted)
                  .toList();
              emit(TodoState.loaded(
                  isLoading: false,
                  isDeleted: false,
                  todos: TodosModel(
                    limit: Constant.limit,
                    skip: todosPagination.length,
                    todos: todosPagination,
                    total: total,
                  )));
            }, (error) {
              todosPagination[index] = todosPagination[index]
                  .copyWith(isDeleted: false, deletedOn: null);
              emit(TodoState.error(message: error.message));
            });
          }
        },
        updateTodo: (value) async {
          final index =
              todosPagination.indexWhere((item) => item.id == value.todoId);
          final indexTodo = todos.indexWhere((item) => item.id == value.todoId);
          emit(TodoState.loaded(
              isLoading: false,
              isUpdated: true,
              todos: TodosModel(
                limit: Constant.limit,
                skip: todosPagination.length,
                todos: todosPagination,
                total: total,
              )));
          todos[indexTodo] = value.model;
          await instance<AppPreferences>().saveTodosList(todos);
          todosPagination[index] = value.model;

          emit(TodoState.loaded(
              isLoading: false,
              isDeleted: false,
              todos: TodosModel(
                limit: Constant.limit,
                skip: todosPagination.length,
                todos: todosPagination,
                total: total,
              )));
        },
        addTodo: (value) async {
          List<TodoModel> todosNew = [];
          todosNew.addAll(todos);
          emit(TodoState.loaded(
              isLoading: false,
              isAdded: true,
              todos: TodosModel(
                limit: Constant.limit,
                skip: todosPagination.length,
                todos: todosPagination,
                total: total,
              )));
          todosPagination.insert(0, value.model);
          todosNew.insert(0, value.model);
          await instance<AppPreferences>().saveTodosList(todosNew);
          emit(TodoState.loaded(
              isLoading: false,
              isAdded: false,
              todos: TodosModel(
                limit: Constant.limit,
                skip: todosPagination.length,
                todos: todosPagination,
                total: total,
              )));
        },
      );
    }, transformer: droppable());
  }
}
