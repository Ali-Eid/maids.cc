// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateRequest _$CreateRequestFromJson(Map<String, dynamic> json) {
  return _CreateRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateRequest {
  String get todo => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateRequestCopyWith<CreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRequestCopyWith<$Res> {
  factory $CreateRequestCopyWith(
          CreateRequest value, $Res Function(CreateRequest) then) =
      _$CreateRequestCopyWithImpl<$Res, CreateRequest>;
  @useResult
  $Res call({String todo, bool completed, int userId});
}

/// @nodoc
class _$CreateRequestCopyWithImpl<$Res, $Val extends CreateRequest>
    implements $CreateRequestCopyWith<$Res> {
  _$CreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
    Object? completed = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateRequestImplCopyWith<$Res>
    implements $CreateRequestCopyWith<$Res> {
  factory _$$CreateRequestImplCopyWith(
          _$CreateRequestImpl value, $Res Function(_$CreateRequestImpl) then) =
      __$$CreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String todo, bool completed, int userId});
}

/// @nodoc
class __$$CreateRequestImplCopyWithImpl<$Res>
    extends _$CreateRequestCopyWithImpl<$Res, _$CreateRequestImpl>
    implements _$$CreateRequestImplCopyWith<$Res> {
  __$$CreateRequestImplCopyWithImpl(
      _$CreateRequestImpl _value, $Res Function(_$CreateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
    Object? completed = null,
    Object? userId = null,
  }) {
    return _then(_$CreateRequestImpl(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateRequestImpl implements _CreateRequest {
  _$CreateRequestImpl(
      {required this.todo, required this.completed, required this.userId});

  factory _$CreateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateRequestImplFromJson(json);

  @override
  final String todo;
  @override
  final bool completed;
  @override
  final int userId;

  @override
  String toString() {
    return 'CreateRequest(todo: $todo, completed: $completed, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRequestImpl &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, todo, completed, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRequestImplCopyWith<_$CreateRequestImpl> get copyWith =>
      __$$CreateRequestImplCopyWithImpl<_$CreateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateRequest implements CreateRequest {
  factory _CreateRequest(
      {required final String todo,
      required final bool completed,
      required final int userId}) = _$CreateRequestImpl;

  factory _CreateRequest.fromJson(Map<String, dynamic> json) =
      _$CreateRequestImpl.fromJson;

  @override
  String get todo;
  @override
  bool get completed;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$CreateRequestImplCopyWith<_$CreateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
