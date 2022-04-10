import 'dart:async';

import 'package:dictionary/features/auth/data/repositories/authentication_repository.dart';
import 'package:dictionary/features/cards/domain/entities/card.dart';
import 'package:dictionary/services/embedded_data_service.dart';
import 'package:dictionary/services/local_sql/sql_data_api.dart';

class CardCollectionRepository {
  CardCollectionRepository(
      {required AuthenticationRepository authRepository,
      required this.embeddedDataService,
      required SQLDataAPI localSql})
      : _localSql = localSql;

  final SQLDataAPI _localSql;
  final EmbeddedDataService embeddedDataService;
  String _collectionKey = '';

  Future<List<CardData>> readCollection(final String collectionKey) async {
    List<CardData> result = [];
    _collectionKey = collectionKey;
    var cardKeys = embeddedDataService.embeddedDictionaryesData(_collectionKey);
    var cards = embeddedDataService.embeddedCards();
    for (var cardKey in cardKeys) {
      var card = cards[cardKey];
      if (card != null) {
        result.add(card);
      }
    }
    return result;
  }

  Future<void> saveRight(final String cardkey) async {
    _localSql.saveAnswer(
        collectionKey: _collectionKey, cardKey: cardkey, remember: 1);
  }

  Future<void> saveLeft(final String cardkey) async {
    _localSql.saveAnswer(
        collectionKey: _collectionKey, cardKey: cardkey, remember: 0);
  }
}
