part of 'number_trivia_cubit.dart';

class NumberTriviaState extends Equatable {
  final ViewData<Either<FailureMdl, NumberTriviaEnt>> numberTriviaLoadData;

  const NumberTriviaState({
    required this.numberTriviaLoadData,
  });

  NumberTriviaState copyWith({
    ViewData<Either<FailureMdl, NumberTriviaEnt>>? numberTriviaLoadData,
  }) {
    return NumberTriviaState(
      numberTriviaLoadData: numberTriviaLoadData ?? this.numberTriviaLoadData,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [numberTriviaLoadData];
}
