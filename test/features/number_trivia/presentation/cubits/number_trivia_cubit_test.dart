import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/core/core.dart';
import 'package:number_trivia/features/number_trivia/domain/domain.dart';
import 'package:number_trivia/features/number_trivia/presentation/cubits/number_trivia_cubit.dart';

import '../../domain/use_cases/get_concrete_number_trivia_test.mocks.dart';
@GenerateNiceMocks([
  MockSpec<InputConverter>(as: #MockInputConverter),
])
import 'number_trivia_cubit_test.mocks.dart';

void main() {
  late final MockInputConverter mockInputConverter;
  late final NumberTriviaCubit cubit;
  late final GetConcreteNumberTriviaUc getConcreteNumberTriviaUc;
  late final GetRandomNumberTriviaUc getRandomNumberTriviaUc;
  late final MockNumberTriviaRepository repository;

  setUp(() {
    mockInputConverter = MockInputConverter();
    repository = MockNumberTriviaRepository();
    getConcreteNumberTriviaUc =
        GetConcreteNumberTriviaUc(repository: repository);
    getRandomNumberTriviaUc = GetRandomNumberTriviaUc(repository: repository);
    cubit = NumberTriviaCubit(
      inputConverter: mockInputConverter,
      getConcreteNumberTriviaUc: getConcreteNumberTriviaUc,
      getRandomNumberTriviaUc: getRandomNumberTriviaUc,
    );
  });

  group('getTriviaForConcreteNumber', () {
    // The event takes in a String
    const tNumberString = '1';
    // This is the successful output of the InputConverter
    final tNumberParsed = int.parse(tNumberString);
    // NumberTrivia instance is needed too, of course
    const tNumberTrivia = NumberTriviaEnt(number: 1, text: 'test trivia');

    void setUpMockInputConverterSuccess() =>
        when(mockInputConverter.stringToUnsignedInteger(any))
            .thenReturn(Right(tNumberParsed));

    test('should emit [Error] when the input is invalid', () async {
      // arrange
      when(mockInputConverter.stringToUnsignedInteger(any))
          .thenReturn(const Left(InvalidInputFailureMdl()));
      // act
      await cubit.getConcreteNumberTrivia(tNumberString);
      // assert
      expect(
        cubit.state.numberTriviaLoadData.data,
        const Left(InvalidInputFailureMdl()),
      );
    });

    test('should get data from the concrete use case', () async {
      // arrange
      setUpMockInputConverterSuccess();
      // act
      await cubit.getConcreteNumberTrivia(tNumberString);
      // assert
      verify(getConcreteNumberTriviaUc(tNumberParsed));
    });

    test(
        'should emit Loaded when data is gotten successfully and data is as expected',
        () async {
      // arrange
      setUpMockInputConverterSuccess();
      when(getConcreteNumberTriviaUc(tNumberParsed))
          .thenAnswer((_) async => const Right(tNumberTrivia));
      // act
      await cubit.getConcreteNumberTrivia(tNumberString);
      // asert
      expect(cubit.state.numberTriviaLoadData.isHasData, true);
      expect(cubit.state.numberTriviaLoadData.data, const Right(tNumberTrivia));
    });

    test('should emit Error when getting data fails', () async {
      // arrange
      setUpMockInputConverterSuccess();
      when(getConcreteNumberTriviaUc(tNumberParsed))
          .thenAnswer((_) async => const Left(ServerFailure()));
      // act
      await cubit.getConcreteNumberTrivia(tNumberString);
      // assert
      expect(cubit.state.numberTriviaLoadData.isError, true);
      expect(
          cubit.state.numberTriviaLoadData.data, const Left(ServerFailure()));
    });

    test(
        'should emit Error with a proper message for the error when getting data fails',
        () async {
      // arrange
      setUpMockInputConverterSuccess();
      when(getConcreteNumberTriviaUc(tNumberParsed))
          .thenAnswer((_) async => const Left(CacheFailure()));
      // act
      await cubit.getConcreteNumberTrivia(tNumberString);
      // assert
      expect(cubit.state.numberTriviaLoadData.isError, true);
      expect(
        cubit.state.numberTriviaLoadData.data,
        const Left(CacheFailure()),
      );
    });
  });

  group('getTriviaForRandomNumber', () {
    // NumberTrivia instance is needed too, of course
    const tNumberTrivia = NumberTriviaEnt(number: 1, text: 'test trivia');

    test(
        'should emit Loaded when data is gotten successfully and data is as expected',
        () async {
      // arrange
      when(getRandomNumberTriviaUc(NoParams()))
          .thenAnswer((_) async => const Right(tNumberTrivia));
      // act
      await cubit.getRandomNumberTrivia();
      // asert
      expect(cubit.state.numberTriviaLoadData.isHasData, true);
      expect(cubit.state.numberTriviaLoadData.data, const Right(tNumberTrivia));
    });

    test('should emit Error when getting data fails', () async {
      // arrange
      when(getRandomNumberTriviaUc(NoParams()))
          .thenAnswer((_) async => const Left(ServerFailure()));
      // act
      await cubit.getRandomNumberTrivia();
      // assert
      expect(cubit.state.numberTriviaLoadData.isError, true);
      expect(
        cubit.state.numberTriviaLoadData.data,
        const Left(ServerFailure()),
      );
    });

    test(
        'should emit Error with a proper message for the error when getting data fails',
        () async {
      // arrange
      when(getRandomNumberTriviaUc(NoParams()))
          .thenAnswer((_) async => const Left(CacheFailure()));
      // act
      await cubit.getRandomNumberTrivia();
      // assert
      expect(cubit.state.numberTriviaLoadData.isError, true);
      expect(
        cubit.state.numberTriviaLoadData.data,
        const Left(CacheFailure()),
      );
    });
  });
}
