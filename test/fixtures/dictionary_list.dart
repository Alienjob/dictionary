import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import 'package:dictionary/models/dictionary_image.dart';

abstract class DictionaryListFixture {
  static List<Dictionary> get two {
    return [
      Dictionary(
        key: '1',
        title: 'test 1',
        img: DictionaryImage(
          path: '',
          pathType: DictionaryImagePathType.embedded,
        ),
        description: '',
      ),
      Dictionary(
        key: '2',
        title: 'test 2',
        img: DictionaryImage(
          path: '',
          pathType: DictionaryImagePathType.url,
        ),
        description: '',
      ),
    ];
  }
}

abstract class DictionaryFixture {
  static Dictionary get empty {
    return Dictionary(
      key: '1',
      title: 'test 1',
      img: DictionaryImage(
        path: '',
        pathType: DictionaryImagePathType.embedded,
      ),
      description: '',
    );
  }
}
