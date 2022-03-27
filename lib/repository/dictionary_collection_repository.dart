import 'dart:async';


import 'package:dictionary/core/repositories/authenticated_repository.dart';
import 'package:dictionary/features/auth/data/repositories/authentication_repository.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import 'package:dictionary/repository/dictionary_repository_embedded.dart';

class _DictionaryCollectionRepository extends AuthenticatedRepository {
  _DictionaryCollectionRepository(
      {required AuthenticationRepository authRepository})
      : super(authRepository: authRepository);

  Future<List<Dictionary>> readCollection() async {
    List<Dictionary> result = embeddedDictionaryes();
    return result;
  }
}
