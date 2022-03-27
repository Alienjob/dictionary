import 'package:dictionary/bloc/card_collection_bloc.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import 'package:dictionary/features/dictionary/presentation/bloc/dictionary_collection_bloc.dart';
import 'package:dictionary/pages/card_collection_page.dart';
import 'package:dictionary/wigets/dinamic_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DictionaryListPage extends StatelessWidget {
  static const routeName = '/dictionaryList';

  const DictionaryListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double imgWidth = MediaQuery.of(context).size.width;
    const double imgHeight = 200;
    const double taleHeight = 320;
    final double taleWidth = imgWidth;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your dictionaryes'),
      ),
      body: BlocBuilder<DictionaryCollectionBLoC, DictionaryCollectionState>(
        builder: (context, state) {
          if (state == const DictionaryCollectionState.error() ) {
            return const CircularProgressIndicator();
          } 
          if (state == const DictionaryCollectionState.fetching() ) {
            return const CircularProgressIndicator();
          } 
          final list = state.data.userDictionaryList;
          return ListView.builder(
              itemCount: list.length,
              itemBuilder: (_, index) {
                var userDictionary = list[index];
                return Column(children: [
                  DictionaryTale(
                    taleHeight: taleHeight,
                    taleWidth: taleWidth,
                    dictionary: userDictionary.dictionary,
                    imgHeight: imgHeight,
                    imgWidth: imgWidth,
                  ),
                  if (index != list.length - 1) const Divider(),
                ]);
              });
        },
      ),
    );
  }
}

class DictionaryTale extends StatelessWidget {
  const DictionaryTale({
    Key? key,
    required this.taleHeight,
    required this.taleWidth,
    required this.dictionary,
    required this.imgHeight,
    required this.imgWidth,
  }) : super(key: key);

  final double taleHeight;
  final double taleWidth;
  final Dictionary dictionary;
  final double imgHeight;
  final double imgWidth;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Card(
        child: ClipRRect(
          child: SizedBox(
            //color: Colors.yellow,
            height: taleHeight,
            width: taleWidth,
            child: Column(children: [
              DictionaryHeader(
                  dictionary: dictionary,
                  imgHeight: imgHeight,
                  imgWidth: imgWidth),
              DictionaryProgress(dictionary: dictionary),
              DictionaryFooter(dictionary: dictionary),
            ]),
          ),
        ),
      ),
    );
  }
}

class DictionaryHeader extends StatelessWidget {
  const DictionaryHeader({
    Key? key,
    required this.dictionary,
    required this.imgHeight,
    required this.imgWidth,
  }) : super(key: key);

  final Dictionary dictionary;
  final double imgHeight;
  final double imgWidth;

  @override
  Widget build(BuildContext context) {
    var img = dictionary.img;
    return Stack(
      children: [
        DynamicImage(img: img, imgHeight: imgHeight, imgWidth: imgWidth),
        SizedBox(
            height: imgHeight,
            width: imgWidth,
            child: Column(
              children: [
                const Spacer(),
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color.fromARGB(0, 0, 0, 0),
                        Colors.black45,
                        Colors.black54
                      ])),
                  height: 60,
                ),
              ],
            )),
        SizedBox(
            height: imgHeight,
            width: imgWidth,
            child: Column(
              children: [
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    dictionary.title,
                    style: const TextStyle(color: Colors.white, fontSize: 24),
                  ),
                )
              ],
            )),
      ],
    );
  }
}

class DictionaryProgress extends StatelessWidget {
  const DictionaryProgress({
    Key? key,
    required this.dictionary,
  }) : super(key: key);

  final Dictionary dictionary;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: LinearPercentIndicator(
        width: MediaQuery.of(context).size.width - 50,
        animation: true,
        lineHeight: 20.0,
        animationDuration: 1000,
        percent: 0.9,
        center: const Text("90.0%"),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: Colors.greenAccent,
      ),
    );
  }
}

class DictionaryFooter extends StatelessWidget {
  const DictionaryFooter({
    Key? key,
    required this.dictionary,
  }) : super(key: key);

  final Dictionary dictionary;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(5),
      child: Row(children: [
        ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).pushNamed(CardCollectionPage.routeName);
            BlocProvider.of<CardCollectionBLoC>(context).add(
                CardCollectionEvent.selectCollection(
                    collectionKey: dictionary.key));
          },
          icon: const Icon(
            Icons.play_arrow,
            size: 40,
          ),
          label: const Text('START'),
        ),
      ]),
    );
  }
}
