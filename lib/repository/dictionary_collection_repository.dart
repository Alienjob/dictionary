import 'dart:async';

import 'package:dictionary/models/dictionary.dart';
import 'package:dictionary/repository/authenticated_repository.dart';
import 'package:dictionary/repository/authentication_repository.dart';
import 'package:dictionary/repository/dictionary_repository_embedded.dart';

class DictionaryCollectionRepository extends AuthenticatedRepository {
  DictionaryCollectionRepository(
      {required AuthenticationRepository authRepository})
      : super(authRepository: authRepository);

  Future<List<Dictionary>> readCollection() async {
    List<Dictionary> result = embeddedDictionaryes();
    return result;
  }
}
