import 'package:number_trivia/core/core.dart';
import 'package:number_trivia/features/number_trivia/domain/domain.dart';

class GetRandomNumberTriviaUc implements UserCase<NumberTriviaEnt, NoParams> {
  final NumberTriviaRepository repository;

  const GetRandomNumberTriviaUc({required this.repository});

  @override
  Future<Either<FailureMdl, NumberTriviaEnt>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
