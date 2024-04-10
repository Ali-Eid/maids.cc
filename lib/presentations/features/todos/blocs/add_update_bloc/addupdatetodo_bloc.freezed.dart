// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addupdatetodo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddupdatetodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int todoId, UpdateRequest updateRequest)
        updateTodo,
    required TResult Function(CreateRequest createRequest) addTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int todoId, UpdateRequest updateRequest)? updateTodo,
    TResult? Function(CreateRequest createRequest)? addTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int todoId, UpdateRequest updateRequest)? updateTodo,
    TResult Function(CreateRequest createRequest)? addTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_AddTodo value) addTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_AddTodo value)? addTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_AddTodo value)? addTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddupdatetodoEventCopyWith<$Res> {
  factory $AddupdatetodoEventCopyWith(
          AddupdatetodoEvent value, $Res Function(AddupdatetodoEvent) then) =
      _$AddupdatetodoEventCopyWithImpl<$Res, AddupdatetodoEvent>;
}

/// @nodoc
class _$AddupdatetodoEventCopyWithImpl<$Res, $Val extends AddupdatetodoEvent>
    implements $AddupdatetodoEventCopyWith<$Res> {
  _$AddupdatetodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateTodoImplCopyWith<$Res> {
  factory _$$UpdateTodoImplCopyWith(
          _$UpdateTodoImpl value, $Res Function(_$UpdateTodoImpl) then) =
      __$$UpdateTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int todoId, UpdateRequest updateRequest});

  $UpdateRequestCopyWith<$Res> get updateRequest;
}

/// @nodoc
class __$$UpdateTodoImplCopyWithImpl<$Res>
    extends _$AddupdatetodoEventCopyWithImpl<$Res, _$UpdateTodoImpl>
    implements _$$UpdateTodoImplCopyWith<$Res> {
  __$$UpdateTodoImplCopyWithImpl(
      _$UpdateTodoImpl _value, $Res Function(_$UpdateTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
    Object? updateRequest = null,
  }) {
    return _then(_$UpdateTodoImpl(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as int,
      updateRequest: null == updateRequest
          ? _value.updateRequest
          : updateRequest // ignore: cast_nullable_to_non_nullable
              as UpdateRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateRequestCopyWith<$Res> get updateRequest {
    return $UpdateRequestCopyWith<$Res>(_value.updateRequest, (value) {
      return _then(_value.copyWith(updateRequest: value));
    });
  }
}

/// @nodoc

class _$UpdateTodoImpl implements _UpdateTodo {
  const _$UpdateTodoImpl({required this.todoId, required this.updateRequest});

  @override
  final int todoId;
  @override
  final UpdateRequest updateRequest;

  @override
  String toString() {
    return 'AddupdatetodoEvent.updateTodo(todoId: $todoId, updateRequest: $updateRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTodoImpl &&
            (identical(other.todoId, todoId) || other.todoId == todoId) &&
            (identical(other.updateRequest, updateRequest) ||
                other.updateRequest == updateRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todoId, updateRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTodoImplCopyWith<_$UpdateTodoImpl> get copyWith =>
      __$$UpdateTodoImplCopyWithImpl<_$UpdateTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int todoId, UpdateRequest updateRequest)
        updateTodo,
    required TResult Function(CreateRequest createRequest) addTodo,
  }) {
    return updateTodo(todoId, updateRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int todoId, UpdateRequest updateRequest)? updateTodo,
    TResult? Function(CreateRequest createRequest)? addTodo,
  }) {
    return updateTodo?.call(todoId, updateRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int todoId, UpdateRequest updateRequest)? updateTodo,
    TResult Function(CreateRequest createRequest)? addTodo,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(todoId, updateRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_AddTodo value) addTodo,
  }) {
    return updateTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_AddTodo value)? addTodo,
  }) {
    return updateTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_AddTodo value)? addTodo,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(this);
    }
    return orElse();
  }
}

abstract class _UpdateTodo implements AddupdatetodoEvent {
  const factory _UpdateTodo(
      {required final int todoId,
      required final UpdateRequest updateRequest}) = _$UpdateTodoImpl;

  int get todoId;
  UpdateRequest get updateRequest;
  @JsonKey(ignore: true)
  _$$UpdateTodoImplCopyWith<_$UpdateTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTodoImplCopyWith<$Res> {
  factory _$$AddTodoImplCopyWith(
          _$AddTodoImpl value, $Res Function(_$AddTodoImpl) then) =
      __$$AddTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateRequest createRequest});

  $CreateRequestCopyWith<$Res> get createRequest;
}

/// @nodoc
class __$$AddTodoImplCopyWithImpl<$Res>
    extends _$AddupdatetodoEventCopyWithImpl<$Res, _$AddTodoImpl>
    implements _$$AddTodoImplCopyWith<$Res> {
  __$$AddTodoImplCopyWithImpl(
      _$AddTodoImpl _value, $Res Function(_$AddTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createRequest = null,
  }) {
    return _then(_$AddTodoImpl(
      createRequest: null == createRequest
          ? _value.createRequest
          : createRequest // ignore: cast_nullable_to_non_nullable
              as CreateRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateRequestCopyWith<$Res> get createRequest {
    return $CreateRequestCopyWith<$Res>(_value.createRequest, (value) {
      return _then(_value.copyWith(createRequest: value));
    });
  }
}

/// @nodoc

class _$AddTodoImpl implements _AddTodo {
  const _$AddTodoImpl({required this.createRequest});

  @override
  final CreateRequest createRequest;

  @override
  String toString() {
    return 'AddupdatetodoEvent.addTodo(createRequest: $createRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTodoImpl &&
            (identical(other.createRequest, createRequest) ||
                other.createRequest == createRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTodoImplCopyWith<_$AddTodoImpl> get copyWith =>
      __$$AddTodoImplCopyWithImpl<_$AddTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int todoId, UpdateRequest updateRequest)
        updateTodo,
    required TResult Function(CreateRequest createRequest) addTodo,
  }) {
    return addTodo(createRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int todoId, UpdateRequest updateRequest)? updateTodo,
    TResult? Function(CreateRequest createRequest)? addTodo,
  }) {
    return addTodo?.call(createRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int todoId, UpdateRequest updateRequest)? updateTodo,
    TResult Function(CreateRequest createRequest)? addTodo,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(createRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_AddTodo value) addTodo,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_AddTodo value)? addTodo,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_AddTodo value)? addTodo,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(this);
    }
    return orElse();
  }
}

abstract class _AddTodo implements AddupdatetodoEvent {
  const factory _AddTodo({required final CreateRequest createRequest}) =
      _$AddTodoImpl;

  CreateRequest get createRequest;
  @JsonKey(ignore: true)
  _$$AddTodoImplCopyWith<_$AddTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddupdatetodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TodoModel model) successAdded,
    required TResult Function(TodoModel model) successUpdated,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TodoModel model)? successAdded,
    TResult? Function(TodoModel model)? successUpdated,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TodoModel model)? successAdded,
    TResult Function(TodoModel model)? successUpdated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessUpdated value) successUpdated,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessUpdated value)? successUpdated,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessUpdated value)? successUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddupdatetodoStateCopyWith<$Res> {
  factory $AddupdatetodoStateCopyWith(
          AddupdatetodoState value, $Res Function(AddupdatetodoState) then) =
      _$AddupdatetodoStateCopyWithImpl<$Res, AddupdatetodoState>;
}

/// @nodoc
class _$AddupdatetodoStateCopyWithImpl<$Res, $Val extends AddupdatetodoState>
    implements $AddupdatetodoStateCopyWith<$Res> {
  _$AddupdatetodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AddupdatetodoStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AddupdatetodoState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TodoModel model) successAdded,
    required TResult Function(TodoModel model) successUpdated,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TodoModel model)? successAdded,
    TResult? Function(TodoModel model)? successUpdated,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TodoModel model)? successAdded,
    TResult Function(TodoModel model)? successUpdated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessUpdated value) successUpdated,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessUpdated value)? successUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessUpdated value)? successUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddupdatetodoState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AddupdatetodoStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AddupdatetodoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TodoModel model) successAdded,
    required TResult Function(TodoModel model) successUpdated,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TodoModel model)? successAdded,
    TResult? Function(TodoModel model)? successUpdated,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TodoModel model)? successAdded,
    TResult Function(TodoModel model)? successUpdated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessUpdated value) successUpdated,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessUpdated value)? successUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessUpdated value)? successUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AddupdatetodoState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessAddedImplCopyWith<$Res> {
  factory _$$SuccessAddedImplCopyWith(
          _$SuccessAddedImpl value, $Res Function(_$SuccessAddedImpl) then) =
      __$$SuccessAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoModel model});

  $TodoModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$SuccessAddedImplCopyWithImpl<$Res>
    extends _$AddupdatetodoStateCopyWithImpl<$Res, _$SuccessAddedImpl>
    implements _$$SuccessAddedImplCopyWith<$Res> {
  __$$SuccessAddedImplCopyWithImpl(
      _$SuccessAddedImpl _value, $Res Function(_$SuccessAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$SuccessAddedImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TodoModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoModelCopyWith<$Res> get model {
    return $TodoModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$SuccessAddedImpl implements _SuccessAdded {
  const _$SuccessAddedImpl({required this.model});

  @override
  final TodoModel model;

  @override
  String toString() {
    return 'AddupdatetodoState.successAdded(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessAddedImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessAddedImplCopyWith<_$SuccessAddedImpl> get copyWith =>
      __$$SuccessAddedImplCopyWithImpl<_$SuccessAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TodoModel model) successAdded,
    required TResult Function(TodoModel model) successUpdated,
    required TResult Function(String message) error,
  }) {
    return successAdded(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TodoModel model)? successAdded,
    TResult? Function(TodoModel model)? successUpdated,
    TResult? Function(String message)? error,
  }) {
    return successAdded?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TodoModel model)? successAdded,
    TResult Function(TodoModel model)? successUpdated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successAdded != null) {
      return successAdded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessUpdated value) successUpdated,
    required TResult Function(_Error value) error,
  }) {
    return successAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessUpdated value)? successUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return successAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessUpdated value)? successUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successAdded != null) {
      return successAdded(this);
    }
    return orElse();
  }
}

abstract class _SuccessAdded implements AddupdatetodoState {
  const factory _SuccessAdded({required final TodoModel model}) =
      _$SuccessAddedImpl;

  TodoModel get model;
  @JsonKey(ignore: true)
  _$$SuccessAddedImplCopyWith<_$SuccessAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessUpdatedImplCopyWith<$Res> {
  factory _$$SuccessUpdatedImplCopyWith(_$SuccessUpdatedImpl value,
          $Res Function(_$SuccessUpdatedImpl) then) =
      __$$SuccessUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoModel model});

  $TodoModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$SuccessUpdatedImplCopyWithImpl<$Res>
    extends _$AddupdatetodoStateCopyWithImpl<$Res, _$SuccessUpdatedImpl>
    implements _$$SuccessUpdatedImplCopyWith<$Res> {
  __$$SuccessUpdatedImplCopyWithImpl(
      _$SuccessUpdatedImpl _value, $Res Function(_$SuccessUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$SuccessUpdatedImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TodoModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoModelCopyWith<$Res> get model {
    return $TodoModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$SuccessUpdatedImpl implements _SuccessUpdated {
  const _$SuccessUpdatedImpl({required this.model});

  @override
  final TodoModel model;

  @override
  String toString() {
    return 'AddupdatetodoState.successUpdated(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessUpdatedImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessUpdatedImplCopyWith<_$SuccessUpdatedImpl> get copyWith =>
      __$$SuccessUpdatedImplCopyWithImpl<_$SuccessUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TodoModel model) successAdded,
    required TResult Function(TodoModel model) successUpdated,
    required TResult Function(String message) error,
  }) {
    return successUpdated(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TodoModel model)? successAdded,
    TResult? Function(TodoModel model)? successUpdated,
    TResult? Function(String message)? error,
  }) {
    return successUpdated?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TodoModel model)? successAdded,
    TResult Function(TodoModel model)? successUpdated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successUpdated != null) {
      return successUpdated(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessUpdated value) successUpdated,
    required TResult Function(_Error value) error,
  }) {
    return successUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessUpdated value)? successUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return successUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessUpdated value)? successUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successUpdated != null) {
      return successUpdated(this);
    }
    return orElse();
  }
}

abstract class _SuccessUpdated implements AddupdatetodoState {
  const factory _SuccessUpdated({required final TodoModel model}) =
      _$SuccessUpdatedImpl;

  TodoModel get model;
  @JsonKey(ignore: true)
  _$$SuccessUpdatedImplCopyWith<_$SuccessUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AddupdatetodoStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AddupdatetodoState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TodoModel model) successAdded,
    required TResult Function(TodoModel model) successUpdated,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TodoModel model)? successAdded,
    TResult? Function(TodoModel model)? successUpdated,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TodoModel model)? successAdded,
    TResult Function(TodoModel model)? successUpdated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAdded value) successAdded,
    required TResult Function(_SuccessUpdated value) successUpdated,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAdded value)? successAdded,
    TResult? Function(_SuccessUpdated value)? successUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAdded value)? successAdded,
    TResult Function(_SuccessUpdated value)? successUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AddupdatetodoState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
