// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _LoginEvent login() {
    return const _LoginEvent();
  }

  _ChangetEvent changed({required AuthenticationState state}) {
    return _ChangetEvent(
      state: state,
    );
  }

  _LogoutEvent logout() {
    return const _LogoutEvent();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function(AuthenticationState state) changed,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(AuthenticationState state)? changed,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(AuthenticationState state)? changed,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_ChangetEvent value) changed,
    required TResult Function(_LogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_ChangetEvent value)? changed,
    TResult Function(_LogoutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_ChangetEvent value)? changed,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$LoginEventCopyWith<$Res> {
  factory _$LoginEventCopyWith(
          _LoginEvent value, $Res Function(_LoginEvent) then) =
      __$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LoginEventCopyWith<$Res> {
  __$LoginEventCopyWithImpl(
      _LoginEvent _value, $Res Function(_LoginEvent) _then)
      : super(_value, (v) => _then(v as _LoginEvent));

  @override
  _LoginEvent get _value => super._value as _LoginEvent;
}

/// @nodoc

class _$_LoginEvent extends _LoginEvent {
  const _$_LoginEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoginEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function(AuthenticationState state) changed,
    required TResult Function() logout,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(AuthenticationState state)? changed,
    TResult Function()? logout,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(AuthenticationState state)? changed,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_ChangetEvent value) changed,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_ChangetEvent value)? changed,
    TResult Function(_LogoutEvent value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_ChangetEvent value)? changed,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _LoginEvent extends AuthEvent {
  const factory _LoginEvent() = _$_LoginEvent;
  const _LoginEvent._() : super._();
}

/// @nodoc
abstract class _$ChangetEventCopyWith<$Res> {
  factory _$ChangetEventCopyWith(
          _ChangetEvent value, $Res Function(_ChangetEvent) then) =
      __$ChangetEventCopyWithImpl<$Res>;
  $Res call({AuthenticationState state});
}

/// @nodoc
class __$ChangetEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$ChangetEventCopyWith<$Res> {
  __$ChangetEventCopyWithImpl(
      _ChangetEvent _value, $Res Function(_ChangetEvent) _then)
      : super(_value, (v) => _then(v as _ChangetEvent));

  @override
  _ChangetEvent get _value => super._value as _ChangetEvent;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_ChangetEvent(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AuthenticationState,
    ));
  }
}

/// @nodoc

class _$_ChangetEvent extends _ChangetEvent {
  const _$_ChangetEvent({required this.state}) : super._();

  @override
  final AuthenticationState state;

  @override
  String toString() {
    return 'AuthEvent.changed(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangetEvent &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$ChangetEventCopyWith<_ChangetEvent> get copyWith =>
      __$ChangetEventCopyWithImpl<_ChangetEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function(AuthenticationState state) changed,
    required TResult Function() logout,
  }) {
    return changed(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(AuthenticationState state)? changed,
    TResult Function()? logout,
  }) {
    return changed?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(AuthenticationState state)? changed,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_ChangetEvent value) changed,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_ChangetEvent value)? changed,
    TResult Function(_LogoutEvent value)? logout,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_ChangetEvent value)? changed,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _ChangetEvent extends AuthEvent {
  const factory _ChangetEvent({required AuthenticationState state}) =
      _$_ChangetEvent;
  const _ChangetEvent._() : super._();

  AuthenticationState get state;
  @JsonKey(ignore: true)
  _$ChangetEventCopyWith<_ChangetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LogoutEventCopyWith<$Res> {
  factory _$LogoutEventCopyWith(
          _LogoutEvent value, $Res Function(_LogoutEvent) then) =
      __$LogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogoutEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LogoutEventCopyWith<$Res> {
  __$LogoutEventCopyWithImpl(
      _LogoutEvent _value, $Res Function(_LogoutEvent) _then)
      : super(_value, (v) => _then(v as _LogoutEvent));

  @override
  _LogoutEvent get _value => super._value as _LogoutEvent;
}

/// @nodoc

class _$_LogoutEvent extends _LogoutEvent {
  const _$_LogoutEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function(AuthenticationState state) changed,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(AuthenticationState state)? changed,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function(AuthenticationState state)? changed,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEvent value) login,
    required TResult Function(_ChangetEvent value) changed,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_ChangetEvent value)? changed,
    TResult Function(_LogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEvent value)? login,
    TResult Function(_ChangetEvent value)? changed,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LogoutEvent extends AuthEvent {
  const factory _LogoutEvent() = _$_LogoutEvent;
  const _LogoutEvent._() : super._();
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _FetchingAuthState fetching() {
    return const _FetchingAuthState();
  }

  _AuthenticatedState authenticated({required String deviceID}) {
    return _AuthenticatedState(
      deviceID: deviceID,
    );
  }

  _NotAuthenticatedState notAuthenticated() {
    return const _NotAuthenticatedState();
  }

  _ErrorAuthState error() {
    return const _ErrorAuthState();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(String deviceID) authenticated,
    required TResult Function() notAuthenticated,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String deviceID)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String deviceID)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchingAuthState value) fetching,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_NotAuthenticatedState value) notAuthenticated,
    required TResult Function(_ErrorAuthState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchingAuthState value)? fetching,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_NotAuthenticatedState value)? notAuthenticated,
    TResult Function(_ErrorAuthState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchingAuthState value)? fetching,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_NotAuthenticatedState value)? notAuthenticated,
    TResult Function(_ErrorAuthState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$FetchingAuthStateCopyWith<$Res> {
  factory _$FetchingAuthStateCopyWith(
          _FetchingAuthState value, $Res Function(_FetchingAuthState) then) =
      __$FetchingAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchingAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$FetchingAuthStateCopyWith<$Res> {
  __$FetchingAuthStateCopyWithImpl(
      _FetchingAuthState _value, $Res Function(_FetchingAuthState) _then)
      : super(_value, (v) => _then(v as _FetchingAuthState));

  @override
  _FetchingAuthState get _value => super._value as _FetchingAuthState;
}

/// @nodoc

class _$_FetchingAuthState extends _FetchingAuthState {
  const _$_FetchingAuthState() : super._();

  @override
  String toString() {
    return 'AuthState.fetching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchingAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(String deviceID) authenticated,
    required TResult Function() notAuthenticated,
    required TResult Function() error,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String deviceID)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? error,
  }) {
    return fetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String deviceID)? authenticated,
    TResult Function()? notAuthenticated,
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
    required TResult Function(_FetchingAuthState value) fetching,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_NotAuthenticatedState value) notAuthenticated,
    required TResult Function(_ErrorAuthState value) error,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchingAuthState value)? fetching,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_NotAuthenticatedState value)? notAuthenticated,
    TResult Function(_ErrorAuthState value)? error,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchingAuthState value)? fetching,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_NotAuthenticatedState value)? notAuthenticated,
    TResult Function(_ErrorAuthState value)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _FetchingAuthState extends AuthState {
  const factory _FetchingAuthState() = _$_FetchingAuthState;
  const _FetchingAuthState._() : super._();
}

/// @nodoc
abstract class _$AuthenticatedStateCopyWith<$Res> {
  factory _$AuthenticatedStateCopyWith(
          _AuthenticatedState value, $Res Function(_AuthenticatedState) then) =
      __$AuthenticatedStateCopyWithImpl<$Res>;
  $Res call({String deviceID});
}

/// @nodoc
class __$AuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedStateCopyWith<$Res> {
  __$AuthenticatedStateCopyWithImpl(
      _AuthenticatedState _value, $Res Function(_AuthenticatedState) _then)
      : super(_value, (v) => _then(v as _AuthenticatedState));

  @override
  _AuthenticatedState get _value => super._value as _AuthenticatedState;

  @override
  $Res call({
    Object? deviceID = freezed,
  }) {
    return _then(_AuthenticatedState(
      deviceID: deviceID == freezed
          ? _value.deviceID
          : deviceID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthenticatedState extends _AuthenticatedState {
  const _$_AuthenticatedState({required this.deviceID}) : super._();

  @override
  final String deviceID;

  @override
  String toString() {
    return 'AuthState.authenticated(deviceID: $deviceID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthenticatedState &&
            const DeepCollectionEquality().equals(other.deviceID, deviceID));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(deviceID));

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedStateCopyWith<_AuthenticatedState> get copyWith =>
      __$AuthenticatedStateCopyWithImpl<_AuthenticatedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(String deviceID) authenticated,
    required TResult Function() notAuthenticated,
    required TResult Function() error,
  }) {
    return authenticated(deviceID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String deviceID)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? error,
  }) {
    return authenticated?.call(deviceID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String deviceID)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(deviceID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchingAuthState value) fetching,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_NotAuthenticatedState value) notAuthenticated,
    required TResult Function(_ErrorAuthState value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchingAuthState value)? fetching,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_NotAuthenticatedState value)? notAuthenticated,
    TResult Function(_ErrorAuthState value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchingAuthState value)? fetching,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_NotAuthenticatedState value)? notAuthenticated,
    TResult Function(_ErrorAuthState value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedState extends AuthState {
  const factory _AuthenticatedState({required String deviceID}) =
      _$_AuthenticatedState;
  const _AuthenticatedState._() : super._();

  String get deviceID;
  @JsonKey(ignore: true)
  _$AuthenticatedStateCopyWith<_AuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NotAuthenticatedStateCopyWith<$Res> {
  factory _$NotAuthenticatedStateCopyWith(_NotAuthenticatedState value,
          $Res Function(_NotAuthenticatedState) then) =
      __$NotAuthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotAuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$NotAuthenticatedStateCopyWith<$Res> {
  __$NotAuthenticatedStateCopyWithImpl(_NotAuthenticatedState _value,
      $Res Function(_NotAuthenticatedState) _then)
      : super(_value, (v) => _then(v as _NotAuthenticatedState));

  @override
  _NotAuthenticatedState get _value => super._value as _NotAuthenticatedState;
}

/// @nodoc

class _$_NotAuthenticatedState extends _NotAuthenticatedState {
  const _$_NotAuthenticatedState() : super._();

  @override
  String toString() {
    return 'AuthState.notAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotAuthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(String deviceID) authenticated,
    required TResult Function() notAuthenticated,
    required TResult Function() error,
  }) {
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String deviceID)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? error,
  }) {
    return notAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String deviceID)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchingAuthState value) fetching,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_NotAuthenticatedState value) notAuthenticated,
    required TResult Function(_ErrorAuthState value) error,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchingAuthState value)? fetching,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_NotAuthenticatedState value)? notAuthenticated,
    TResult Function(_ErrorAuthState value)? error,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchingAuthState value)? fetching,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_NotAuthenticatedState value)? notAuthenticated,
    TResult Function(_ErrorAuthState value)? error,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _NotAuthenticatedState extends AuthState {
  const factory _NotAuthenticatedState() = _$_NotAuthenticatedState;
  const _NotAuthenticatedState._() : super._();
}

/// @nodoc
abstract class _$ErrorAuthStateCopyWith<$Res> {
  factory _$ErrorAuthStateCopyWith(
          _ErrorAuthState value, $Res Function(_ErrorAuthState) then) =
      __$ErrorAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorAuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$ErrorAuthStateCopyWith<$Res> {
  __$ErrorAuthStateCopyWithImpl(
      _ErrorAuthState _value, $Res Function(_ErrorAuthState) _then)
      : super(_value, (v) => _then(v as _ErrorAuthState));

  @override
  _ErrorAuthState get _value => super._value as _ErrorAuthState;
}

/// @nodoc

class _$_ErrorAuthState extends _ErrorAuthState {
  const _$_ErrorAuthState() : super._();

  @override
  String toString() {
    return 'AuthState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ErrorAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(String deviceID) authenticated,
    required TResult Function() notAuthenticated,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String deviceID)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String deviceID)? authenticated,
    TResult Function()? notAuthenticated,
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
    required TResult Function(_FetchingAuthState value) fetching,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_NotAuthenticatedState value) notAuthenticated,
    required TResult Function(_ErrorAuthState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchingAuthState value)? fetching,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_NotAuthenticatedState value)? notAuthenticated,
    TResult Function(_ErrorAuthState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchingAuthState value)? fetching,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_NotAuthenticatedState value)? notAuthenticated,
    TResult Function(_ErrorAuthState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorAuthState extends AuthState {
  const factory _ErrorAuthState() = _$_ErrorAuthState;
  const _ErrorAuthState._() : super._();
}
