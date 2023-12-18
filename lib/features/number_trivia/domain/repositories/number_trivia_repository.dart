import 'package:dartz/dartz.dart';
import 'package:number_trivia/core/errors/failure_mdl.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia_ent.dart';

abstract class NumberTriviaRepository {
  Future<Either<FailureMdl, NumberTriviaEnt>> getConcreteNumberTrivia(
    int number,
  );
  Future<Either<FailureMdl, NumberTriviaEnt>> getRandomNumberTrivia();
}
