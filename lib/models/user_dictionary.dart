import 'package:dictionary/models/dictionary_image.dart';

class UserDictionary {
  final String key;
  final String title;
  final String description;
  final DictionaryImage img;

  final int progressPercent;
  final int newCards;
  final int repeateCards;

  UserDictionary.empty()
      : key = '',
        title = '',
        img = DictionaryImage.empty(),
        description = '',
        newCards = 0,
        repeateCards = 0,
        progressPercent = 0;

  const UserDictionary({
    required this.key,
    required this.title,
    required this.img,
    required this.description,
    required this.progressPercent,
    required this.newCards,
    required this.repeateCards,
  });
}
