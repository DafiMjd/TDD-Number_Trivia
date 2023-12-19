import 'package:number_trivia/features/number_trivia/data/models/index.dart';

abstract class NumberTriviaLocalDataSource {
  /// Gets the cached [NumberTriviaMdl] which was gotten the last time
  /// the user had an internet connection
  /// 
  /// Throws a [CacheException] for all error codes.
  Future<NumberTriviaMdl> getLastNumberTrivia();

  Future<void> cacheNumberTrivia(NumberTriviaMdl triviaToCache);
}
