import 'package:dictionary/features/cards/domain/entities/card.dart';
import 'package:dictionary/features/cards/domain/entities/user_card.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
class ModelWordCard extends Equatable {
  final CardData _data;
  final CardUserData _userdata;
  final bool answerIsVisible = false;

  const ModelWordCard({required CardData data, required CardUserData userdata})
      : _data = data,
        _userdata = userdata;

  const ModelWordCard.empty()
      : _data = const CardData.empty(),
        _userdata = const CardUserData.empty();

  ModelWordCard copy() {
    return ModelWordCard(data: _data, userdata: _userdata.copy());
  }

  String get key => _data.key;
  String get question => _data.question;
  String get answer => _data.answer;
  String get img => _data.img;
  String get transcription => _data.transcription;
  String get transcriptionAnswer => _data.transcriptionAnswer;

  @override
  List<Object> get props => [_data, _userdata];
}
