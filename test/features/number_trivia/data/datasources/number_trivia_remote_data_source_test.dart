import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:number_trivia/core/core.dart';
import 'package:number_trivia/features/number_trivia/data/data.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  late NumberTriviaRemoteDataSourceImpl datasource;
  late DioAdapter dioAdapter;

  setUp(() {
    final dio = Dio();
    dioAdapter = DioAdapter(dio: dio);
    datasource = NumberTriviaRemoteDataSourceImpl(dio: dio);
  });

  group('getConcreteNumberTrivia', () {
    const tNumber = 1;
    final tNumberTriviaMdl =
        NumberTriviaMdl.fromJson(json.decode(fixture('trivia.json')));

    test('should return NumberTrivia when the response code is 200 (success)',
        () async {
      // arrange
      dioAdapter.onGet(
        'http://numbersapi.com/$tNumber?json',
        (server) => server.reply(
          200,
          tNumberTriviaMdl,
          delay: const Duration(milliseconds: 500),
        ),
      );
      // act
      final result = await datasource.getConcreteNumberTrivia(tNumber);
      // assert
      expect(result, tNumberTriviaMdl);
    });

    test(
        'should throw a ServerException when the response code is 404 or other',
        () {
      // arrange
      dioAdapter.onGet(
        'http://numbersapi.com/$tNumber?json',
        (server) => server.reply(
          404,
          'Something went wrong',
          delay: const Duration(milliseconds: 500),
        ),
      );
      // act
      final call = datasource.getConcreteNumberTrivia;
      // assert
      expect(call(tNumber), throwsA(const TypeMatcher<ServerException>()));
    });
  });

  group('getRandomNumberTrivia', () {
    final tNumberTriviaMdl =
        NumberTriviaMdl.fromJson(json.decode(fixture('trivia.json')));

    test(
        'should return NumberTrivia when the response code is 200 (success) with *random* endpoint',
        () async {
      // arrange
      dioAdapter.onGet(
        'http://numbersapi.com/random?json',
        (server) => server.reply(
          200,
          tNumberTriviaMdl,
          delay: const Duration(milliseconds: 500),
        ),
      );
      // act
      final result = await datasource.getRandomNumberTrivia();
      // assert
      expect(result, tNumberTriviaMdl);
    });

    test(
        'should throw a ServerException when the response code is 404 or other',
        () {
      // arrange
      dioAdapter.onGet(
        'http://numbersapi.com/random?json',
        (server) => server.reply(
          404,
          'Something went wrong',
          delay: const Duration(milliseconds: 500),
        ),
      );
      // act
      final call = datasource.getRandomNumberTrivia;
      // assert
      expect(call, throwsA(const TypeMatcher<ServerException>()));
    });
  });
}
