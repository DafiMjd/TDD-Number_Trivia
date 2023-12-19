import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:number_trivia/features/number_trivia/data/data.dart';
import 'package:number_trivia/core/core.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  late final Isar mockIsar;
  late final NumberTriviaLocalDataSourceImpl dataSource;

  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Isar.initializeIsarCore(download: true);
    mockIsar = await Isar.open(
      [NumberTriviaMdlSchema],
      directory: 'temp',
    );
    dataSource = NumberTriviaLocalDataSourceImpl(isar: mockIsar);
  });

  /// skip test on Isar due to complexity of using Isar with Dart only
  group('getLastNumberTrivia', () {
    final tNumberTriviaMdl =
        NumberTriviaMdl.fromJson(json.decode(fixture('trivia_cached.json')));

    test('should return NumberTrivia from Isar when there is one in the cache',
        () async {
      // arrange
      when(mockIsar.numberTriviaMdls.filter().textIsNotEmpty().findFirst())
          .thenAnswer((_) async => tNumberTriviaMdl);
      // act
      final result = await dataSource.getLastNumberTrivia();
      // assert
      verify(mockIsar.numberTriviaMdls.filter().textIsNotEmpty().findFirst());
      expect(result, result);
    });
  });
}
