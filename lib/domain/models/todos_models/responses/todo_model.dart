import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
abstract class TodosModel with _$TodosModel {
  const factory TodosModel({
    @Default([]) List<TodoModel> todos,
    @Default(0) int total,
    @Default(0) int skip,
    @Default(0) int limit,
  }) = _TodosModel;
  factory TodosModel.fromJson(Map<String, dynamic> json) =>
      _$TodosModelFromJson(json);
}

@freezed
abstract class TodoModel with _$TodoModel {
  const factory TodoModel(
      {@Default(0) int id,
      @Default("") String todo,
      @Default(false) bool completed,
      @Default(false) bool isDeleted,
      String? deletedOn,
      @Default(0) int userId}) = _TodoModel;
  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);
}
