import 'dart:async';

import 'package:dictionary/models/card.dart';
import 'package:dictionary/features/auth/data/repositories/authentication_repository.dart';
import 'package:dictionary/repository/dictionary_repository_embedded.dart';
import 'package:dictionary/services/sql_lite.dart';

class CardCollectionRepository {
  CardCollectionRepository(
      {required AuthenticationRepository authRepository,
      required SQLLiteService localSql})
      : _localSql = localSql;

  final SQLLiteService _localSql;
  String _collectionKey = '';

  Future<List<CardData>> readCollection(final String collectionKey) async {
    List<CardData> result = [];
    _collectionKey = collectionKey;
    var cardKeys = embeddedDictionaryesData(collectionKey);
    var cards = embeddedCards();
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
