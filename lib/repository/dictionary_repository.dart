import 'dart:async';

import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import '../repository/dictionary_repository_embedded.dart';

class DictionaryRepositoryState {
  final bool isLoading;
  final List<Dictionary> data;

  const DictionaryRepositoryState(
      {required this.isLoading, required this.data});
}

class DictionaryRepository {
  final _controller = StreamController<DictionaryRepositoryState>();
  List<Dictionary> data = [];

  DictionaryRepository();

  Stream<DictionaryRepositoryState> get status async* {
    yield DictionaryRepositoryState(isLoading: true, data: data);
    data = embeddedDictionaryes();
    yield DictionaryRepositoryState(isLoading: false, data: data);
    yield* _controller.stream;
  }

  Future<void> getData() async {
    _controller.add(DictionaryRepositoryState(isLoading: true, data: data));
    data = embeddedDictionaryes();
    await Future.delayed(const Duration(seconds: 2));

    _controller.add(DictionaryRepositoryState(isLoading: false, data: data));
  }

  void dispose() => _controller.close();
}
