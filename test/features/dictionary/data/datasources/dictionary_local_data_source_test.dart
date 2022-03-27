import 'dart:convert';

import 'package:dictionary/features/dictionary/data/datasources/dictionary_local_data_source.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import 'package:dictionary/services/embedded_data_service.dart';
import 'package:dictionary/services/sql_lite.dart';
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
        'should return DictionaryList from SharedPreferences when there is one in the cache',
        () async {
          var tString = JsonEncoder().convert(DictionaryListFixture.two);
          Iterable l = json.decode(tString);
          List<Dictionary> dicList = List<Dictionary>.from(
              l.map((model) => Dictionary.fromJson(model)));
          // arrange
          when(() => mockSharedPreferences.getString(any()))
              .thenReturn(DictionaryFixture.empty.toString());
          // act

          // assert
        },
      );
    },
  );
}
