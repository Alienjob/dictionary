import 'dart:io';

import 'package:dictionary/services/embedded_data_service.dart';
import 'package:dictionary/services/local_sql/sql_data_api.dart';
import 'package:drift/drift.dart';

import './sql_data_model.dart';
import './sql_dao.dart';

import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'sql_data_base.g.dart';

@DriftDatabase(tables: [
  Decks,
  DeckCards,
  Fakts,
  Cards,
  Imgs,
  Answers,
  Tasks
], daos: [
  DecksDao,
  CardsDao,
  FaktsDao,
  ImgsDao,
  DeckCardsDao,
  AnswersDao,
  TasksDao
])
class DictionaryDatabase extends _$DictionaryDatabase {
  DictionaryDatabase(this.embeddedDataService) : super(_openConnection());

  final EmbeddedDataService embeddedDataService;

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (migrator) async {
        await _populateDataFromEmbedded();
      },
    );
  }

  Future<void> _populateDataFromEmbedded() async {
    final api = SQLDataAPIImpl(db: this);

    final embeddedCards = embeddedDataService.embeddedCards();
    for (var card in embeddedCards.values) {
      api.saveCard(card);
    }

    final embeddedDictionaryes = embeddedDataService.embeddedDictionaryes();
    for (var dictionary in embeddedDictionaryes) {
      api.saveDictionary(dictionary);
      var embeddedDictionaryCardKeys =
          embeddedDataService.embeddedDictionaryesData(dictionary.key);
      for (var cardKey in embeddedDictionaryCardKeys) {
        api.addCardToDictionary(
            dictionaryKey: dictionary.key, cardKey: cardKey);
      }
    }
  }
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
