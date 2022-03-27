import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dictionary/repository/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();

  const factory AuthEvent.login() = _LoginEvent;
  const factory AuthEvent.singin() = _SinginEvent;
  const factory AuthEvent.changed({required AuthenticationState state}) =
      _ChangetEvent;
  const factory AuthEvent.logout() = _LogoutEvent;
}

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  bool get isLogin => when<bool>(
        error: () => false,
        fetching: () => false,
        authenticated: (_) => true,
        notAuthenticated: () => false,
      );

  const factory AuthState.fetching() = _FetchingAuthState;
  const factory AuthState.authenticated({required final String deviceID}) =
      _AuthenticatedState;
  const factory AuthState.notAuthenticated() = _NotAuthenticatedState;
  const factory AuthState.error() = _ErrorAuthState;
}

class AuthBLoC extends Bloc<AuthEvent, AuthState> {
  AuthBLoC({required final AuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(const _NotAuthenticatedState()) {
    on<_LoginEvent>(_onLoginEvent);
    on<_SinginEvent>(_onSinginEvent);
    on<_LogoutEvent>(_onLogoutEvent);
    on<_ChangetEvent>(_onChangetEvent);
    _authenticationStatusSubscription = _authenticationRepository.status.listen(
      (status) => add(_ChangetEvent(state: status)),
    );
    _authenticationRepository.readStoredData();
  }

  final AuthenticationRepository _authenticationRepository;
  late StreamSubscription<AuthenticationState>
      _authenticationStatusSubscription;

  Future<void> _onLoginEvent(
    _LoginEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const _FetchingAuthState());
      _authenticationRepository.readStoredData();
    } on Object catch (error, _) {
      emit(const _ErrorAuthState());
      rethrow;
    } finally {}
  }
  Future<void> _onSinginEvent(
    _SinginEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const _FetchingAuthState());
      final deviceID = await _authenticationRepository.makeDeviceID();
      await _authenticationRepository.storeDeviceID(deviceID);
    } on Object catch (error, _) {
      emit(const _ErrorAuthState());
      rethrow;
    } finally {}
  }

  Future<void> _onLogoutEvent(
    _LogoutEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const _FetchingAuthState());
      _authenticationRepository.clearDeviceID();
    } on Object catch (error, _) {
      emit(const _ErrorAuthState());
      rethrow;
    } finally {}
  }

  Future<void> _onChangetEvent(
    _ChangetEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      if (event.state is AuthenticationStateExist) {
        return emit(_AuthenticatedState(
            deviceID: (event.state as AuthenticationStateExist).deviceID));
      }
      if (event.state is AuthenticationStateNoExist) {
        return emit(const _NotAuthenticatedState());
      }
    } on Object catch (error, _) {
      emit(const _ErrorAuthState());
      rethrow;
    } finally {}
  }

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    _authenticationRepository.dispose();
    return super.close();
  }
}
