import 'package:bloc/bloc.dart';
import 'package:dictionary/models/card.dart';
import 'package:dictionary/repository/card_collection_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_collection_bloc.freezed.dart';

@freezed
class CardCollectionEvent with _$CardCollectionEvent {
  const CardCollectionEvent._();

  const factory CardCollectionEvent.selectCollection(
      {required String collectionKey}) = _SelectCollectionEvent;
  const factory CardCollectionEvent.swapLeft({required String cardKey}) =
      _SwapLeftCollectionEvent;
  const factory CardCollectionEvent.swapRight({required String cardKey}) =
      _SwapRightCollectionEvent;
}

@freezed
class CardCollectionState with _$CardCollectionState {
  const CardCollectionState._();

  bool get ready => when<bool>(
        error: () => false,
        fetching: () => false,
        ready: (_, __) => true,
      );
  List<CardData> get data => when<List<CardData>>(
        error: () => [],
        fetching: () => [],
        ready: (data, _) => data,
      );
  String get collectionID => when<String>(
        error: () => '[]',
        fetching: () => '[]',
        ready: (_, collectionID) => collectionID,
      );

  const factory CardCollectionState.fetching() = _FetchingCardCollectionState;
  const factory CardCollectionState.ready(
      {required final List<CardData> data,
      required final String collectionID}) = _ReadyCardCollectionState;
  const factory CardCollectionState.error() = _ErrorCardCollectionState;
}

class CardCollectionBLoC
    extends Bloc<CardCollectionEvent, CardCollectionState> {
  CardCollectionBLoC({required final CardCollectionRepository repository})
      : super(const _FetchingCardCollectionState()) {
    on<_SelectCollectionEvent>(_onSelectCollection);
    on<_SwapLeftCollectionEvent>(_onSwapLeft);
    on<_SwapRightCollectionEvent>(_onSwapRight);
    _repository = repository;
  }

  late CardCollectionRepository _repository;

  Future<void> _onSelectCollection(
    _SelectCollectionEvent event,
    Emitter<CardCollectionState> emit,
  ) async {
    try {
      emit(const _FetchingCardCollectionState());
      var data = await _repository.readCollection(event.collectionKey);
      emit(_ReadyCardCollectionState(
          data: data, collectionID: event.collectionKey));
    } on Object catch (error, _) {
      emit(const _ErrorCardCollectionState());
      rethrow;
    } finally {}
  }

  Future<void> _onSwapLeft(
    _SwapLeftCollectionEvent event,
    Emitter<CardCollectionState> emit,
  ) async {
    try {
      _repository.saveLeft(event.cardKey);
    } on Object catch (error, _) {
      rethrow;
    } finally {}
  }

  Future<void> _onSwapRight(
    _SwapRightCollectionEvent event,
    Emitter<CardCollectionState> emit,
  ) async {
    try {
      _repository.saveRight(event.cardKey);
    } on Object catch (error, _) {
      rethrow;
    } finally {}
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
