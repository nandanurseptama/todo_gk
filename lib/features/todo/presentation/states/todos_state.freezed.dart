// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todos_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodosState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitial) initial,
    required TResult Function(bool isLoading, List<TodoEntity>? todos)
        processing,
    required TResult Function(bool isLoading, List<TodoEntity> todos) loaded,
    required TResult Function(bool isLoading, String error, String processId,
            List<TodoEntity>? todos)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitial)? initial,
    TResult? Function(bool isLoading, List<TodoEntity>? todos)? processing,
    TResult? Function(bool isLoading, List<TodoEntity> todos)? loaded,
    TResult? Function(bool isLoading, String error, String processId,
            List<TodoEntity>? todos)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitial)? initial,
    TResult Function(bool isLoading, List<TodoEntity>? todos)? processing,
    TResult Function(bool isLoading, List<TodoEntity> todos)? loaded,
    TResult Function(bool isLoading, String error, String processId,
            List<TodoEntity>? todos)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosStateCopyWith<$Res> {
  factory $TodosStateCopyWith(
          TodosState value, $Res Function(TodosState) then) =
      _$TodosStateCopyWithImpl<$Res, TodosState>;
}

/// @nodoc
class _$TodosStateCopyWithImpl<$Res, $Val extends TodosState>
    implements $TodosStateCopyWith<$Res> {
  _$TodosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isInitial});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitial = null,
  }) {
    return _then(_$_Initial(
      isInitial: null == isInitial
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.isInitial = true});

  @override
  @JsonKey()
  final bool isInitial;

  @override
  String toString() {
    return 'TodosState.initial(isInitial: $isInitial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isInitial, isInitial) ||
                other.isInitial == isInitial));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInitial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitial) initial,
    required TResult Function(bool isLoading, List<TodoEntity>? todos)
        processing,
    required TResult Function(bool isLoading, List<TodoEntity> todos) loaded,
    required TResult Function(bool isLoading, String error, String processId,
            List<TodoEntity>? todos)
        error,
  }) {
    return initial(isInitial);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitial)? initial,
    TResult? Function(bool isLoading, List<TodoEntity>? todos)? processing,
    TResult? Function(bool isLoading, List<TodoEntity> todos)? loaded,
    TResult? Function(bool isLoading, String error, String processId,
            List<TodoEntity>? todos)?
        error,
  }) {
    return initial?.call(isInitial);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitial)? initial,
    TResult Function(bool isLoading, List<TodoEntity>? todos)? processing,
    TResult Function(bool isLoading, List<TodoEntity> todos)? loaded,
    TResult Function(bool isLoading, String error, String processId,
            List<TodoEntity>? todos)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isInitial);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TodosState {
  const factory _Initial({final bool isInitial}) = _$_Initial;

  bool get isInitial;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProcessingCopyWith<$Res> {
  factory _$$_ProcessingCopyWith(
          _$_Processing value, $Res Function(_$_Processing) then) =
      __$$_ProcessingCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading, List<TodoEntity>? todos});
}

/// @nodoc
class __$$_ProcessingCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res, _$_Processing>
    implements _$$_ProcessingCopyWith<$Res> {
  __$$_ProcessingCopyWithImpl(
      _$_Processing _value, $Res Function(_$_Processing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? todos = freezed,
  }) {
    return _then(_$_Processing(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      todos: freezed == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>?,
    ));
  }
}

/// @nodoc

class _$_Processing implements _Processing {
  const _$_Processing(
      {this.isLoading = true, final List<TodoEntity>? todos = null})
      : _todos = todos;

  @override
  @JsonKey()
  final bool isLoading;
  final List<TodoEntity>? _todos;
  @override
  @JsonKey()
  List<TodoEntity>? get todos {
    final value = _todos;
    if (value == null) return null;
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TodosState.processing(isLoading: $isLoading, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Processing &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProcessingCopyWith<_$_Processing> get copyWith =>
      __$$_ProcessingCopyWithImpl<_$_Processing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitial) initial,
    required TResult Function(bool isLoading, List<TodoEntity>? todos)
        processing,
    required TResult Function(bool isLoading, List<TodoEntity> todos) loaded,
    required TResult Function(bool isLoading, String error, String processId,
            List<TodoEntity>? todos)
        error,
  }) {
    return processing(isLoading, todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitial)? initial,
    TResult? Function(bool isLoading, List<TodoEntity>? todos)? processing,
    TResult? Function(bool isLoading, List<TodoEntity> todos)? loaded,
    TResult? Function(bool isLoading, String error, String processId,
            List<TodoEntity>? todos)?
        error,
  }) {
    return processing?.call(isLoading, todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitial)? initial,
    TResult Function(bool isLoading, List<TodoEntity>? todos)? processing,
    TResult Function(bool isLoading, List<TodoEntity> todos)? loaded,
    TResult Function(bool isLoading, String error, String processId,
            List<TodoEntity>? todos)?
        error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(isLoading, todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _Processing implements TodosState {
  const factory _Processing(
      {final bool isLoading, final List<TodoEntity>? todos}) = _$_Processing;

  bool get isLoading;
  List<TodoEntity>? get todos;
  @JsonKey(ignore: true)
  _$$_ProcessingCopyWith<_$_Processing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading, List<TodoEntity> todos});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? todos = null,
  }) {
    return _then(_$_Loaded(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {this.isLoading = false, required final List<TodoEntity> todos})
      : _todos = todos;

  @override
  @JsonKey()
  final bool isLoading;
  final List<TodoEntity> _todos;
  @override
  List<TodoEntity> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodosState.loaded(isLoading: $isLoading, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitial) initial,
    required TResult Function(bool isLoading, List<TodoEntity>? todos)
        processing,
    required TResult Function(bool isLoading, List<TodoEntity> todos) loaded,
    required TResult Function(bool isLoading, String error, String processId,
            List<TodoEntity>? todos)
        error,
  }) {
    return loaded(isLoading, todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitial)? initial,
    TResult? Function(bool isLoading, List<TodoEntity>? todos)? processing,
    TResult? Function(bool isLoading, List<TodoEntity> todos)? loaded,
    TResult? Function(bool isLoading, String error, String processId,
            List<TodoEntity>? todos)?
        error,
  }) {
    return loaded?.call(isLoading, todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitial)? initial,
    TResult Function(bool isLoading, List<TodoEntity>? todos)? processing,
    TResult Function(bool isLoading, List<TodoEntity> todos)? loaded,
    TResult Function(bool isLoading, String error, String processId,
            List<TodoEntity>? todos)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(isLoading, todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
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

abstract class _Loaded implements TodosState {
  const factory _Loaded(
      {final bool isLoading,
      required final List<TodoEntity> todos}) = _$_Loaded;

  bool get isLoading;
  List<TodoEntity> get todos;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isLoading,
      String error,
      String processId,
      List<TodoEntity>? todos});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? processId = null,
    Object? todos = freezed,
  }) {
    return _then(_$_Error(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      processId: null == processId
          ? _value.processId
          : processId // ignore: cast_nullable_to_non_nullable
              as String,
      todos: freezed == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(
      {this.isLoading = false,
      required this.error,
      required this.processId,
      final List<TodoEntity>? todos})
      : _todos = todos;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String error;
  @override
  final String processId;
  final List<TodoEntity>? _todos;
  @override
  List<TodoEntity>? get todos {
    final value = _todos;
    if (value == null) return null;
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TodosState.error(isLoading: $isLoading, error: $error, processId: $processId, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.processId, processId) ||
                other.processId == processId) &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error, processId,
      const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInitial) initial,
    required TResult Function(bool isLoading, List<TodoEntity>? todos)
        processing,
    required TResult Function(bool isLoading, List<TodoEntity> todos) loaded,
    required TResult Function(bool isLoading, String error, String processId,
            List<TodoEntity>? todos)
        error,
  }) {
    return error(isLoading, this.error, processId, todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInitial)? initial,
    TResult? Function(bool isLoading, List<TodoEntity>? todos)? processing,
    TResult? Function(bool isLoading, List<TodoEntity> todos)? loaded,
    TResult? Function(bool isLoading, String error, String processId,
            List<TodoEntity>? todos)?
        error,
  }) {
    return error?.call(isLoading, this.error, processId, todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInitial)? initial,
    TResult Function(bool isLoading, List<TodoEntity>? todos)? processing,
    TResult Function(bool isLoading, List<TodoEntity> todos)? loaded,
    TResult Function(bool isLoading, String error, String processId,
            List<TodoEntity>? todos)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(isLoading, this.error, processId, todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
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

abstract class _Error implements TodosState {
  const factory _Error(
      {final bool isLoading,
      required final String error,
      required final String processId,
      final List<TodoEntity>? todos}) = _$_Error;

  bool get isLoading;
  String get error;
  String get processId;
  List<TodoEntity>? get todos;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
