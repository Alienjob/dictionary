// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:dictionary/features/cards/domain/entities/card.dart';
import 'package:dictionary/core/domain/entities/dictionary_image.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import './sql_data_base.dart';
import 'package:uuid/uuid.dart';

abstract class SQLDataAPI {
  Future<void> saveCard(CardData card);
  Future<void> saveDictionary(Dictionary dictionary);
  Future<void> addCardToDictionary(
      {required String dictionaryKey, required String cardKey});
  Future<void> readDictionaryCards(Dictionary dictionary);
}

class SQLDataAPIImpl implements SQLDataAPI {
  final DictionaryDatabase db;
  final uuid = const Uuid();

  final _dictionaryController = StreamController<List<Dictionary>>();
  final _cardController = StreamController<List<CardData>>();

  Stream<List<Dictionary>> get dictionaryes async* {
    yield [];
    yield* _dictionaryController.stream;
  }

  Stream<List<CardData>> get cards async* {
    yield [];
    yield* _cardController.stream;
  }

  late Stream<List<Dictionary>> dictionaryStream;

  bool dictionarySelected = false;
  late Stream<List<CardData>> cardStream;

  SQLDataAPIImpl({required this.db}) {
    db.decksDao.allDecks().listen((deckList) async {
      _dictionaryController.add(await _DeckListToDictionaryList(deckList));
    });
  }

  @override
  Future<void> saveCard(CardData card) async {
    var _question = FaktsCompanion.insert(
      key: uuid.v4(),
      category: 'word',
      data: card.question,
      additional: card.transcription,
    );
    var _answer = FaktsCompanion.insert(
      key: uuid.v4(),
      category: 'word',
      data: card.answer,
      additional: card.transcriptionAnswer,
    );
    var _img = ImgsCompanion.insert(
      key: uuid.v4(),
      // path: dCard.img.path,
      // pathType: dCard.img.pathType,
      path: card.img,
      pathType: DictionaryImagePathType.embedded.index,
    );
    var _card = CardsCompanion.insert(
      key: card.key,
      question: _question.key.value,
      answer: _answer.key.value,
      img: _img.key.value,
    );

    db.faktsDao.addFakt(_question);
    db.faktsDao.addFakt(_answer);
    db.imgsDao.addImg(_img);
    db.cardsDao.addCard(_card);
  }

  @override
  Future<void> saveDictionary(Dictionary dictionary) async {
    var _img = ImgsCompanion.insert(
      key: uuid.v4(),
      path: dictionary.img.path,
      pathType: dictionary.img.pathType.index,
    );

    var _deck = DecksCompanion.insert(
      key: uuid.v4(),
      description: dictionary.description,
      img: _img.key.value,
      title: dictionary.title,
    );
    db.imgsDao.addImg(_img);
    db.decksDao.addDeck(_deck);
  }

  @override
  Future<void> readDictionaryCards(Dictionary dictionary) async {
    db.deckCardsDao
        .selectedDeckCards(dictionary.key)
        .listen((deckCardList) async {
      _cardController
          .add(await _DeckCardList_to_DictionaryCardList(deckCardList));
    });
    dictionarySelected = true;

    var _img = ImgsCompanion.insert(
      key: uuid.v4(),
      path: dictionary.img.path,
      pathType: dictionary.img.pathType.index,
    );

    var _deck = DecksCompanion.insert(
      key: uuid.v4(),
      description: dictionary.description,
      img: _img.key.value,
      title: dictionary.title,
    );
    db.imgsDao.addImg(_img);
    db.decksDao.addDeck(_deck);
  }

  @override
  Future<void> addCardToDictionary(
      {required String dictionaryKey, required String cardKey}) async {
    db.deckCardsDao.addDeckCard(DeckCardsCompanion.insert(
      key: uuid.v4(),
      deck: dictionaryKey,
      card: cardKey,
    ));
  }

  Future<List<Dictionary>> _DeckListToDictionaryList(List<Deck> decks) async {
    List<Dictionary> result = [];
    for (var deck in decks) {
      var _img = await db.imgsDao.getImg(deck.img);
      result.add(Dictionary(
          key: deck.key,
          title: deck.title,
          description: deck.description,
          img: DictionaryImage(
            path: _img.path,
            pathType: DictionaryImagePathType.values[_img.pathType],
          )));
    }
    return result;
  }

  Future<List<CardData>> _DeckCardList_to_DictionaryCardList(
      List<DeckCard> deckCards) async {
    List<CardData> result = [];
    for (var deckCard in deckCards) {
      final _card = await db.cardsDao.getCard(deckCard.card);

      result.add(await _Card_to_CardData(_card));
    }
    return result;
  }

  Future<CardData> _Card_to_CardData(Card card) async {
    final _question = await db.faktsDao.getFakt(card.question);
    final _answer = await db.faktsDao.getFakt(card.answer);
    final _img = await db.imgsDao.getImg(card.img);

    final _cardData = CardData.fromData(
      key: card.key,
      question: _question.data,
      transcription: _question.additional,
      answer: _answer.data,
      img: _Img_to_DictionaryImage(_img).path,
      transcriptionAnswer: _answer.additional,
    );
    return _cardData;
  }

  DictionaryImage _Img_to_DictionaryImage(Img img) {
    return DictionaryImage(
        path: img.path, pathType: DictionaryImagePathType.values[img.pathType]);
  }
}
