import 'package:number_trivia/core/core.dart';
import 'package:number_trivia/features/number_trivia/data/models/index.dart';

abstract class NumberTriviaLocalDataSource {
  /// Gets the cached [NumberTriviaMdl] which was gotten the last time
  /// the user had an internet connection
  ///
  /// Throws a [CacheException] for all error codes.
  Future<NumberTriviaMdl> getLastNumberTrivia();

  Future<void> cacheNumberTrivia(NumberTriviaMdl triviaToCache);
}

class NumberTriviaLocalDataSourceImpl implements NumberTriviaLocalDataSource {
  final Isar isar;

  NumberTriviaLocalDataSourceImpl({required this.isar});

  @override
  Future<void> cacheNumberTrivia(NumberTriviaMdl triviaToCache) async {
    await isar.writeTxn(() async {
      await isar.numberTriviaMdls.put(triviaToCache);
    });
  }

  @override
  Future<NumberTriviaMdl> getLastNumberTrivia() async {
    final lastNumberTrivia =
        await isar.numberTriviaMdls.filter().textIsNotEmpty().findFirst();

    if (lastNumberTrivia == null) {
      throw CacheException();
    }

    return lastNumberTrivia;
  }
}
