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
          pathType: DictionaryImagePathType.embedded,
        ),
        description: '',
      ),
    ];
  }
}

abstract class UserDictionaryListFixture {
  static List<UserDictionary> get splash {
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

  static List<UserDictionary> get withProgress {
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
          dailyProgress: [UserDayProgress(progress: 1, day: 1)],
          newCards: 1,
          repeateCards: 1,
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
          dailyProgress: [UserDayProgress(progress: 2, day: 2)],
          newCards: 2,
          repeateCards: 2,
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
