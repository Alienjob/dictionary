import 'package:dartz/dartz.dart';
import 'package:dictionary/core/error/exeptions.dart';
import 'package:dictionary/core/error/failures.dart';
import 'package:dictionary/core/network/network_info.dart';
import 'package:dictionary/features/dictionary/data/datasources/dictionary_local_data_source.dart';
import 'package:dictionary/features/dictionary/data/datasources/dictionary_remote_data_source.dart';
import 'package:dictionary/features/dictionary/data/repositories/dictionary_repository_impl.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import 'package:dictionary/models/dictionary_image.dart';
import 'package:dictionary/services/remote_data_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../fixtures/dictionary_list.dart';

class MockLocalDataSource extends Mock implements DictionaryLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}
class MockRemoteDataService extends Mock implements RemoteDataService {}
class MockDictionaryRemoteDataSource extends Mock implements DictionaryRemoteDataSource {}

void main() async {
  MockLocalDataSource mockLocalDataSource = MockLocalDataSource();
  MockNetworkInfo mockNetworkInfo = MockNetworkInfo();
  MockDictionaryRemoteDataSource dictionaryRemoteDataSource = MockDictionaryRemoteDataSource();

  DictionaryRepositoryImpl repository = DictionaryRepositoryImpl(
    localDataSource: mockLocalDataSource,
    networkInfo: mockNetworkInfo,
    remoteDataSource: dictionaryRemoteDataSource
  );

  setUp(() {
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    dictionaryRemoteDataSource = MockDictionaryRemoteDataSource();

    repository = DictionaryRepositoryImpl(
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
      remoteDataSource: dictionaryRemoteDataSource

    );
  });

  final tUserDictionaryList = UserDictionaryList(isLoading: false, userDictionaryList: UserDictionaryListFixture.two) ;

  group('get dictionary list', () {
    test(
      'should call local user dictionary list',
      () async {
        // arrange
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
        when(() => mockLocalDataSource.getUserDictionaryList())
            .thenAnswer((_) async => Future.value(tUserDictionaryList));
        // act
        await repository.getCachedDictionaryList();
        // assert
        verify(
          () => mockLocalDataSource.getUserDictionaryList(),
        );
      },
    );
  });
  group('device is online', () {
    setUp(
      () {
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      },
    );

    test(
      'should return local data',
      () async {
        // arrange
        when(() => mockLocalDataSource.getUserDictionaryList())
            .thenAnswer((_) async => tUserDictionaryList);
        // act
        final result = await repository.getCachedDictionaryList();
        // assert
        verify(
          () => mockLocalDataSource.getUserDictionaryList(),
        );
        expect(result, equals(Right(tUserDictionaryList)));
      },
    );

    test(
      'should return failure',
      () async {
        // arrange
        when(() => mockLocalDataSource.getUserDictionaryList())
            .thenThrow(LocalExeption());
        // act
        final result = await repository.getCachedDictionaryList();
        // assert
        verify(
          () => mockLocalDataSource.getUserDictionaryList(),
        );
        expect(result, equals(const Left(LocalFailure())));
      },
    );
  });
}
