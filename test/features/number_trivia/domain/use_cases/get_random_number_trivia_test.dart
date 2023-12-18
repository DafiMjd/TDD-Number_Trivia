import 'package:number_trivia/core/core.dart';
import 'package:number_trivia/features/number_trivia/domain/domain.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import 'get_number_trivia_test.mocks.dart';

void main() {
  late final GetRandomNumberTriviaUc useCase;
  late final MockNumberTriviaRepository repository;
  setUp(() {
    repository = MockNumberTriviaRepository();
    useCase = GetRandomNumberTriviaUc(repository: repository);
  });

  const tNumberTrivia = NumberTriviaEnt(number: 1, text: 'test');

  test('should get trivia from the repository', () async {
    // arrange
    when(repository.getRandomNumberTrivia())
        .thenAnswer((_) async => const Right(tNumberTrivia));

    // act
    final result = await useCase(NoParams());

    // assert
    expect(result, const Right(tNumberTrivia));
    verify(repository.getRandomNumberTrivia());
    verifyNoMoreInteractions(repository);
  });
}
