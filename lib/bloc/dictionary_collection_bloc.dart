import 'package:bloc/bloc.dart';
import 'package:dictionary/models/dictionary.dart';
import 'package:dictionary/repository/dictionary_collection_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_collection_bloc.freezed.dart';

@freezed
class DictionaryCollectionEvent with _$DictionaryCollectionEvent {
  const DictionaryCollectionEvent._();

  const factory DictionaryCollectionEvent.request() = _RequestEvent;
}

@freezed
class DictionaryCollectionState with _$DictionaryCollectionState {
  const DictionaryCollectionState._();

  List<Dictionary> get data => when(
        fetching: List<Dictionary>.empty,
        ready: (_data) => _data,
        error: List<Dictionary>.empty,
      );
  bool get ready => when<bool>(
        fetching: () => false,
        ready: (_) => true,
        error: () => false,
      );

  const factory DictionaryCollectionState.fetching() = _FetchinState;
  const factory DictionaryCollectionState.ready(
      {required final List<Dictionary> data}) = _ReadyState;
  const factory DictionaryCollectionState.error() = _ErrorState;
}

class DictionaryCollectionBLoC
    extends Bloc<DictionaryCollectionEvent, DictionaryCollectionState> {
  DictionaryCollectionBLoC(
      {required final DictionaryCollectionRepository repository})
      : super(const _FetchinState()) {
    on<_RequestEvent>(_onRequestEvent);
    _repository = repository;
    add(const _RequestEvent());
  }

  late DictionaryCollectionRepository _repository;

  Future<void> _onRequestEvent(
    _RequestEvent event,
    Emitter<DictionaryCollectionState> emit,
  ) async {
    try {
      emit(const _FetchinState());
      var data = await _repository.readCollection();
      emit(_ReadyState(data: data));
    } on Object catch (error, _) {
      emit(const _ErrorState());
      rethrow;
    } finally {}
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
