import 'package:number_trivia/core/core.dart';

class NumberTriviaEnt extends Equatable {
  final String text;
  final int number;
  final bool found;

  const NumberTriviaEnt({
    this.text = '',
    this.number = 0,
    this.found = false,
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [text, number, found];
}
