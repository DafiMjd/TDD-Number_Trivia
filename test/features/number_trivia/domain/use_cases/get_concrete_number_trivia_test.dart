import 'package:number_trivia/core/core.dart';
import 'package:number_trivia/features/number_trivia/domain/domain.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';

@GenerateNiceMocks(
  [MockSpec<NumberTriviaRepository>(as: #MockNumberTriviaRepository)],
)
import 'get_number_trivia_test.mocks.dart';

void main() {
  late final GetConcreteNumberTriviaUc useCase;
  late final MockNumberTriviaRepository repository;
  setUp(() {
    repository = MockNumberTriviaRepository();
    useCase = GetConcreteNumberTriviaUc(repository: repository);
  });

  const tNumber = 1;
  const tNumberTrivia = NumberTriviaEnt(number: 1, text: 'test');

  test('should get trivia for the number from the repository', () async {
    // arrange
    when(repository.getConcreteNumberTrivia(tNumber))
        .thenAnswer((_) async => const Right(tNumberTrivia));

    // act
    final result = await useCase(tNumber);

    // assert
    expect(result, const Right(tNumberTrivia));
    verify(repository.getConcreteNumberTrivia(tNumber));
    verifyNoMoreInteractions(repository);
  });
}
