import 'dart:convert';

import 'package:dictionary/features/dictionary/data/datasources/dictionary_local_data_source.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import 'package:dictionary/services/embedded_data_service.dart';
import 'package:dictionary/services/local_sql/sql_lite.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../fixtures/dictionary_list.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

class MockSQLService extends Mock implements SQLLiteService {}

class MockEmbeddedService extends Mock implements EmbeddedDataService {}

void main() {
  MockSharedPreferences mockSharedPreferences = MockSharedPreferences();
  MockSQLService mockSqlService = MockSQLService();
  MockEmbeddedService mockEmbeddedService = MockEmbeddedService();
  DictionaryLocalDataSourceImpl dataSource = DictionaryLocalDataSourceImpl(
    sharedPreferences: mockSharedPreferences,
    sqlService: mockSqlService,
    embeddedDataService: mockEmbeddedService,
  );

  setUp(
    () {
      mockSharedPreferences = MockSharedPreferences();
      mockSqlService = MockSQLService();
      mockEmbeddedService = MockEmbeddedService();
      dataSource = DictionaryLocalDataSourceImpl(
          sharedPreferences: mockSharedPreferences,
          sqlService: mockSqlService,
          embeddedDataService: mockEmbeddedService);
    },
  );

  group(
    'getDictionaryList',
    () {
      test(
        'should return SplashDictionaryList from SharedPreferences when there is one in the cache',
        () async {
          var tString = const JsonEncoder().convert(DictionaryListFixture.two);
          List<Dictionary> dicList = List<Dictionary>.from(
              json.decode(tString).map((model) => Dictionary.fromJson(model)));
          var expectUserDList = UserDictionaryListFixture.splash;

          // arrange
          when(() => mockSharedPreferences.getStringList(any())).thenReturn(
              dicList.map((e) => const JsonEncoder().convert(e)).toList());
          // act
          final result = await dataSource.getSplashUserDictionaryList();
          // assert
          verify(() =>
              mockSharedPreferences.getStringList(STORED_DICTIONARY_LISTS_KEY));
          expect(result.userDictionaryList,
              equals(UserDictionaryListFixture.splash));
        },
      );
      test(
        'should return LocalDictionaryList from SharedPreferences when there is one in the cache',
        () async {
          final sp = DictionaryListFixture.two
              .map((e) => const JsonEncoder().convert(e))
              .toList();
          const progress1 = UserDictionaryProgress(
            newCards: 1,
            repeateCards: 1,
            dailyProgress: [
              UserDayProgress(
                day: 1,
                progress: 1,
              )
            ],
          );
          const progress2 = UserDictionaryProgress(
            newCards: 2,
            repeateCards: 2,
            dailyProgress: [
              UserDayProgress(
                day: 2,
                progress: 2,
              )
            ],
          );

          Map<String, UserDictionaryProgress> progress = {};
          progress[sp[0]] = progress1;
          progress[sp[1]] = progress2;

          final keys = progress.keys.toList();
          // arrange

          when(() => mockSharedPreferences.getStringList(any())).thenReturn(sp);
          when(() => mockSqlService.dictionaryProgress(dictionaryKeys: keys))
              .thenAnswer((_) async => progress);
          when(() => mockEmbeddedService.embeddedDictionaryes())
              .thenReturn(<Dictionary>[]);
          // act
          final result = await dataSource.getUserDictionaryList();
          // assert
          verify(() =>
              mockSharedPreferences.getStringList(STORED_DICTIONARY_LISTS_KEY));
          verify(() => mockSqlService.dictionaryProgress(dictionaryKeys: keys));

          expect(result.userDictionaryList,
              equals(UserDictionaryListFixture.withProgress));
        },
      );
    },
  );
}
