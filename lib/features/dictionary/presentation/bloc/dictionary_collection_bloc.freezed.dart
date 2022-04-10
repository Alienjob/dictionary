// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dictionary_collection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DictionaryCollectionEventTearOff {
  const _$DictionaryCollectionEventTearOff();

  _RequestEvent request() {
    return const _RequestEvent();
  }

  _RequestTasksEvent requestTasks() {
    return const _RequestTasksEvent();
  }
}

/// @nodoc
const $DictionaryCollectionEvent = _$DictionaryCollectionEventTearOff();

/// @nodoc
mixin _$DictionaryCollectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
    required TResult Function() requestTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? requestTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? requestTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestEvent value) request,
    required TResult Function(_RequestTasksEvent value) requestTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestEvent value)? request,
    TResult Function(_RequestTasksEvent value)? requestTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestEvent value)? request,
    TResult Function(_RequestTasksEvent value)? requestTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryCollectionEventCopyWith<$Res> {
  factory $DictionaryCollectionEventCopyWith(DictionaryCollectionEvent value,
          $Res Function(DictionaryCollectionEvent) then) =
      _$DictionaryCollectionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DictionaryCollectionEventCopyWithImpl<$Res>
    implements $DictionaryCollectionEventCopyWith<$Res> {
  _$DictionaryCollectionEventCopyWithImpl(this._value, this._then);

  final DictionaryCollectionEvent _value;
  // ignore: unused_field
  final $Res Function(DictionaryCollectionEvent) _then;
}

/// @nodoc
abstract class _$RequestEventCopyWith<$Res> {
  factory _$RequestEventCopyWith(
          _RequestEvent value, $Res Function(_RequestEvent) then) =
      __$RequestEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$RequestEventCopyWithImpl<$Res>
    extends _$DictionaryCollectionEventCopyWithImpl<$Res>
    implements _$RequestEventCopyWith<$Res> {
  __$RequestEventCopyWithImpl(
      _RequestEvent _value, $Res Function(_RequestEvent) _then)
      : super(_value, (v) => _then(v as _RequestEvent));

  @override
  _RequestEvent get _value => super._value as _RequestEvent;
}

/// @nodoc

class _$_RequestEvent extends _RequestEvent {
  const _$_RequestEvent() : super._();

  @override
  String toString() {
    return 'DictionaryCollectionEvent.request()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RequestEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
    required TResult Function() requestTasks,
  }) {
    return request();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? requestTasks,
  }) {
    return request?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? requestTasks,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestEvent value) request,
    required TResult Function(_RequestTasksEvent value) requestTasks,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestEvent value)? request,
    TResult Function(_RequestTasksEvent value)? requestTasks,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestEvent value)? request,
    TResult Function(_RequestTasksEvent value)? requestTasks,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class _RequestEvent extends DictionaryCollectionEvent {
  const factory _RequestEvent() = _$_RequestEvent;
  const _RequestEvent._() : super._();
}

/// @nodoc
abstract class _$RequestTasksEventCopyWith<$Res> {
  factory _$RequestTasksEventCopyWith(
          _RequestTasksEvent value, $Res Function(_RequestTasksEvent) then) =
      __$RequestTasksEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$RequestTasksEventCopyWithImpl<$Res>
    extends _$DictionaryCollectionEventCopyWithImpl<$Res>
    implements _$RequestTasksEventCopyWith<$Res> {
  __$RequestTasksEventCopyWithImpl(
      _RequestTasksEvent _value, $Res Function(_RequestTasksEvent) _then)
      : super(_value, (v) => _then(v as _RequestTasksEvent));

  @override
  _RequestTasksEvent get _value => super._value as _RequestTasksEvent;
}

/// @nodoc

class _$_RequestTasksEvent extends _RequestTasksEvent {
  const _$_RequestTasksEvent() : super._();

  @override
  String toString() {
    return 'DictionaryCollectionEvent.requestTasks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RequestTasksEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
    required TResult Function() requestTasks,
  }) {
    return requestTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? requestTasks,
  }) {
    return requestTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    TResult Function()? requestTasks,
    required TResult orElse(),
  }) {
    if (requestTasks != null) {
      return requestTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestEvent value) request,
    required TResult Function(_RequestTasksEvent value) requestTasks,
  }) {
    return requestTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestEvent value)? request,
    TResult Function(_RequestTasksEvent value)? requestTasks,
  }) {
    return requestTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestEvent value)? request,
    TResult Function(_RequestTasksEvent value)? requestTasks,
    required TResult orElse(),
  }) {
    if (requestTasks != null) {
      return requestTasks(this);
    }
    return orElse();
  }
}

abstract class _RequestTasksEvent extends DictionaryCollectionEvent {
  const factory _RequestTasksEvent() = _$_RequestTasksEvent;
  const _RequestTasksEvent._() : super._();
}

/// @nodoc
class _$DictionaryCollectionStateTearOff {
  const _$DictionaryCollectionStateTearOff();

  _FetchinState fetching() {
    return const _FetchinState();
  }

  _ReadyState ready({required UserDictionaryList data}) {
    return _ReadyState(
      data: data,
    );
  }

  _ErrorState error() {
    return const _ErrorState();
  }
}

/// @nodoc
const $DictionaryCollectionState = _$DictionaryCollectionStateTearOff();

/// @nodoc
mixin _$DictionaryCollectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(UserDictionaryList data) ready,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(UserDictionaryList data)? ready,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(UserDictionaryList data)? ready,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchinState value) fetching,
    required TResult Function(_ReadyState value) ready,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchinState value)? fetching,
    TResult Function(_ReadyState value)? ready,
    TResult Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchinState value)? fetching,
    TResult Function(_ReadyState value)? ready,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryCollectionStateCopyWith<$Res> {
  factory $DictionaryCollectionStateCopyWith(DictionaryCollectionState value,
          $Res Function(DictionaryCollectionState) then) =
      _$DictionaryCollectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DictionaryCollectionStateCopyWithImpl<$Res>
    implements $DictionaryCollectionStateCopyWith<$Res> {
  _$DictionaryCollectionStateCopyWithImpl(this._value, this._then);

  final DictionaryCollectionState _value;
  // ignore: unused_field
  final $Res Function(DictionaryCollectionState) _then;
}

/// @nodoc
abstract class _$FetchinStateCopyWith<$Res> {
  factory _$FetchinStateCopyWith(
          _FetchinState value, $Res Function(_FetchinState) then) =
      __$FetchinStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchinStateCopyWithImpl<$Res>
    extends _$DictionaryCollectionStateCopyWithImpl<$Res>
    implements _$FetchinStateCopyWith<$Res> {
  __$FetchinStateCopyWithImpl(
      _FetchinState _value, $Res Function(_FetchinState) _then)
      : super(_value, (v) => _then(v as _FetchinState));

  @override
  _FetchinState get _value => super._value as _FetchinState;
}

/// @nodoc

class _$_FetchinState extends _FetchinState {
  const _$_FetchinState() : super._();

  @override
  String toString() {
    return 'DictionaryCollectionState.fetching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchinState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(UserDictionaryList data) ready,
    required TResult Function() error,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(UserDictionaryList data)? ready,
    TResult Function()? error,
  }) {
    return fetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(UserDictionaryList data)? ready,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchinState value) fetching,
    required TResult Function(_ReadyState value) ready,
    required TResult Function(_ErrorState value) error,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchinState value)? fetching,
    TResult Function(_ReadyState value)? ready,
    TResult Function(_ErrorState value)? error,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchinState value)? fetching,
    TResult Function(_ReadyState value)? ready,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _FetchinState extends DictionaryCollectionState {
  const factory _FetchinState() = _$_FetchinState;
  const _FetchinState._() : super._();
}

/// @nodoc
abstract class _$ReadyStateCopyWith<$Res> {
  factory _$ReadyStateCopyWith(
          _ReadyState value, $Res Function(_ReadyState) then) =
      __$ReadyStateCopyWithImpl<$Res>;
  $Res call({UserDictionaryList data});

  $UserDictionaryListCopyWith<$Res> get data;
}

/// @nodoc
class __$ReadyStateCopyWithImpl<$Res>
    extends _$DictionaryCollectionStateCopyWithImpl<$Res>
    implements _$ReadyStateCopyWith<$Res> {
  __$ReadyStateCopyWithImpl(
      _ReadyState _value, $Res Function(_ReadyState) _then)
      : super(_value, (v) => _then(v as _ReadyState));

  @override
  _ReadyState get _value => super._value as _ReadyState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ReadyState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDictionaryList,
    ));
  }

  @override
  $UserDictionaryListCopyWith<$Res> get data {
    return $UserDictionaryListCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_ReadyState extends _ReadyState {
  const _$_ReadyState({required this.data}) : super._();

  @override
  final UserDictionaryList data;

  @override
  String toString() {
    return 'DictionaryCollectionState.ready(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReadyState &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$ReadyStateCopyWith<_ReadyState> get copyWith =>
      __$ReadyStateCopyWithImpl<_ReadyState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(UserDictionaryList data) ready,
    required TResult Function() error,
  }) {
    return ready(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(UserDictionaryList data)? ready,
    TResult Function()? error,
  }) {
    return ready?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(UserDictionaryList data)? ready,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchinState value) fetching,
    required TResult Function(_ReadyState value) ready,
    required TResult Function(_ErrorState value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchinState value)? fetching,
    TResult Function(_ReadyState value)? ready,
    TResult Function(_ErrorState value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchinState value)? fetching,
    TResult Function(_ReadyState value)? ready,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _ReadyState extends DictionaryCollectionState {
  const factory _ReadyState({required UserDictionaryList data}) = _$_ReadyState;
  const _ReadyState._() : super._();

  UserDictionaryList get data;
  @JsonKey(ignore: true)
  _$ReadyStateCopyWith<_ReadyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorStateCopyWith<$Res> {
  factory _$ErrorStateCopyWith(
          _ErrorState value, $Res Function(_ErrorState) then) =
      __$ErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorStateCopyWithImpl<$Res>
    extends _$DictionaryCollectionStateCopyWithImpl<$Res>
    implements _$ErrorStateCopyWith<$Res> {
  __$ErrorStateCopyWithImpl(
      _ErrorState _value, $Res Function(_ErrorState) _then)
      : super(_value, (v) => _then(v as _ErrorState));

  @override
  _ErrorState get _value => super._value as _ErrorState;
}

/// @nodoc

class _$_ErrorState extends _ErrorState {
  const _$_ErrorState() : super._();

  @override
  String toString() {
    return 'DictionaryCollectionState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(UserDictionaryList data) ready,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(UserDictionaryList data)? ready,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(UserDictionaryList data)? ready,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchinState value) fetching,
    required TResult Function(_ReadyState value) ready,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchinState value)? fetching,
    TResult Function(_ReadyState value)? ready,
    TResult Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchinState value)? fetching,
    TResult Function(_ReadyState value)? ready,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState extends DictionaryCollectionState {
  const factory _ErrorState() = _$_ErrorState;
  const _ErrorState._() : super._();
}
