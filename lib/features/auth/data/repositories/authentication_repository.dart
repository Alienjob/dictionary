import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';


class AuthenticationRepository {
  final SharedPreferences _prefs;
  final _controller = StreamController<AuthenticationState>();

  AuthenticationRepository(this._prefs);

  Stream<AuthenticationState> get status async* {
    yield AuthenticationStateFetching();
    yield* _controller.stream;
  }

  String? _deviceID;
  String? get deviceID => _deviceID;

  void _updateDeviceID(AuthenticationState state) {
    _controller.add(state);
    if (state is AuthenticationStateExist) {
      _deviceID = state.deviceID;
    } else {
      _deviceID = null;
    }
  }

  Future<void> readStoredData() async {
    final String deviceID = _prefs.getString('deviceID') ?? '';

    await Future.delayed(const Duration(seconds: 2));

    if (deviceID == '') {
      _updateDeviceID(AuthenticationStateNoExist());
    } else {
      _updateDeviceID(AuthenticationStateExist(deviceID: deviceID));
    }
  }

  Future<String> makeDeviceID() async {
    var deviceID = const Uuid().v1();
    await Future.delayed(const Duration(seconds: 2));
    return deviceID;
  }

  Future<void> storeDeviceID(String deviceID) async {
    _prefs.setString('deviceID', deviceID);
    _updateDeviceID(AuthenticationStateExist(deviceID: deviceID));
  }

  Future<void> clearDeviceID() async {
    await Future.delayed(const Duration(seconds: 2));

    await _prefs.remove('deviceID');
    _updateDeviceID(AuthenticationStateNoExist());
  }

  void dispose() => _controller.close();
}

enum AuthenticationStateType { undefined, fetching, exist, noExist }

class AuthenticationState {
  AuthenticationStateType get type {
    return AuthenticationStateType.undefined;
  }
}

class AuthenticationStateFetching extends AuthenticationState {
  @override
  AuthenticationStateType get type {
    return AuthenticationStateType.fetching;
  }
}

class AuthenticationStateExist extends AuthenticationState {
  @override
  AuthenticationStateType get type {
    return AuthenticationStateType.exist;
  }

  final String deviceID;
  AuthenticationStateExist({required this.deviceID});
}

class AuthenticationStateNoExist extends AuthenticationState {
  @override
  AuthenticationStateType get type {
    return AuthenticationStateType.noExist;
  }
}
