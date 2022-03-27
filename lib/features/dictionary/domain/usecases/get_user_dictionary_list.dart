import 'package:dartz/dartz.dart';
import 'package:dictionary/core/domain/error/failures.dart';
import 'package:dictionary/core/domain/usecases/usecase.dart';
import 'package:dictionary/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_dictionary_list.freezed.dart';

class GetUserDictionaryList implements UseCase<UserDictionaryList, NoParams> {
  final DictionaryRepository repository;
  GetUserDictionaryList({required this.repository});

  @override
  Future<Either<Failure, UserDictionaryList>> call(NoParams) async {
    return await repository.getCachedDictionaryList();
  }
}

@freezed
class NoParams with _$NoParams {
  const factory NoParams() = _NoParams;
}
