import 'package:number_trivia/core/core.dart';
import 'package:number_trivia/features/number_trivia/domain/domain.dart';

class GetConcreteNumberTriviaUc implements UserCase<NumberTriviaEnt, int> {
  final NumberTriviaRepository repository;

  const GetConcreteNumberTriviaUc({required this.repository});

  @override
  Future<Either<FailureMdl, NumberTriviaEnt>> call(int number) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
