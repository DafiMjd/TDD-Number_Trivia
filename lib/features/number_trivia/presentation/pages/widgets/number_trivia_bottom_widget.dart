import 'package:flutter/material.dart';
import 'package:number_trivia/core/core.dart';
import 'package:number_trivia/features/number_trivia/presentation/cubits/number_trivia_cubit.dart';

class NumberTriviaBottomWidget extends StatefulWidget {
  const NumberTriviaBottomWidget({super.key});

  @override
  State<NumberTriviaBottomWidget> createState() =>
      _NumberTriviaBottomWidgetState();
}

class _NumberTriviaBottomWidgetState extends State<NumberTriviaBottomWidget> {
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NumberTriviaCubit>();

    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Input a number',
          ),
          controller: textController,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  cubit.getConcreteNumberTrivia(textController.text);
                },
                child: const Text('Search Number'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  cubit.getRandomNumberTrivia();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                ),
                child: const Text('Get Random Number'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
