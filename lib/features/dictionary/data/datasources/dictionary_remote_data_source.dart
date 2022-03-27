import 'package:dictionary/features/auth/data/repositories/authentication_repository.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import 'package:dictionary/services/remote_data_service.dart';

abstract class DictionaryRemoteDataSource {
  /// Get saved user relatet dictionary lists.
  ///
  /// Throws a [NetworkFailure] for network error codes.
  /// Throws a [ServerFailure] for remote error codes.
  Future<List<Dictionary>> getUserDictionaryes();

  /// Get detailed user progress data for last five days.
  ///
  /// Throws a [NetworkFailure] for network error codes.
  /// Throws a [ServerFailure] for remote error codes.
  Future<Map<String, List<AnswerData>>> getUserProgressData(
      List<Dictionary> dictionaryes);
}

class DictionaryRemoteDataSourceImpl implements DictionaryRemoteDataSource {
  final AuthenticationRepository authenticationRepository;
  final RemoteDataService remoteDataService;

  DictionaryRemoteDataSourceImpl(
      {required this.remoteDataService, required this.authenticationRepository});

  @override
  Future<List<Dictionary>> getUserDictionaryes() {
    // TODO: implement getUserDictionaryList
    throw UnimplementedError();
  }

  @override
  Future<Map<String, List<AnswerData>>> getUserProgressData(
      List<Dictionary> dictionaryes) {
    // TODO: implement getUserDictionaryList
    throw UnimplementedError();
  }
}
