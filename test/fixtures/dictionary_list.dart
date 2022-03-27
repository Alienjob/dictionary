import 'package:dictionary/core/domain/entities/dictionary_image.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';

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

abstract class UserDictionaryListFixture {
  static List<UserDictionary> get two {
    return [
      UserDictionary(
        dictionary: Dictionary(
          key: '1',
          title: 'test 1',
          img: DictionaryImage(
            path: '',
            pathType: DictionaryImagePathType.embedded,
          ),
          description: '',
        ),
        progress: const UserDictionaryProgress(
          dailyProgress: [],
          newCards: 0,
          repeateCards: 0,
        ),
      ),
            UserDictionary(
        dictionary: Dictionary(
          key: '2',
          title: 'test 2',
          img: DictionaryImage(
            path: '',
            pathType: DictionaryImagePathType.embedded,
          ),
          description: '',
        ),
        progress: const UserDictionaryProgress(
          dailyProgress: [],
          newCards: 0,
          repeateCards: 0,
        ),
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
