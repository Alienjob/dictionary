import 'package:dictionary/models/card.dart';
import 'package:dictionary/models/dictionary.dart';
import 'package:dictionary/models/dictionary_image.dart';

List<Dictionary> embeddedDictionaryes() {
  List<Dictionary> result = [];

  result.add(
    Dictionary(
      key: 'dba4a854-1305-11eb-adc1-0242ac120002',
      title: 'Review app functions',
      description: 'Review app functions',
      img: DictionaryImage(
        path: "lib/assets/images/hello/logo.png",
        pathType: DictionaryImagePathType.embedded,
      ),
    ),
  );

  result.add(
    Dictionary(
      key: '6ff8a820-1306-11eb-adc1-0242ac120002',
      title: 'Base alphabet word',
      description: 'Popular words with awersome illustrations',
      img: DictionaryImage(
        path: 'lib/assets/images/alphabet_words/logo.png',
        pathType: DictionaryImagePathType.embedded,
      ),
    ),
  );

  result.add(
    Dictionary(
      key: '6ff8a820-1306-11eb-adc1-0242ac120002',
      title: 'Base alphabet word',
      description: 'Popular words with awersome illustrations',
      img: DictionaryImage(
        path: 'lib/assets/images/alphabet_words/logo.png',
        pathType: DictionaryImagePathType.embedded,
      ),
    ),
  );

  result.add(
    Dictionary(
      key: '6ff8a820-1306-11eb-adc1-0242ac120002',
      title: 'Base alphabet word',
      description: 'Popular words with awersome illustrations',
      img: DictionaryImage(
        path: 'lib/assets/images/alphabet_words/logo.png',
        pathType: DictionaryImagePathType.embedded,
      ),
    ),
  );

  return result;
}

List<String> embeddedDictionaryesData(String key) {
  List<String> result = [];

  if (key == 'dba4a854-1305-11eb-adc1-0242ac120002') {
    result.add("4095b77c-adad-4977-9420-63716377fd48");
    result.add("1fc0e0c7-76b7-46fa-8765-acf2395da648");
    result.add("3e6dd6d0-a75d-43bd-adf8-ffa262800705");
  }

  if (key == '6ff8a820-1306-11eb-adc1-0242ac120002') {
    result.add("fb2087c7-9ee1-4b22-901a-7718f1535d59");
    result.add("0abaed4e-ee22-439d-b005-810c4a91ccb4");
    result.add("1d403605-5623-4b0a-8099-3a633b551058");
    result.add("147af2fe-cf53-4207-93d8-ffc87405d51e");
    result.add("74c03f80-29a8-4de9-a673-b28ac66db49f");
    result.add("77e335f5-e290-4ffa-8c86-005bd20a20bc");
    result.add('814126b8-a21e-4395-9cb4-8cde76d53227');
    result.add("8f09f112-ba25-47e2-82aa-c085dc9dc98d");
    result.add("83d1fcf4-b255-4e06-8521-1ef796168cc6");
    result.add("88e97203-46bc-4347-9513-5bb7641a1965");
    result.add("4486e2cf-87a3-404b-af01-68945abe1642");
    result.add("69f3d65f-3272-46d2-a2d9-37002a2b9fae");
    result.add("0a09d3b9-98f5-4397-81af-f53b0394daee");
    result.add("0a564274-6aae-496a-b83c-84c38bffc50a");
    result.add("3d76cda6-2a0b-4f19-95b3-18a911d12a3d");
    result.add("c1a5e408-9ec9-11ec-b909-0242ac120002");
    result.add("f9addcd5-ac2c-4856-8491-431dca28fb8f");
    result.add("153ffe12-c5b1-49c6-a7d6-fc3993855f37");
    result.add("b487e690-1847-4b2d-981d-4873abb35d81");
    result.add("7b74ef7c-df76-459c-acf3-00a97da2e669");
    result.add("ac79eada-d3dc-49d2-a3b1-23bb8ea36843");
    result.add("22d29c0a-672c-4a4a-95a8-16b2fee8a379");
    result.add("ac530aed-d45f-4a45-83f2-50de59b94cbc");
    result.add("d1cf7265-42e9-41a1-9011-3147bcd6ebf7");
    result.add("03a57253-da7c-4e01-af07-9596c999f448");
    result.add("f004354c-afe9-4785-8ec6-01e817d539a1");
    result.add("f248ede1-b126-4338-9eb1-11b39ad11213");
    result.add("a7fc2ac2-5eae-4423-b888-6d812aa9517b");
    result.add("8b940dbf-a940-4c42-8e0a-9fbe93cca179");
    result.add("6e0652a5-647e-4dc1-a7c0-914457324c29");
    result.add("5901c2d8-60f0-4c08-88cb-b975b4aa21f2");
    result.add("9bd27248-6701-4e7d-97ff-d1a6805c4bf3");
    result.add("d3dd3173-c9f4-4c40-941c-405c05a31b38");
    result.add("50c8019b-05d2-4e53-b28c-56c6620e557b");
    result.add("805a6e6c-dcd8-4ef8-9463-92c08c1f4dfb");
  }

  return result;
}

Map<String, CardData> embeddedCards() {
  Map<String, CardData> data = {};

  // hello

  String key = "4095b77c-adad-4977-9420-63716377fd48";
  data[key] = CardData.fromData(
    key: key,
    question: "Hello!",
    context: "It is your first start app",
    answer: "Смахните карту",
    img: "lib/assets/images/hello/hello.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "1fc0e0c7-76b7-46fa-8765-acf2395da648";
  data[key] = CardData.fromData(
    key: key,
    question: "Know",
    context: "If you know answer for the question, swipe right",
    answer: "Если вы знали ответ - смахните вправо",
    img: "lib/assets/images/hello/right.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "3e6dd6d0-a75d-43bd-adf8-ffa262800705";
  data[key] = CardData.fromData(
    key: key,
    question: "Don't know",
    context: "If you don't know or forget - see answer and swipe left",
    answer: "Если вы не знали ответ или забыли - смахните влево",
    img: "lib/assets/images/hello/left.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  // alphabet

  key = "fb2087c7-9ee1-4b22-901a-7718f1535d59";
  data[key] = CardData.fromData(
    key: key,
    question: "airplane",
    context: "ˈeəpleɪn",
    answer: "аэроплан",
    img: "lib/assets/images/alphabet_words/0.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "0abaed4e-ee22-439d-b005-810c4a91ccb4";
  data[key] = CardData.fromData(
    key: key,
    question: "apple",
    context: "ˈæp(ə)l",
    answer: "яблоко",
    img: "lib/assets/images/alphabet_words/1.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "1d403605-5623-4b0a-8099-3a633b551058";
  data[key] = CardData.fromData(
    key: key,
    question: "bee",
    context: "biː",
    answer: "пчела",
    img: "lib/assets/images/alphabet_words/2.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "147af2fe-cf53-4207-93d8-ffc87405d51e";
  data[key] = CardData.fromData(
    key: key,
    question: "bike",
    context: "baɪk",
    answer: "велосипед",
    img: "lib/assets/images/alphabet_words/3.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "74c03f80-29a8-4de9-a673-b28ac66db49f";
  data[key] = CardData.fromData(
    key: key,
    question: "cat",
    context: "kæt",
    answer: "кот",
    img: "lib/assets/images/alphabet_words/4.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "77e335f5-e290-4ffa-8c86-005bd20a20bc";
  data[key] = CardData.fromData(
    key: key,
    question: "dog",
    context: "dɒɡ",
    answer: "собака",
    img: "lib/assets/images/alphabet_words/5.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "814126b8-a21e-4395-9cb4-8cde76d53227";
  data[key] = CardData.fromData(
    key: key,
    question: "ears",
    context: "ɪəz",
    answer: "уши",
    img: "lib/assets/images/alphabet_words/6.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "8f09f112-ba25-47e2-82aa-c085dc9dc98d";
  data[key] = CardData.fromData(
    key: key,
    question: "egg",
    context: "eɡ",
    answer: "яйцо",
    img: "lib/assets/images/alphabet_words/7.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "83d1fcf4-b255-4e06-8521-1ef796168cc6";
  data[key] = CardData.fromData(
    key: key,
    question: "fork",
    context: "fɔːk",
    answer: "вилка",
    img: "lib/assets/images/alphabet_words/8.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "88e97203-46bc-4347-9513-5bb7641a1965";
  data[key] = CardData.fromData(
    key: key,
    question: "green",
    context: "ɡriːn",
    answer: "зеленый",
    img: "lib/assets/images/alphabet_words/9.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "4486e2cf-87a3-404b-af01-68945abe1642";
  data[key] = CardData.fromData(
    key: key,
    question: "giraffe",
    context: "dʒɪˈrɑːf",
    answer: "жираф",
    img: "lib/assets/images/alphabet_words/10.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "69f3d65f-3272-46d2-a2d9-37002a2b9fae";
  data[key] = CardData.fromData(
    key: key,
    question: "hair",
    context: "heə",
    answer: "волосы",
    img: "lib/assets/images/alphabet_words/11.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "0a09d3b9-98f5-4397-81af-f53b0394daee";
  data[key] = CardData.fromData(
    key: key,
    question: "ice cream",
    context: "aɪs kriːm",
    answer: "мороженное",
    img: "lib/assets/images/alphabet_words/12.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "0a564274-6aae-496a-b83c-84c38bffc50a";
  data[key] = CardData.fromData(
    key: key,
    question: "igloo",
    context: "ˈɪɡluː",
    answer: "иглу",
    img: "lib/assets/images/alphabet_words/13.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "3d76cda6-2a0b-4f19-95b3-18a911d12a3d";
  data[key] = CardData.fromData(
    key: key,
    question: "juice",
    context: "...",
    answer: "сок",
    img: "lib/assets/images/alphabet_words/14.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "c1a5e408-9ec9-11ec-b909-0242ac120002";
  data[key] = CardData.fromData(
    key: key,
    question: "key",
    context: "dʒuːs",
    answer: "ключ",
    img: "lib/assets/images/alphabet_words/15.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "f9addcd5-ac2c-4856-8491-431dca28fb8f";
  data[key] = CardData.fromData(
    key: key,
    question: "light",
    context: "laɪt",
    answer: "свет",
    img: "lib/assets/images/alphabet_words/16.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "153ffe12-c5b1-49c6-a7d6-fc3993855f37";
  data[key] = CardData.fromData(
    key: key,
    question: "monkey",
    context: "ˈmʌŋkɪ",
    answer: "обезьяна",
    img: "lib/assets/images/alphabet_words/17.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "b487e690-1847-4b2d-981d-4873abb35d81";
  data[key] = CardData.fromData(
    key: key,
    question: "mom",
    context: "mɒm",
    answer: "мама",
    img: "lib/assets/images/alphabet_words/18.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "7b74ef7c-df76-459c-acf3-00a97da2e669";
  data[key] = CardData.fromData(
    key: key,
    question: "noodles",
    context: "ˈnuːdəlz",
    answer: "лапша",
    img: "lib/assets/images/alphabet_words/19.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "ac79eada-d3dc-49d2-a3b1-23bb8ea36843";
  data[key] = CardData.fromData(
    key: key,
    question: "orange",
    context: "ˈɒrɪn(d)ʒ",
    answer: "апельсин",
    img: "lib/assets/images/alphabet_words/20.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "22d29c0a-672c-4a4a-95a8-16b2fee8a379";
  data[key] = CardData.fromData(
    key: key,
    question: "octopus",
    context: "ˈɒktəpəs",
    answer: "осьминог",
    img: "lib/assets/images/alphabet_words/22.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "ac530aed-d45f-4a45-83f2-50de59b94cbc";
  data[key] = CardData.fromData(
    key: key,
    question: "peach",
    context: "piːtʃ",
    answer: "персик",
    img: "lib/assets/images/alphabet_words/21.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "d1cf7265-42e9-41a1-9011-3147bcd6ebf7";
  data[key] = CardData.fromData(
    key: key,
    question: "rain",
    context: "reɪn",
    answer: "дождь",
    img: "lib/assets/images/alphabet_words/23.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "03a57253-da7c-4e01-af07-9596c999f448";
  data[key] = CardData.fromData(
    key: key,
    question: "question",
    context: "ˈkwestʃ(ə)n",
    answer: "вопрос",
    img: "lib/assets/images/alphabet_words/24.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "f004354c-afe9-4785-8ec6-01e817d539a1";
  data[key] = CardData.fromData(
    key: key,
    question: "sun",
    context: "sʌn",
    answer: "солнце",
    img: "lib/assets/images/alphabet_words/25.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "f248ede1-b126-4338-9eb1-11b39ad11213";
  data[key] = CardData.fromData(
    key: key,
    question: "tea",
    context: "tiː",
    answer: "чай",
    img: "lib/assets/images/alphabet_words/27.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "a7fc2ac2-5eae-4423-b888-6d812aa9517b";
  data[key] = CardData.fromData(
    key: key,
    question: "umbrella",
    context: "ʌmˈbrelə",
    answer: "зонт",
    img: "lib/assets/images/alphabet_words/26.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "8b940dbf-a940-4c42-8e0a-9fbe93cca179";
  data[key] = CardData.fromData(
    key: key,
    question: "uniforms",
    context: "ˈjuːnɪfɔːmz",
    answer: "униформа",
    img: "lib/assets/images/alphabet_words/28.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "6e0652a5-647e-4dc1-a7c0-914457324c29";
  data[key] = CardData.fromData(
    key: key,
    question: "vacuum",
    context: "ˈvækjʊəm",
    answer: "пылесос",
    img: "lib/assets/images/alphabet_words/29.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "1922a1b4-8146-4388-a38d-754bb97e6ce1";
  data[key] = CardData.fromData(
    key: key,
    question: "whistle",
    context: "ˈwɪs(ə)l",
    answer: "свисток",
    img: "lib/assets/images/alphabet_words/31.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "5901c2d8-60f0-4c08-88cb-b975b4aa21f2";
  data[key] = CardData.fromData(
    key: key,
    question: "box",
    context: "bɒks",
    answer: "коробка",
    img: "lib/assets/images/alphabet_words/30.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "9bd27248-6701-4e7d-97ff-d1a6805c4bf3";
  data[key] = CardData.fromData(
    key: key,
    question: "yarn",
    context: "jɑːn",
    answer: "пряжа",
    img: "lib/assets/images/alphabet_words/33.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "d3dd3173-c9f4-4c40-941c-405c05a31b38";
  data[key] = CardData.fromData(
    key: key,
    question: "sky",
    context: "skaɪ",
    answer: "небо",
    img: "lib/assets/images/alphabet_words/32.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "50c8019b-05d2-4e53-b28c-56c6620e557b";
  data[key] = CardData.fromData(
    key: key,
    question: "zipper",
    context: "ˈzɪpə",
    answer: "молния",
    img: "lib/assets/images/alphabet_words/35.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  key = "805a6e6c-dcd8-4ef8-9463-92c08c1f4dfb";
  data[key] = CardData.fromData(
    key: key,
    question: "zebra",
    context: "ˈzebrə",
    answer: "зебра",
    img: "lib/assets/images/alphabet_words/34.png",
    transcription: "",
    transcriptionAnswer: "",
  );

  return data;
}
