import 'package:dartz/dartz.dart';
import 'package:dictionary/core/error/exeptions.dart';
import 'package:dictionary/core/error/failures.dart';
import 'package:dictionary/core/network/network_info.dart';
import 'package:dictionary/features/dictionary/data/datasources/dictionary_local_data_source.dart';
import 'package:dictionary/features/dictionary/data/repositories/dictionary_repository_impl.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import 'package:dictionary/models/dictionary_image.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../fixtures/dictionary_list.dart';

class MockLocalDataSource extends Mock implements DictionaryLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  MockLocalDataSource mockLocalDataSource = MockLocalDataSource();
  MockNetworkInfo mockNetworkInfo = MockNetworkInfo();
  DictionaryRepositoryImpl repository = DictionaryRepositoryImpl(
    localDataSource: mockLocalDataSource,
    networkInfo: mockNetworkInfo,
  );

  setUp(() {
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();

    repository = DictionaryRepositoryImpl(
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  final tUserDictionaryList = DictionaryListFixture.two;

  group('get dictionary list', () {
    test(
      'should ',
      () async {
        // arrange
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
        when(() => mockLocalDataSource.getUserDictionaryList())
            .thenAnswer((_) async => tUserDictionaryList);
        // act
        await repository.getUserDictionaryList();
        // assert
        verify(
          () => mockNetworkInfo.isConnected,
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
        final result = await repository.getUserDictionaryList();
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
        final result = await repository.getUserDictionaryList();
        // assert
        verify(
          () => mockLocalDataSource.getUserDictionaryList(),
        );
        expect(result, equals(const Left(LocalFailure())));
      },
    );
  });
}
