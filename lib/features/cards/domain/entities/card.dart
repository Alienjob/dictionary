import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';

@freezed
class CardData with _$CardData {
  const CardData._();

  const factory CardData.fromData(
      {required String key,
      required String question,
      required String answer,
      required String img,
      required String transcription,
      required String transcriptionAnswer}) = _Data;

  const factory CardData.empty() = _Empty;

  ///гетеры на поля
  String get key => map(fromData: (value) => value.key, empty: (_) => '');
  String get question =>
      map(fromData: (value) => value.question, empty: (_) => '');
  String get answer => map(fromData: (value) => value.answer, empty: (_) => '');
  String get img => map(fromData: (value) => value.img, empty: (_) => '');
  String get transcription =>
      map(fromData: (value) => value.transcription, empty: (_) => '');
  String get transcriptionAnswer =>
      map(fromData: (value) => value.transcriptionAnswer, empty: (_) => '');
}
