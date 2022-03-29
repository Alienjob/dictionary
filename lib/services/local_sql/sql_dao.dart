import 'package:drift/drift.dart';
import './sql_data_model.dart';
import './sql_data_base.dart';

import 'package:dictionary/core/domain/entities/dictionary_image.dart';

part 'sql_dao.g.dart';

@DriftAccessor(tables: [Decks])
class DecksDao extends DatabaseAccessor<DictionaryDatabase>
    with _$DecksDaoMixin {
  DecksDao(DictionaryDatabase db) : super(db);

  Stream<List<Deck>>? allDecks() {
    return select(decks).watch();
  }

  Future<int> addDeck(DecksCompanion entry) {
    return into(decks).insert(entry);
  }

  Future<void> updateDeck(DecksCompanion entry) async {
    return update(decks).where((t) => t.key.equals(entry.key.value));
  }

  Future<void> deleteDeck(DecksCompanion entry) async {
    return delete(decks).where((t) => t.key.equals(entry.key.value));
  }
}

@DriftAccessor(tables: [Cards])
class CardsDao extends DatabaseAccessor<DictionaryDatabase>
    with _$CardsDaoMixin {
  CardsDao(DictionaryDatabase db) : super(db);

  Stream<List<Card>>? allCards() {
    return select(cards).watch();
  }

  Future<int> addCard(CardsCompanion entry) {
    return into(cards).insert(entry);
  }

  Future<void> updateCard(CardsCompanion entry) async {
    return update(cards).where((t) => t.key.equals(entry.key.value));
  }

  Future<void> deleteCard(CardsCompanion entry) async {
    return delete(cards).where((t) => t.key.equals(entry.key.value));
  }
}

@DriftAccessor(tables: [Fakts])
class FaktsDao extends DatabaseAccessor<DictionaryDatabase>
    with _$FaktsDaoMixin {
  FaktsDao(DictionaryDatabase db) : super(db);

  Stream<List<Fakt>>? allFakts() {
    return select(fakts).watch();
  }

  Future<int> addFakt(FaktsCompanion entry) {
    return into(fakts).insert(entry);
  }

  Future<void> updateFakt(FaktsCompanion entry) async {
    return update(fakts).where((t) => t.key.equals(entry.key.value));
  }

  Future<void> deleteFakt(FaktsCompanion entry) async {
    return delete(fakts).where((t) => t.key.equals(entry.key.value));
  }
}

@DriftAccessor(tables: [Imgs])
class ImgsDao extends DatabaseAccessor<DictionaryDatabase> with _$ImgsDaoMixin {
  ImgsDao(DictionaryDatabase db) : super(db);

  Stream<List<Img>>? allImgs() {
    return select(imgs).watch();
  }

  Future<int> addImg(ImgsCompanion entry) {
    return into(imgs).insert(entry);
  }

  Future<void> updateImg(ImgsCompanion entry) async {
    return update(imgs).where((t) => t.key.equals(entry.key.value));
  }

  Future<void> deleteImg(ImgsCompanion entry) async {
    return delete(imgs).where((t) => t.key.equals(entry.key.value));
  }
}

@DriftAccessor(tables: [DeckFakts])
class DeckFaktsDao extends DatabaseAccessor<DictionaryDatabase>
    with _$DeckFaktsDaoMixin {
  DeckFaktsDao(DictionaryDatabase db) : super(db);

  Stream<List<DeckFakt>>? allDeckFakts() {
    return select(deckFakts).watch();
  }

  Future<int> addDeckFakt(DeckFaktsCompanion entry) {
    return into(deckFakts).insert(entry);
  }

  Future<void> updateDeckFakt(DeckFaktsCompanion entry) async {
    return update(deckFakts).where((t) => t.key.equals(entry.key.value));
  }

  Future<void> deleteDeckFakt(DeckFaktsCompanion entry) async {
    return delete(deckFakts).where((t) => t.key.equals(entry.key.value));
  }
}
