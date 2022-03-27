import 'package:dartz/dartz.dart';
import 'package:dictionary/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:dictionary/features/dictionary/domain/usecases/get_user_dictionary_list.dart';
import 'package:dictionary/features/dictionary/domain/entities/dictionary.dart';
import 'package:dictionary/models/dictionary_image.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

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

  final List<Dictionary> tUserDictionaryList = [
    Dictionary(
      key: '1',
      title: 'test 1',
      img:
          DictionaryImage(path: '', pathType: DictionaryImagePathType.embedded),
      description: '',
    ),
    Dictionary(
      key: '2',
      title: 'test 2',
      img: DictionaryImage(path: '', pathType: DictionaryImagePathType.url),
      description: '',
    ),
  ];

  test('should get user dictionary list from the repositopy', () async {
    // arrange
    when(() => mockDictionaryRepository.getUserDictionaryList())
        .thenAnswer((_) async => Right(tUserDictionaryList));
    // act
    final result = await usecase(const NoParams());

    // assert
    expect(result, Right(tUserDictionaryList));
    verify(() => mockDictionaryRepository.getUserDictionaryList());
    verifyNoMoreInteractions(mockDictionaryRepository);
  });
}
