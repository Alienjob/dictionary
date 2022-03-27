import 'dart:convert';

import 'package:dictionary/features/dictionary/data/datasources/dictionary_local_data_source.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../fixtures/dictionary_list.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  MockSharedPreferences mockSharedPreferences = MockSharedPreferences();
  DictionaryLocalDataSourceImpl dataSource =
      DictionaryLocalDataSourceImpl(sharedPreferences: mockSharedPreferences);

  setUp(
    () {
      mockSharedPreferences = MockSharedPreferences();
      dataSource = DictionaryLocalDataSourceImpl(
          sharedPreferences: mockSharedPreferences);
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
