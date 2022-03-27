import 'package:equatable/equatable.dart';

enum UserCardResult { left, right }

class CardUserData extends Equatable {
  final String card;
  final bool isNew;
  final bool isLerned;
  final UserCardResult answer;

  const CardUserData({
    required this.card,
    required this.isNew,
    required this.isLerned,
    required this.answer,
  });

  const CardUserData.empty()
      : card = '',
        isNew = false,
        isLerned = false,
        answer = UserCardResult.left;

  CardUserData copy() {
    return CardUserData(
      card: card,
      isNew: isNew,
      isLerned: isLerned,
      answer: answer,
    );
  }

  @override
  List<Object> get props => [
        card,
        isNew,
        isLerned,
        answer,
      ];
}
