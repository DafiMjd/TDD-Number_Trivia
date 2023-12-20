import 'package:flutter/material.dart';
import 'package:number_trivia/core/core.dart';
import 'package:number_trivia/features/number_trivia/presentation/cubits/number_trivia_cubit.dart';

class NumberTriviaHeaderWidget extends StatelessWidget {
  const NumberTriviaHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NumberTriviaCubit, NumberTriviaState>(
      builder: (context, state) {
        return Column(
          children: [
            if (state.numberToShow.isNotEmpty) ...[
              Text(
                state.numberToShow,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black, fontSize: 48),
              ),
            ],
            Text(
              state.textToShow,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black, fontSize: 24),
            ),
          ],
        );
      },
    );
  }
}
