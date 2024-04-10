part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.getTodos() = _GetTodos;
  const factory TodoEvent.getTodosPagination() = _GetTodosPagination;
  const factory TodoEvent.deleteToodo({required int todoId}) = _DeleteTodo;
  const factory TodoEvent.updateTodo(
      {required int todoId, required TodoModel model}) = _UpdateTodo;
  const factory TodoEvent.addTodo({required TodoModel model}) = _AddTodo;
}
