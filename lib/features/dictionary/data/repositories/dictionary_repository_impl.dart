import 'package:dictionary/core/error/exeptions.dart';
import 'package:dictionary/core/network/network_info.dart';
import 'package:dictionary/features/dictionary/data/datasources/dictionary_local_data_source.dart';
import 'package:dictionary/features/dictionary/data/datasources/dictionary_remote_data_source.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import 'package:dictionary/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dictionary/features/dictionary/domain/repositories/dictionary_repository.dart';

class DictionaryRepositoryImpl implements DictionaryRepository {
  final DictionaryLocalDataSource localDataSource;
  final DictionaryRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  DictionaryRepositoryImpl(
      {required this.localDataSource,
      required this.remoteDataSource,
      required this.networkInfo});

  @override
  Future<Either<Failure, UserDictionaryList>> getSplashDictionaryList() async {
    try {
      UserDictionaryList result =
          await localDataSource.getSplashUserDictionaryList();
      return Right(result);
    } on LocalExeption {
      return const Left(LocalFailure());
    }
  }

  @override
  Future<Either<Failure, UserDictionaryList>> getCachedDictionaryList() async {
    try {
      UserDictionaryList result = await localDataSource.getUserDictionaryList();
      return Right(result);
    } on LocalExeption {
      return const Left(LocalFailure());
    }
  }

  @override
  Future<Either<Failure, UserDictionaryList>> getRemoteDictionaryList() async {
    if (!await networkInfo.isConnected) {
      return const Left(NetworkFailure());
    }
    try {
      var dictionaryes = await remoteDataSource.getUserDictionaryes();
      var progressData =
          await remoteDataSource.getUserProgressData(dictionaryes);
      await localDataSource.cacheUserDictionaryList(dictionaryes);
      await localDataSource.cacheProgressData(progressData);

      return getCachedDictionaryList();
    } on LocalExeption {
      return const Left(ServerFailure());
    }
  }
}
