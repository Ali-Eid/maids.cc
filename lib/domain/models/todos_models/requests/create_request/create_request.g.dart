// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateRequestImpl _$$CreateRequestImplFromJson(Map<String, dynamic> json) =>
    _$CreateRequestImpl(
      todo: json['todo'] as String,
      completed: json['completed'] as bool,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$$CreateRequestImplToJson(_$CreateRequestImpl instance) =>
    <String, dynamic>{
      'todo': instance.todo,
      'completed': instance.completed,
      'userId': instance.userId,
    };
