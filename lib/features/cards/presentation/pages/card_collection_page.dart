import 'package:dictionary/features/cards/presentation/bloc/card_collection_bloc.dart';
import 'package:dictionary/features/cards/presentation/widgets/word_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/flutter_tindercard.dart';

class CardCollectionPage extends StatelessWidget {
  static const routeName = '/cardCollection';

  const CardCollectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //CardController _controller;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your dictionaryes'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.graphic_eq_rounded))
        ],
      ),
      body: BlocBuilder<CardCollectionBLoC, CardCollectionState>(
        builder: (context, state) {
          return Stack(
            children: [
              state.ready
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: TinderSwapCard(
                        animDuration: 150,
                        swipeUp: true,
                        swipeDown: true,
                        orientation: AmassOrientation.LEFT,
                        totalNum: state.data.length,
                        stackNum: 3,
                        swipeEdge: 5.0,
                        maxWidth: MediaQuery.of(context).size.width,
                        maxHeight: MediaQuery.of(context).size.height,
                        minWidth: MediaQuery.of(context).size.width * 0.7,
                        minHeight: MediaQuery.of(context).size.height * 0.7,
                        cardBuilder: (context, index) => Card(
                          child: WordCard(index),
                        ),
                        cardController: CardController(),
                        swipeUpdateCallback:
                            (DragUpdateDetails details, Alignment align) {},
                        swipeCompleteCallback:
                            (CardSwipeOrientation orientation, int index) {
                          if (index >= state.data.length) return;
                          var card = state.data[index];

                          /// Get orientation & index of swiped card!
                          if (orientation == CardSwipeOrientation.LEFT) {
                            BlocProvider.of<CardCollectionBLoC>(context).add(
                                CardCollectionEvent.swapLeft(
                                    cardKey: card.key));
                          }
                          if (orientation == CardSwipeOrientation.RIGHT) {
                            BlocProvider.of<CardCollectionBLoC>(context).add(
                                CardCollectionEvent.swapRight(
                                    cardKey: card.key));
                          }
                        },
                      ),
                    )
                  : const CircularProgressIndicator(),
              CardCollectionDaylyProgress(collectionID: state.collectionID)
            ],
          );
        },
      ),
    );
  }
}

class CardCollectionDaylyProgress extends StatelessWidget {
  const CardCollectionDaylyProgress({Key? key, required String collectionID})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
    ;
  }
}
