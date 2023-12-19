import 'package:number_trivia/features/number_trivia/data/models/index.dart';

abstract class NumberTriviaRemoteDataSource {
  /// Calls the http://numbersapi.com/{number} endpoint.
  /// 
  /// Throws a [ServerException] for all error codes.
  Future<NumberTriviaMdl> getConcreteNumberTrivia(int number);

  /// Calls the http://numbersapi.com/random endpoint.
  /// 
  /// Throws a [ServerException] for all error codes.
  Future<NumberTriviaMdl> getRandomNumberTrivia();
}
