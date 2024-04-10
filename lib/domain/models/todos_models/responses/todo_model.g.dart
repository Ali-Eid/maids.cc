// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodosModelImpl _$$TodosModelImplFromJson(Map<String, dynamic> json) =>
    _$TodosModelImpl(
      todos: (json['todos'] as List<dynamic>?)
              ?.map((e) => TodoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      total: json['total'] as int? ?? 0,
      skip: json['skip'] as int? ?? 0,
      limit: json['limit'] as int? ?? 0,
    );

Map<String, dynamic> _$$TodosModelImplToJson(_$TodosModelImpl instance) =>
    <String, dynamic>{
      'todos': instance.todos,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };

_$TodoModelImpl _$$TodoModelImplFromJson(Map<String, dynamic> json) =>
    _$TodoModelImpl(
      id: json['id'] as int? ?? 0,
      todo: json['todo'] as String? ?? "",
      completed: json['completed'] as bool? ?? false,
      isDeleted: json['isDeleted'] as bool? ?? false,
      deletedOn: json['deletedOn'] as String?,
      userId: json['userId'] as int? ?? 0,
    );

Map<String, dynamic> _$$TodoModelImplToJson(_$TodoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'todo': instance.todo,
      'completed': instance.completed,
      'isDeleted': instance.isDeleted,
      'deletedOn': instance.deletedOn,
      'userId': instance.userId,
    };
