import 'dart:convert';

import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import 'package:dictionary/services/embedded_data_service.dart';
import 'package:dictionary/services/local_sql/sql_data_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class DictionaryLocalDataSource {
  Future<UserDictionaryList> getSplashUserDictionaryList();
  Future<UserDictionaryList> getUserDictionaryList();
  Future<void> cacheUserDictionaryList(List<Dictionary> list);
}

// ignore: constant_identifier_names
const STORED_DICTIONARY_LISTS_KEY = 'STORED_DICTIONARY_LISTS_KEY';

class DictionaryLocalDataSourceImpl implements DictionaryLocalDataSource {
  final EmbeddedDataService embeddedDataService;
  final SharedPreferences sharedPreferences;
  final SQLDataAPI sqlDataAPI;

  DictionaryLocalDataSourceImpl(
      {required this.embeddedDataService,
      required this.sharedPreferences,
      required this.sqlDataAPI});
  @override
  Future<UserDictionaryList> getSplashUserDictionaryList() async {
    List<UserDictionary> list = [];
    var stored = sharedPreferences.getStringList(STORED_DICTIONARY_LISTS_KEY);

    if (stored is List<String>) {
      for (var jsonDictionary in stored) {
        list.add(_splashDictionary(
            Dictionary.fromJson(json.decode(jsonDictionary))));
      }
    } else {
      var embedded = embeddedDataService.embeddedDictionaryes();
      cacheUserDictionaryList(embedded);
      for (var dictionary in embedded) {
        list.add(_splashDictionary(dictionary));
      }
    }
    return UserDictionaryList(userDictionaryList: list, isLoading: true);
  }

  @override
  Future<UserDictionaryList> getUserDictionaryList() async {
    List<Dictionary> dictionaryes = [];
    var embedded = embeddedDataService.embeddedDictionaryes();
    var stored = sharedPreferences.getStringList(STORED_DICTIONARY_LISTS_KEY);
    List<String> dictionaryKeys = [];

    for (var dictionary in embedded) {
      dictionaryes.add(dictionary);
      dictionaryKeys.add(dictionary.key);
    }

    if (stored is List<String>) {
      for (var jsonDictionary in stored) {
        var dictionary = Dictionary.fromJson(json.decode(jsonDictionary));
        dictionaryes.add(dictionary);
        dictionaryKeys.add(dictionary.key);
      }
    }

    var progressData =
        await sqlDataAPI.dictionaryesProgress(dictionaryKeys: dictionaryKeys);
    List<UserDictionary> userDictionaryes = [];

    for (var dictionary in dictionaryes) {
      if (progressData.containsKey(dictionary.key)) {
        userDictionaryes.add(UserDictionary(
            dictionary: dictionary, progress: progressData[dictionary.key]!));
      } else {
        userDictionaryes.add(_splashDictionary(dictionary));
      }
    }

    return UserDictionaryList(
        isLoading: false, userDictionaryList: userDictionaryes);
  }

  @override
  Future<void> cacheUserDictionaryList(List<Dictionary> list) async {
    List<String> result = [];
    for (var dictionary in list) {
      result.add(json.encode(dictionary));
    }
    sharedPreferences.setStringList(STORED_DICTIONARY_LISTS_KEY, result);
  }

  UserDictionary _splashDictionary(Dictionary dictionary) {
    var progress = const UserDictionaryProgress(
      newCards: 0,
      repeateCards: 0,
      dailyProgress: [],
    );
    var newUserDictionary =
        UserDictionary(dictionary: dictionary, progress: progress);
    return newUserDictionary;
  }
}
