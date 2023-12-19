import 'package:number_trivia/features/number_trivia/domain/domain.dart';

class NumberTriviaMdl extends NumberTriviaEnt {
  const NumberTriviaMdl({
    required int number,
    required String text,
  }) : super(number: number, text: text);

  factory NumberTriviaMdl.fromJson(Map<String, dynamic> json) {
    return NumberTriviaMdl(
      number: (json['number'] as num).toInt(),
      text: json['text'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'text': text,
    };
  }
}
