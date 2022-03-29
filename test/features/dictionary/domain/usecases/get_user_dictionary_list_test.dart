import 'package:dartz/dartz.dart';
import 'package:dictionary/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:dictionary/features/dictionary/domain/usecases/get_user_dictionary_list.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../fixtures/dictionary_list.dart';

class MockDictionaryRepository extends Mock implements DictionaryRepository {}

void main() {
  MockDictionaryRepository mockDictionaryRepository =
      MockDictionaryRepository();
  GetUserDictionaryList usecase =
      GetUserDictionaryList(repository: mockDictionaryRepository);

  setUp(() async {
    mockDictionaryRepository = MockDictionaryRepository();
    usecase = GetUserDictionaryList(repository: mockDictionaryRepository);
  });

  final tUserDictionaryList = UserDictionaryList(
      isLoading: false, userDictionaryList: UserDictionaryListFixture.splash);

  test('should get user dictionary list from the repositopy', () async {
    // arrange
    when(() => mockDictionaryRepository.getCachedDictionaryList())
        .thenAnswer((_) async => Right(tUserDictionaryList));
    // act
    final result = await usecase(const NoParams());

    // assert
    expect(result, Right(tUserDictionaryList));
    verify(() => mockDictionaryRepository.getCachedDictionaryList());
    verifyNoMoreInteractions(mockDictionaryRepository);
  });
}
