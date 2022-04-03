import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_image.freezed.dart';
part 'dictionary_image.g.dart';

enum DictionaryImagePathType { url, embedded }

@freezed
class DictionaryImage with _$DictionaryImage {
  DictionaryImage._();

  static DictionaryImagePathType typeFromString(name) {
    return DictionaryImagePathType.embedded;
  }

  String get path => when((path, pathType) => path, empty: () => '');
  DictionaryImagePathType get pathType => when((path, pathType) => pathType,
      empty: () => DictionaryImagePathType.embedded);

  factory DictionaryImage(
      {required String path,
      required DictionaryImagePathType pathType}) = _DictionaryImage;
  factory DictionaryImage.empty() = _Empty;

  factory DictionaryImage.fromJson(Map<String, dynamic> json) =>
      _$DictionaryImageFromJson(json);
}
