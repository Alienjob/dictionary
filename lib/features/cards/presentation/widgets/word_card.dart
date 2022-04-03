import 'package:dictionary/features/cards/presentation/bloc/card_collection_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WordCard extends StatefulWidget {
  final int index;

  const WordCard(this.index, {Key? key}) : super(key: key);

  @override
  State<WordCard> createState() => _WordCardState();
}

class _WordCardState extends State<WordCard> {
  Map<int, bool> answerIsVisible = {};

  void showAnswer(_index) {
    setState(() {
      answerIsVisible[_index] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Expanded(
          child: SizedBox(
            width: 500,
            height: 300,
            child: Card(
              elevation: 10,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: BlocBuilder<CardCollectionBLoC, CardCollectionState>(
                    builder: (context, state) {
                  if (widget.index >= state.data.length) return _buildCircle();
                  var data = state.data[widget.index];
                  var _answerIsVisible = answerIsVisible[widget.index] ?? false;
                  return state.ready
                      ? Column(
                          children: [
                            _buildQuestion(data.question, context),
                            _buildContext(data.transcription),
                            _answerIsVisible
                                ? SizedBox(
                                    width: 200,
                                    height: 200,
                                    child: Image.asset(data.img),
                                  )
                                : const Spacer(),
                            const Spacer(),
                            _buildAnswer(
                              data.answer,
                              _answerIsVisible,
                              widget.index,
                              showAnswer,
                            ),
                          ],
                        )
                      : _buildCircle();
                }),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildQuestion(String text, BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
              elevation: 10,
              color: Theme.of(context).colorScheme.secondary,
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 40),
                  textAlign: TextAlign.center,
                ),
              )),
        ),
      ],
    );
  }

  Widget _buildContext(String text) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAnswer(
      String text, bool visible, int index, Function showAnswerHandler) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTapUp: (TapUpDetails tap) => showAnswerHandler(index),
            child: SizedBox(
              height: 200,
              child: visible
                  ? Scrollbar(
                      thumbVisibility: true,
                      child: SingleChildScrollView(
                        child: Text(
                          text,
                          style: const TextStyle(fontSize: 40),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  : const Text(
                      "Touch to show answer",
                      style: TextStyle(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCircle() {
    return Center(
      child: SizedBox(
        height: 100,
        width: 100,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.amber,
          ),
          child: const Icon(
            Icons.timelapse,
            size: 50,
          ),
        ),
      ),
    );
  }
}
