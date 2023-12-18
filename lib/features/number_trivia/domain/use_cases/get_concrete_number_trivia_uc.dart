import 'package:dartz/dartz.dart';
import 'package:number_trivia/core/errors/failure_mdl.dart';
import 'package:number_trivia/features/number_trivia/domain/domain.dart';

class GetConcreteNumberTriviaUc {
  final NumberTriviaRepository repository;

  const GetConcreteNumberTriviaUc({required this.repository});

  Future<Either<FailureMdl, NumberTriviaEnt>> call({
    required int number,
  }) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
