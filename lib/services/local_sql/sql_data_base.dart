import 'package:dictionary/services/embedded_data_service.dart';
import 'package:dictionary/services/local_sql/sql_data_api.dart';
import 'package:drift/drift.dart';

import './sql_data_model.dart';
import './sql_dao.dart';

part 'sql_data_base.g.dart';

@DriftDatabase(
    tables: [Decks, DeckFakts, Fakts, Cards, Imgs],
    daos: [DecksDao, CardsDao, FaktsDao, ImgsDao, DeckFaktsDao])
class DictionaryDatabase extends _$DictionaryDatabase {
  DictionaryDatabase(QueryExecutor e, this.embeddedDataService) : super(e);

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
