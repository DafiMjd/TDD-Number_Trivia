import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia/features/number_trivia/domain/domain.dart';
import 'package:number_trivia/features/number_trivia/data/data.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tNumberTriviaMdl = NumberTriviaMdl(number: 1, text: 'Test Text');

  test(
    'should be a subclass of NumberTriviaEnt',
    () async {
      // assert
      expect(tNumberTriviaMdl, isA<NumberTriviaEnt>());
    },
  );

  group(
    'fromJson',
    () {
      test(
        'should return a valid model when the JSON number is an integer',
        () async {
          // arrange
          final Map<String, dynamic> jsonMap =
              json.decode(fixture('trivia.json'));
          // act
          final result = NumberTriviaMdl.fromJson(jsonMap);
          // assert
          expect(result, tNumberTriviaMdl);
        },
      );

      test(
        'should return a valid model when the JSON number is regarded as a double',
        () async {
          // arrange
          final Map<String, dynamic> jsonMap =
              json.decode(fixture('trivia_double.json'));
          // act
          final result = NumberTriviaMdl.fromJson(jsonMap);
          // assert
          expect(result, tNumberTriviaMdl);
        },
      );
    },
  );

  group('toJson', () {
    test(
      'should return a JSON map containing the proper data',
      () async {
        // act
        final result = tNumberTriviaMdl.toJson();
        // assert
        final expectedMap = {
          "text": "Test Text",
          "number": 1,
        };
        expect(result, expectedMap);
      },
    );
  });
}
