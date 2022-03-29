// ignore_for_file: avoid_print

import 'package:dictionary/core/domain/error/exeptions.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import 'package:sqflite/sqflite.dart';

class SQLLiteService {
  static int _currentTimeInSeconds() {
    var ms = (DateTime.now()).millisecondsSinceEpoch;
    return (ms / 1000).round();
  }

  static int _currentTimeInDays() {
    const int dayLength = 1000 * 24 * 60 * 60;
    var ms = (DateTime.now()).millisecondsSinceEpoch;
    return (ms / dayLength).round();
  }

  Future<Map<String, UserDictionaryProgress>> dictionaryProgress(
      {required List<String> dictionaryKeys}) async {
    Map<String, UserDictionaryProgress> result = {};
    var _database = await database();

    for (var collectionKey in dictionaryKeys) {
      _database.execute(
          'SELECT FROM (SELECT SUM(remember) as remember, SUM(1-remember) as forget, day FROM anwers WHERE collectionKey = ? GROUP BY day ORDER BY day LIMIT 5 ',
          [collectionKey]).then((value) => null);
    }
    // var _database = await database();
    // await _database.insert('anwers', {
    //   'collectionKey': collectionKey,
    //   'cardKey': cardKey,
    //   'remember': remember,
    //   'date': _currentTimeInSeconds(),
    //   'day': _currentTimeInDays()
    // });

    return result;
  }

  Future<Database> database() async {
    var databasesPath = await getDatabasesPath();
    String path = [databasesPath, 'dictionary.db'].join();

    await deleteDatabase(path);

    var _database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE  IF NOT EXISTS anwers (collectionKey TEXT, cardKey TEXT, remember INTEGER, date INTEGER, day INTEGER)');
    });

    return _database;
  }

  Future<void> saveAnswer(
      {required String collectionKey,
      required String cardKey,
      required int remember}) async {
    var _database = await database();
    await _database.insert('anwers', {
      'collectionKey': collectionKey,
      'cardKey': cardKey,
      'remember': remember,
      'date': _currentTimeInSeconds(),
      'day': _currentTimeInDays()
    });
  }

  Future<void> getAnswers({
    required String collectionKey,
  }) async {
    print([
      'SQLLiteService',
      'getAnswers',
      collectionKey,
    ].join('-'));

    var _database = await database();
    _database.execute(
        'SELECT FROM (SELECT SUM(remember) as remember, SUM(1-remember) as forget, day FROM anwers WHERE collectionKey = ? GROUP BY day ORDER BY day LIMIT 5 ',
        [collectionKey]);
  }

  Future<void> updateProgressData(
      Map<String, List<AnswerData>> progressData) async {
    var _database = await database();
    List<int> days = [];

    for (var collectionKey in progressData.keys) {
      var progress = progressData[collectionKey] ?? [];

      days = progress.map((e) => e.day).toSet().toList();

      throw LocalExeption();

      /*
      await _database.insert('anwers', {
        'collectionKey': collectionKey,
        'cardKey': cardKey,
        'remember': remember,
        'date': _currentTimeInSeconds(),
        'day': _currentTimeInDays()
      });
      */
    }
  }
}
