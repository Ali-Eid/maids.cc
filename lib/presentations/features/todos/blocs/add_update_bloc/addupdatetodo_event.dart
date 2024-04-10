part of 'addupdatetodo_bloc.dart';

@freezed
class AddupdatetodoEvent with _$AddupdatetodoEvent {
  const factory AddupdatetodoEvent.updateTodo(
      {required int todoId,
      required UpdateRequest updateRequest}) = _UpdateTodo;
  const factory AddupdatetodoEvent.addTodo(
      {required CreateRequest createRequest}) = _AddTodo;
}
