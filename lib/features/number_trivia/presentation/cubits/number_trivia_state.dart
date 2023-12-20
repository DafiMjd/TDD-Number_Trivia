part of 'number_trivia_cubit.dart';

class NumberTriviaState extends Equatable {
  final ViewData<Either<FailureMdl, NumberTriviaEnt>> numberTriviaLoadData;

  String get _numberOrMessage =>
      numberTriviaLoadData.data
          ?.fold((left) => left.message, (right) => '${right.number}') ??
      '';

  String get textOrMessage =>
      numberTriviaLoadData.data
          ?.fold((left) => left.message, (right) => right.text) ??
      '';

  String get numberToShow {
    return switch (numberTriviaLoadData.status) {
      ViewState.initial => '',
      ViewState.loading => '-',
      ViewState.error => '',
      ViewState.hasData => _numberOrMessage,
      ViewState.noData => '',
    };
  }

  String get textToShow {
    return switch (numberTriviaLoadData.status) {
      ViewState.initial => 'Search Number Trivia',
      ViewState.loading => '-',
      ViewState.error => textOrMessage,
      ViewState.hasData => textOrMessage,
      ViewState.noData => 'No Data',
    };
  }

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
