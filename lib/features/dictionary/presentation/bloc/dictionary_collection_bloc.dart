import 'package:bloc/bloc.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import 'package:dictionary/features/dictionary/domain/repositories/dictionary_repository.dart';
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

  bool get ready => when<bool>(
        fetching: () => false,
        ready: (_) => true,
        error: () => false,
      );

  UserDictionaryList get data => when<UserDictionaryList>(
        fetching: () => UserDictionaryList.empty(),
        ready: (data) => data,
        error: () => UserDictionaryList.empty(),
      );

  const factory DictionaryCollectionState.fetching() = _FetchinState;
  const factory DictionaryCollectionState.ready(
      {required final UserDictionaryList data}) = _ReadyState;
  const factory DictionaryCollectionState.error() = _ErrorState;
}

class DictionaryCollectionBLoC
    extends Bloc<DictionaryCollectionEvent, DictionaryCollectionState> {
  DictionaryCollectionBLoC({required final DictionaryRepository repository})
      : super(const _FetchinState()) {
    on<_RequestEvent>(_onRequestEvent);
    _repository = repository;
    add(const _RequestEvent());
  }

  late DictionaryRepository _repository;

  Future<void> _onRequestEvent(
    _RequestEvent event,
    Emitter<DictionaryCollectionState> emit,
  ) async {
    try {
      emit(const _FetchinState());
      var list = await _repository.getSplashDictionaryList();
      list.fold(
        (l) => emit(const _ErrorState()),
        (r) => emit(_ReadyState(data: r)),
      );
      await _repository.makeTasks();
      list = await _repository.getCachedDictionaryList();
      list.fold(
        (l) => emit(const _ErrorState()),
        (r) => emit(_ReadyState(data: r)),
      );
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
