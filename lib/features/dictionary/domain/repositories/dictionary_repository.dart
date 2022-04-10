import 'package:dartz/dartz.dart';
import 'package:dictionary/core/domain/error/failures.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';

abstract class DictionaryRepository {
  /// Get cached user relatet dictionary lists whith empty progress.
  ///
  /// Throws a [LocalFailure] for local error codes.
  Future<Either<Failure, UserDictionaryList>> getSplashDictionaryList();

  /// Get cached user relatet dictionary lists whith cached progress.
  ///
  /// Throws a [LocalFailure] for local error codes.
  Future<Either<Failure, UserDictionaryList>> getCachedDictionaryList();

  /// Update cache from remote data source and
  /// Get user relatet dictionary lists whith progress.
  ///
  /// Throws a [LocalFailure] for local error codes.
  /// Throws a [ServerFailure] for remote error codes.
  Future<Either<Failure, UserDictionaryList>> getRemoteDictionaryList();

  /// Update tasks
  Future<void> makeTasks();
}
