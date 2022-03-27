class DictionaryUserProgress {
  final String key;
  final String dictionaryKey;

  final int progressPercent;
  final int newCards;
  final int repeateCards;

  const DictionaryUserProgress.empty()
      : key = '',
        dictionaryKey = '',
        newCards = 0,
        repeateCards = 0,
        progressPercent = 0;

  DictionaryUserProgress(
      {required this.key,
      required this.dictionaryKey,
      required this.progressPercent,
      required this.repeateCards,
      required this.newCards});
}
