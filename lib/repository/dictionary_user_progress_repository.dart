import 'dart:async';

import 'package:dictionary/models/dictionary_user_progress.dart';

class DictionaryUserProgressRepositoryState {
  final bool isLoading;
  final Map<String, DictionaryUserProgress> data;

  const DictionaryUserProgressRepositoryState(
      {required this.isLoading, required this.data});
}

class DictionaryUserProgressRepository {
  final _controller = StreamController<DictionaryUserProgressRepositoryState>();
  Map<String, DictionaryUserProgress> data = {};

  DictionaryUserProgressRepository();

  Stream<DictionaryUserProgressRepositoryState> get status async* {
    yield DictionaryUserProgressRepositoryState(isLoading: true, data: data);
    await getData();
    yield* _controller.stream;
  }

  Future<void> getData() async {
    _controller.add(
        DictionaryUserProgressRepositoryState(isLoading: true, data: data));
    await Future.delayed(const Duration(seconds: 2));
    _controller.add(
        DictionaryUserProgressRepositoryState(isLoading: false, data: data));
  }

  void dispose() => _controller.close();
}
