// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodos,
    required TResult Function() getTodosPagination,
    required TResult Function(int todoId) deleteToodo,
    required TResult Function(int todoId, TodoModel model) updateTodo,
    required TResult Function(TodoModel model) addTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodos,
    TResult? Function()? getTodosPagination,
    TResult? Function(int todoId)? deleteToodo,
    TResult? Function(int todoId, TodoModel model)? updateTodo,
    TResult? Function(TodoModel model)? addTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodos,
    TResult Function()? getTodosPagination,
    TResult Function(int todoId)? deleteToodo,
    TResult Function(int todoId, TodoModel model)? updateTodo,
    TResult Function(TodoModel model)? addTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodos value) getTodos,
    required TResult Function(_GetTodosPagination value) getTodosPagination,
    required TResult Function(_DeleteTodo value) deleteToodo,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_AddTodo value) addTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTodos value)? getTodos,
    TResult? Function(_GetTodosPagination value)? getTodosPagination,
    TResult? Function(_DeleteTodo value)? deleteToodo,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_AddTodo value)? addTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodos value)? getTodos,
    TResult Function(_GetTodosPagination value)? getTodosPagination,
    TResult Function(_DeleteTodo value)? deleteToodo,
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_AddTodo value)? addTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTodosImplCopyWith<$Res> {
  factory _$$GetTodosImplCopyWith(
          _$GetTodosImpl value, $Res Function(_$GetTodosImpl) then) =
      __$$GetTodosImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTodosImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$GetTodosImpl>
    implements _$$GetTodosImplCopyWith<$Res> {
  __$$GetTodosImplCopyWithImpl(
      _$GetTodosImpl _value, $Res Function(_$GetTodosImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTodosImpl implements _GetTodos {
  const _$GetTodosImpl();

  @override
  String toString() {
    return 'TodoEvent.getTodos()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTodosImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodos,
    required TResult Function() getTodosPagination,
    required TResult Function(int todoId) deleteToodo,
    required TResult Function(int todoId, TodoModel model) updateTodo,
    required TResult Function(TodoModel model) addTodo,
  }) {
    return getTodos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodos,
    TResult? Function()? getTodosPagination,
    TResult? Function(int todoId)? deleteToodo,
    TResult? Function(int todoId, TodoModel model)? updateTodo,
    TResult? Function(TodoModel model)? addTodo,
  }) {
    return getTodos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodos,
    TResult Function()? getTodosPagination,
    TResult Function(int todoId)? deleteToodo,
    TResult Function(int todoId, TodoModel model)? updateTodo,
    TResult Function(TodoModel model)? addTodo,
    required TResult orElse(),
  }) {
    if (getTodos != null) {
      return getTodos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodos value) getTodos,
    required TResult Function(_GetTodosPagination value) getTodosPagination,
    required TResult Function(_DeleteTodo value) deleteToodo,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_AddTodo value) addTodo,
  }) {
    return getTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTodos value)? getTodos,
    TResult? Function(_GetTodosPagination value)? getTodosPagination,
    TResult? Function(_DeleteTodo value)? deleteToodo,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_AddTodo value)? addTodo,
  }) {
    return getTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodos value)? getTodos,
    TResult Function(_GetTodosPagination value)? getTodosPagination,
    TResult Function(_DeleteTodo value)? deleteToodo,
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_AddTodo value)? addTodo,
    required TResult orElse(),
  }) {
    if (getTodos != null) {
      return getTodos(this);
    }
    return orElse();
  }
}

abstract class _GetTodos implements TodoEvent {
  const factory _GetTodos() = _$GetTodosImpl;
}

/// @nodoc
abstract class _$$GetTodosPaginationImplCopyWith<$Res> {
  factory _$$GetTodosPaginationImplCopyWith(_$GetTodosPaginationImpl value,
          $Res Function(_$GetTodosPaginationImpl) then) =
      __$$GetTodosPaginationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTodosPaginationImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$GetTodosPaginationImpl>
    implements _$$GetTodosPaginationImplCopyWith<$Res> {
  __$$GetTodosPaginationImplCopyWithImpl(_$GetTodosPaginationImpl _value,
      $Res Function(_$GetTodosPaginationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTodosPaginationImpl implements _GetTodosPagination {
  const _$GetTodosPaginationImpl();

  @override
  String toString() {
    return 'TodoEvent.getTodosPagination()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTodosPaginationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodos,
    required TResult Function() getTodosPagination,
    required TResult Function(int todoId) deleteToodo,
    required TResult Function(int todoId, TodoModel model) updateTodo,
    required TResult Function(TodoModel model) addTodo,
  }) {
    return getTodosPagination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodos,
    TResult? Function()? getTodosPagination,
    TResult? Function(int todoId)? deleteToodo,
    TResult? Function(int todoId, TodoModel model)? updateTodo,
    TResult? Function(TodoModel model)? addTodo,
  }) {
    return getTodosPagination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodos,
    TResult Function()? getTodosPagination,
    TResult Function(int todoId)? deleteToodo,
    TResult Function(int todoId, TodoModel model)? updateTodo,
    TResult Function(TodoModel model)? addTodo,
    required TResult orElse(),
  }) {
    if (getTodosPagination != null) {
      return getTodosPagination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodos value) getTodos,
    required TResult Function(_GetTodosPagination value) getTodosPagination,
    required TResult Function(_DeleteTodo value) deleteToodo,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_AddTodo value) addTodo,
  }) {
    return getTodosPagination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTodos value)? getTodos,
    TResult? Function(_GetTodosPagination value)? getTodosPagination,
    TResult? Function(_DeleteTodo value)? deleteToodo,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_AddTodo value)? addTodo,
  }) {
    return getTodosPagination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodos value)? getTodos,
    TResult Function(_GetTodosPagination value)? getTodosPagination,
    TResult Function(_DeleteTodo value)? deleteToodo,
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_AddTodo value)? addTodo,
    required TResult orElse(),
  }) {
    if (getTodosPagination != null) {
      return getTodosPagination(this);
    }
    return orElse();
  }
}

abstract class _GetTodosPagination implements TodoEvent {
  const factory _GetTodosPagination() = _$GetTodosPaginationImpl;
}

/// @nodoc
abstract class _$$DeleteTodoImplCopyWith<$Res> {
  factory _$$DeleteTodoImplCopyWith(
          _$DeleteTodoImpl value, $Res Function(_$DeleteTodoImpl) then) =
      __$$DeleteTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int todoId});
}

/// @nodoc
class __$$DeleteTodoImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$DeleteTodoImpl>
    implements _$$DeleteTodoImplCopyWith<$Res> {
  __$$DeleteTodoImplCopyWithImpl(
      _$DeleteTodoImpl _value, $Res Function(_$DeleteTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
  }) {
    return _then(_$DeleteTodoImpl(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteTodoImpl implements _DeleteTodo {
  const _$DeleteTodoImpl({required this.todoId});

  @override
  final int todoId;

  @override
  String toString() {
    return 'TodoEvent.deleteToodo(todoId: $todoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTodoImpl &&
            (identical(other.todoId, todoId) || other.todoId == todoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTodoImplCopyWith<_$DeleteTodoImpl> get copyWith =>
      __$$DeleteTodoImplCopyWithImpl<_$DeleteTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodos,
    required TResult Function() getTodosPagination,
    required TResult Function(int todoId) deleteToodo,
    required TResult Function(int todoId, TodoModel model) updateTodo,
    required TResult Function(TodoModel model) addTodo,
  }) {
    return deleteToodo(todoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodos,
    TResult? Function()? getTodosPagination,
    TResult? Function(int todoId)? deleteToodo,
    TResult? Function(int todoId, TodoModel model)? updateTodo,
    TResult? Function(TodoModel model)? addTodo,
  }) {
    return deleteToodo?.call(todoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodos,
    TResult Function()? getTodosPagination,
    TResult Function(int todoId)? deleteToodo,
    TResult Function(int todoId, TodoModel model)? updateTodo,
    TResult Function(TodoModel model)? addTodo,
    required TResult orElse(),
  }) {
    if (deleteToodo != null) {
      return deleteToodo(todoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodos value) getTodos,
    required TResult Function(_GetTodosPagination value) getTodosPagination,
    required TResult Function(_DeleteTodo value) deleteToodo,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_AddTodo value) addTodo,
  }) {
    return deleteToodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTodos value)? getTodos,
    TResult? Function(_GetTodosPagination value)? getTodosPagination,
    TResult? Function(_DeleteTodo value)? deleteToodo,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_AddTodo value)? addTodo,
  }) {
    return deleteToodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodos value)? getTodos,
    TResult Function(_GetTodosPagination value)? getTodosPagination,
    TResult Function(_DeleteTodo value)? deleteToodo,
    TResult Function(_UpdateTodo value)? updateTodo,
    TResult Function(_AddTodo value)? addTodo,
    required TResult orElse(),
  }) {
    if (deleteToodo != null) {
      return deleteToodo(this);
    }
    return orElse();
  }
}

abstract class _DeleteTodo implements TodoEvent {
  const factory _DeleteTodo({required final int todoId}) = _$DeleteTodoImpl;

  int get todoId;
  @JsonKey(ignore: true)
  _$$DeleteTodoImplCopyWith<_$DeleteTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTodoImplCopyWith<$Res> {
  factory _$$UpdateTodoImplCopyWith(
          _$UpdateTodoImpl value, $Res Function(_$UpdateTodoImpl) then) =
      __$$UpdateTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int todoId, TodoModel model});

  $TodoModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$UpdateTodoImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$UpdateTodoImpl>
    implements _$$UpdateTodoImplCopyWith<$Res> {
  __$$UpdateTodoImplCopyWithImpl(
      _$UpdateTodoImpl _value, $Res Function(_$UpdateTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
    Object? model = null,
  }) {
    return _then(_$UpdateTodoImpl(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$UpdateTodoImpl implements _UpdateTodo {
  const _$UpdateTodoImpl({required this.todoId, required this.model});

  @override
  final int todoId;
  @override
  final TodoModel model;

  @override
  String toString() {
    return 'TodoEvent.updateTodo(todoId: $todoId, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTodoImpl &&
            (identical(other.todoId, todoId) || other.todoId == todoId) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todoId, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTodoImplCopyWith<_$UpdateTodoImpl> get copyWith =>
      __$$UpdateTodoImplCopyWithImpl<_$UpdateTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodos,
    required TResult Function() getTodosPagination,
    required TResult Function(int todoId) deleteToodo,
    required TResult Function(int todoId, TodoModel model) updateTodo,
    required TResult Function(TodoModel model) addTodo,
  }) {
    return updateTodo(todoId, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodos,
    TResult? Function()? getTodosPagination,
    TResult? Function(int todoId)? deleteToodo,
    TResult? Function(int todoId, TodoModel model)? updateTodo,
    TResult? Function(TodoModel model)? addTodo,
  }) {
    return updateTodo?.call(todoId, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodos,
    TResult Function()? getTodosPagination,
    TResult Function(int todoId)? deleteToodo,
    TResult Function(int todoId, TodoModel model)? updateTodo,
    TResult Function(TodoModel model)? addTodo,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(todoId, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodos value) getTodos,
    required TResult Function(_GetTodosPagination value) getTodosPagination,
    required TResult Function(_DeleteTodo value) deleteToodo,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_AddTodo value) addTodo,
  }) {
    return updateTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTodos value)? getTodos,
    TResult? Function(_GetTodosPagination value)? getTodosPagination,
    TResult? Function(_DeleteTodo value)? deleteToodo,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_AddTodo value)? addTodo,
  }) {
    return updateTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodos value)? getTodos,
    TResult Function(_GetTodosPagination value)? getTodosPagination,
    TResult Function(_DeleteTodo value)? deleteToodo,
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

abstract class _UpdateTodo implements TodoEvent {
  const factory _UpdateTodo(
      {required final int todoId,
      required final TodoModel model}) = _$UpdateTodoImpl;

  int get todoId;
  TodoModel get model;
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
  $Res call({TodoModel model});

  $TodoModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$AddTodoImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$AddTodoImpl>
    implements _$$AddTodoImplCopyWith<$Res> {
  __$$AddTodoImplCopyWithImpl(
      _$AddTodoImpl _value, $Res Function(_$AddTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$AddTodoImpl(
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

class _$AddTodoImpl implements _AddTodo {
  const _$AddTodoImpl({required this.model});

  @override
  final TodoModel model;

  @override
  String toString() {
    return 'TodoEvent.addTodo(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTodoImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTodoImplCopyWith<_$AddTodoImpl> get copyWith =>
      __$$AddTodoImplCopyWithImpl<_$AddTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodos,
    required TResult Function() getTodosPagination,
    required TResult Function(int todoId) deleteToodo,
    required TResult Function(int todoId, TodoModel model) updateTodo,
    required TResult Function(TodoModel model) addTodo,
  }) {
    return addTodo(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodos,
    TResult? Function()? getTodosPagination,
    TResult? Function(int todoId)? deleteToodo,
    TResult? Function(int todoId, TodoModel model)? updateTodo,
    TResult? Function(TodoModel model)? addTodo,
  }) {
    return addTodo?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodos,
    TResult Function()? getTodosPagination,
    TResult Function(int todoId)? deleteToodo,
    TResult Function(int todoId, TodoModel model)? updateTodo,
    TResult Function(TodoModel model)? addTodo,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodos value) getTodos,
    required TResult Function(_GetTodosPagination value) getTodosPagination,
    required TResult Function(_DeleteTodo value) deleteToodo,
    required TResult Function(_UpdateTodo value) updateTodo,
    required TResult Function(_AddTodo value) addTodo,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTodos value)? getTodos,
    TResult? Function(_GetTodosPagination value)? getTodosPagination,
    TResult? Function(_DeleteTodo value)? deleteToodo,
    TResult? Function(_UpdateTodo value)? updateTodo,
    TResult? Function(_AddTodo value)? addTodo,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodos value)? getTodos,
    TResult Function(_GetTodosPagination value)? getTodosPagination,
    TResult Function(_DeleteTodo value)? deleteToodo,
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

abstract class _AddTodo implements TodoEvent {
  const factory _AddTodo({required final TodoModel model}) = _$AddTodoImpl;

  TodoModel get model;
  @JsonKey(ignore: true)
  _$$AddTodoImplCopyWith<_$AddTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TodosModel todos, bool isLoading, bool? isDeleted,
            bool? isUpdated, bool? isAdded)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TodosModel todos, bool isLoading, bool? isDeleted,
            bool? isUpdated, bool? isAdded)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TodosModel todos, bool isLoading, bool? isDeleted,
            bool? isUpdated, bool? isAdded)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'TodoState.loading()';
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
    required TResult Function() loading,
    required TResult Function(TodosModel todos, bool isLoading, bool? isDeleted,
            bool? isUpdated, bool? isAdded)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TodosModel todos, bool isLoading, bool? isDeleted,
            bool? isUpdated, bool? isAdded)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TodosModel todos, bool isLoading, bool? isDeleted,
            bool? isUpdated, bool? isAdded)?
        loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TodoState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TodosModel todos,
      bool isLoading,
      bool? isDeleted,
      bool? isUpdated,
      bool? isAdded});

  $TodosModelCopyWith<$Res> get todos;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? isLoading = null,
    Object? isDeleted = freezed,
    Object? isUpdated = freezed,
    Object? isAdded = freezed,
  }) {
    return _then(_$LoadedImpl(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as TodosModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isUpdated: freezed == isUpdated
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdded: freezed == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodosModelCopyWith<$Res> get todos {
    return $TodosModelCopyWith<$Res>(_value.todos, (value) {
      return _then(_value.copyWith(todos: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required this.todos,
      required this.isLoading,
      this.isDeleted = false,
      this.isUpdated = false,
      this.isAdded = false});

  @override
  final TodosModel todos;
  @override
  final bool isLoading;
  @override
  @JsonKey()
  final bool? isDeleted;
  @override
  @JsonKey()
  final bool? isUpdated;
  @override
  @JsonKey()
  final bool? isAdded;

  @override
  String toString() {
    return 'TodoState.loaded(todos: $todos, isLoading: $isLoading, isDeleted: $isDeleted, isUpdated: $isUpdated, isAdded: $isAdded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.todos, todos) || other.todos == todos) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isUpdated, isUpdated) ||
                other.isUpdated == isUpdated) &&
            (identical(other.isAdded, isAdded) || other.isAdded == isAdded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, todos, isLoading, isDeleted, isUpdated, isAdded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TodosModel todos, bool isLoading, bool? isDeleted,
            bool? isUpdated, bool? isAdded)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(todos, isLoading, isDeleted, isUpdated, isAdded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TodosModel todos, bool isLoading, bool? isDeleted,
            bool? isUpdated, bool? isAdded)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(todos, isLoading, isDeleted, isUpdated, isAdded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TodosModel todos, bool isLoading, bool? isDeleted,
            bool? isUpdated, bool? isAdded)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(todos, isLoading, isDeleted, isUpdated, isAdded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TodoState {
  const factory _Loaded(
      {required final TodosModel todos,
      required final bool isLoading,
      final bool? isDeleted,
      final bool? isUpdated,
      final bool? isAdded}) = _$LoadedImpl;

  TodosModel get todos;
  bool get isLoading;
  bool? get isDeleted;
  bool? get isUpdated;
  bool? get isAdded;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
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
    extends _$TodoStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'TodoState.error(message: $message)';
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
    required TResult Function() loading,
    required TResult Function(TodosModel todos, bool isLoading, bool? isDeleted,
            bool? isUpdated, bool? isAdded)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TodosModel todos, bool isLoading, bool? isDeleted,
            bool? isUpdated, bool? isAdded)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TodosModel todos, bool isLoading, bool? isDeleted,
            bool? isUpdated, bool? isAdded)?
        loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TodoState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
