import 'package:drift/drift.dart';
import './sql_data_model.dart';
import './sql_data_base.dart';

part 'sql_dao.g.dart';

@DriftAccessor(tables: [Decks])
class DecksDao extends DatabaseAccessor<DictionaryDatabase>
    with _$DecksDaoMixin {
  DecksDao(DictionaryDatabase db) : super(db);

  Stream<List<Deck>> allDecks() {
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

  Stream<List<Card>> allCards() {
    return select(cards).watch();
  }

  Future<Card> getCard(key) async {
    return await (select(cards)
          ..where(
            (tbl) => tbl.key.equals(key),
          ))
        .getSingle();
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

  Stream<List<Fakt>> allFakts() {
    return select(fakts).watch();
  }

  Future<Fakt> getFakt(String key) async {
    return await (select(fakts)..where((t) => t.key.equals(key))).getSingle();
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

  Stream<List<Img>> allImgs() {
    return select(imgs).watch();
  }

  Future<Img> getImg(String key) {
    return (select(imgs)..where((tbl) => tbl.key.equals(key))).getSingle();
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

@DriftAccessor(tables: [DeckCards])
class DeckCardsDao extends DatabaseAccessor<DictionaryDatabase>
    with _$DeckCardsDaoMixin {
  DeckCardsDao(DictionaryDatabase db) : super(db);

  Stream<List<DeckCard>> allDeckCards() {
    return select(deckCards).watch();
  }

  Stream<List<DeckCard>> selectedDeckCards(deckKey) {
    return select(deckCards).watch();
  }

  Future<int> addDeckCard(DeckCardsCompanion entry) {
    return into(deckCards).insert(entry);
  }

  Future<void> updateDeckCard(DeckCardsCompanion entry) async {
    return update(deckCards).where((t) => t.key.equals(entry.key.value));
  }

  Future<void> deleteDeckCard(DeckCardsCompanion entry) async {
    return delete(deckCards).where((t) => t.key.equals(entry.key.value));
  }
}

@DriftAccessor(tables: [Answers])
class AnswersDao extends DatabaseAccessor<DictionaryDatabase>
    with _$AnswersDaoMixin {
  AnswersDao(DictionaryDatabase db) : super(db);

  Future<Answer> getAnswer(String key) {
    return (select(answers)..where((tbl) => tbl.key.equals(key))).getSingle();
  }

  Future<List<Answer>> getDailyRemember(int day) {
    return (select(answers)
          ..where((tbl) => tbl.day.equals(day) & tbl.remember.equals(1)))
        .get();
  }

  Future<bool> answerExist({required String cardKey}) async {
    var existingAnswer = await (select(answers)
          ..where((tbl) => tbl.card.equals(cardKey)))
        .getSingleOrNull();
    return existingAnswer != null;
  }

  Future<int> addAnswer(AnswersCompanion entry) {
    return into(answers).insert(entry);
  }
}

@DriftAccessor(tables: [Tasks])
class TasksDao extends DatabaseAccessor<DictionaryDatabase>
    with _$TasksDaoMixin {
  TasksDao(DictionaryDatabase db) : super(db);

  Future<Task> getTask(String key) {
    return (select(tasks)..where((tbl) => tbl.key.equals(key))).getSingle();
  }

  Future<Task?> getTaskByCard(String cardKey) {
    return (select(tasks)
          ..where((tbl) => tbl.card.equals(cardKey) & tbl.done.equals(0)))
        .getSingleOrNull();
  }

  Future<List<Task>> getDeckNew(String deck) {
    return (select(tasks)
          ..where((tbl) =>
              tbl.deck.equals(deck) & tbl.type.equals(1) & tbl.done.equals(0)))
        .get();
  }

  Future<List<Task>> getDeckRepeate(String deck) {
    return (select(tasks)
          ..where((tbl) =>
              tbl.deck.equals(deck) & tbl.type.equals(2) & tbl.done.equals(0)))
        .get();
  }

  Future<int> addTask(TasksCompanion entry) {
    return into(tasks).insert(entry);
  }

  Future<void> doneTask(String key) async {
    (update(tasks)..where((tbl) => tbl.key.equals(key)))
        .write(const TasksCompanion(
      done: Value(1),
    ));
  }
}
