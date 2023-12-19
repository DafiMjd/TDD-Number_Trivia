import 'package:number_trivia/core/core.dart';
import 'package:number_trivia/features/number_trivia/domain/domain.dart';

part 'number_trivia_mdl.g.dart';

@Collection(ignore: {'props'})
class NumberTriviaMdl extends NumberTriviaEnt {
  final id = Isar.autoIncrement;

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
