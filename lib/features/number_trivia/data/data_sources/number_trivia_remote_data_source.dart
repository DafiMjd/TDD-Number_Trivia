import 'package:number_trivia/core/core.dart';
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

class NumberTriviaRemoteDataSourceImpl implements NumberTriviaRemoteDataSource {
  final Dio dio;

  NumberTriviaRemoteDataSourceImpl({required this.dio});

  @override
  Future<NumberTriviaMdl> getConcreteNumberTrivia(int number) async {
    try {
      final res = await dio.get(
        'http://numbersapi.com/$number?json',
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      return NumberTriviaMdl.fromJson(res.data);
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<NumberTriviaMdl> getRandomNumberTrivia() async {
    try {
      final res = await dio.get(
        'http://numbersapi.com/random?json',
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      return NumberTriviaMdl.fromJson(res.data);
    } catch (_) {
      throw ServerException();
    }
  }
}
