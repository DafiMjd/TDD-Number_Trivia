import 'package:flutter/material.dart';
import 'package:number_trivia/core/core.dart';
import 'package:number_trivia/features/number_trivia/presentation/cubits/number_trivia_cubit.dart';

import 'widgets/index.dart';

class NumberTriviaPage extends StatefulWidget {
  const NumberTriviaPage({super.key});

  @override
  State<NumberTriviaPage> createState() => _NumberTriviaPageState();
}

class _NumberTriviaPageState extends State<NumberTriviaPage> {
  final cubit = sl<NumberTriviaCubit>();
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Trivia'),
      ),
      body: BlocProvider.value(
        value: cubit,
        child: const SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                NumberTriviaHeaderWidget(),
                SizedBox(height: 20),
                NumberTriviaBottomWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
