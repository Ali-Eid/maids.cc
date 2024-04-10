part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.loading() = _Loading;
  const factory TodoState.loaded({
    required TodosModel todos,
    required bool isLoading,
    @Default(false) bool? isDeleted,
    @Default(false) bool? isUpdated,
    @Default(false) bool? isAdded,
  }) = _Loaded;
  const factory TodoState.error({required String message}) = _Error;
}
