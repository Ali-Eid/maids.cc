// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateRequest _$UpdateRequestFromJson(Map<String, dynamic> json) {
  return _UpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateRequest {
  String get todo => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateRequestCopyWith<UpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateRequestCopyWith<$Res> {
  factory $UpdateRequestCopyWith(
          UpdateRequest value, $Res Function(UpdateRequest) then) =
      _$UpdateRequestCopyWithImpl<$Res, UpdateRequest>;
  @useResult
  $Res call({String todo, bool completed});
}

/// @nodoc
class _$UpdateRequestCopyWithImpl<$Res, $Val extends UpdateRequest>
    implements $UpdateRequestCopyWith<$Res> {
  _$UpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
    Object? completed = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateRequestImplCopyWith<$Res>
    implements $UpdateRequestCopyWith<$Res> {
  factory _$$UpdateRequestImplCopyWith(
          _$UpdateRequestImpl value, $Res Function(_$UpdateRequestImpl) then) =
      __$$UpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String todo, bool completed});
}

/// @nodoc
class __$$UpdateRequestImplCopyWithImpl<$Res>
    extends _$UpdateRequestCopyWithImpl<$Res, _$UpdateRequestImpl>
    implements _$$UpdateRequestImplCopyWith<$Res> {
  __$$UpdateRequestImplCopyWithImpl(
      _$UpdateRequestImpl _value, $Res Function(_$UpdateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
    Object? completed = null,
  }) {
    return _then(_$UpdateRequestImpl(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateRequestImpl implements _UpdateRequest {
  _$UpdateRequestImpl({required this.todo, required this.completed});

  factory _$UpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateRequestImplFromJson(json);

  @override
  final String todo;
  @override
  final bool completed;

  @override
  String toString() {
    return 'UpdateRequest(todo: $todo, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRequestImpl &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, todo, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRequestImplCopyWith<_$UpdateRequestImpl> get copyWith =>
      __$$UpdateRequestImplCopyWithImpl<_$UpdateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateRequest implements UpdateRequest {
  factory _UpdateRequest(
      {required final String todo,
      required final bool completed}) = _$UpdateRequestImpl;

  factory _UpdateRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateRequestImpl.fromJson;

  @override
  String get todo;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$UpdateRequestImplCopyWith<_$UpdateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
