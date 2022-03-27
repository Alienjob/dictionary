import 'package:dictionary/models/dictionary_image.dart';

class Dictionary {
  final String key;
  final String title;
  final String description;
  final DictionaryImage img;

  Dictionary(
      {required this.key,
      required this.title,
      required this.img,
      required this.description});
}
