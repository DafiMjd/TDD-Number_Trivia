import 'package:number_trivia/core/core.dart';
import 'package:number_trivia/features/number_trivia/domain/domain.dart';

abstract class NumberTriviaRepository {
  Future<Either<FailureMdl, NumberTriviaEnt>> getConcreteNumberTrivia(
    int number,
  );
  Future<Either<FailureMdl, NumberTriviaEnt>> getRandomNumberTrivia();
}
