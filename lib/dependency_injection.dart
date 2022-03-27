import 'package:dictionary/core/network/network_info.dart';
import 'package:dictionary/features/dictionary/data/datasources/dictionary_remote_data_source.dart';
import 'package:dictionary/features/dictionary/data/repositories/dictionary_repository_impl.dart';
import 'package:dictionary/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:dictionary/services/embedded_data_service.dart';
import 'package:dictionary/services/remote_data_service.dart';
import 'package:get_it/get_it.dart';
import 'package:dictionary/bloc/card_collection_bloc.dart';
import 'package:dictionary/features/auth/data/repositories/authentication_repository.dart';
import 'package:dictionary/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:dictionary/features/dictionary/data/datasources/dictionary_local_data_source.dart';
import 'package:dictionary/features/dictionary/presentation/bloc/dictionary_collection_bloc.dart';
import 'package:dictionary/repository/card_collection_repository.dart';
import 'package:dictionary/services/sql_lite.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final prefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => prefs);
  sl.registerLazySingleton<EmbeddedDataService>(
      () => EmbeddedDataServiceImpl());
  sl.registerLazySingleton(() => SQLLiteService());
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()));
  sl.registerLazySingleton<RemoteDataService>(() => RemoteDataServiceImpl());
  sl.registerLazySingleton<DictionaryRemoteDataSource>(
      () => DictionaryRemoteDataSourceImpl(
            remoteDataService: sl(),
            authenticationRepository: sl()),
          );

  sl.registerLazySingleton(() => AuthenticationRepository(prefs));
  sl.registerLazySingleton<DictionaryLocalDataSource>(
      () => DictionaryLocalDataSourceImpl(
            embeddedDataService: sl(),
            sharedPreferences: sl(),
            sqlService: sl(),
          ));
  sl.registerLazySingleton<CardCollectionRepository>(
      () => CardCollectionRepository(
            authRepository: sl(),
            localSql: sl(),
          ));
  sl.registerLazySingleton<DictionaryRepository>(() => DictionaryRepositoryImpl(
        localDataSource: sl(),
        networkInfo: sl(),
        remoteDataSource: sl(),
      ));

  sl.registerFactory(
    () => AuthBLoC(authenticationRepository: sl()),
  );
  sl.registerFactory(
    () => DictionaryCollectionBLoC(repository: sl()),
  );
  sl.registerFactory(
    () => CardCollectionBLoC(repository: sl()),
  );
}
