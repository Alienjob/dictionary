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
}

class SQLDataAPIImpl implements SQLDataAPI {
  final DictionaryDatabase db;
  final uuid = const Uuid();

  SQLDataAPIImpl({required this.db});

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
      pathType: DictionaryImagePathType.embedded.toString(),
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
  Future<void> saveDictionary(Dictionary dictionary) {
    // TODO: implement saveDictionary
    throw UnimplementedError();
  }

  @override
  Future<void> addCardToDictionary(
      {required String dictionaryKey, required String cardKey}) {
    // TODO: implement saveCardToDictionary
    throw UnimplementedError();
  }
}
