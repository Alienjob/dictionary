import 'package:dictionary/repository/authentication_repository.dart';

class AuthenticatedRepository {
  AuthenticatedRepository({required AuthenticationRepository authRepository})
      : _authRepository = authRepository;

  final AuthenticationRepository _authRepository;

  String checkLogin() {
    String? deviceID = _authRepository.deviceID;

    if (deviceID is String) {
      return deviceID;
    } else {
      throw Exception('login data is null');
    }
  }
}
