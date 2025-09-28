import 'package:flutter/material.dart';

import 'package:quiz_app/components/custom_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.questionText),
          const SizedBox(height: 20),
          // for-in loop
          for (final answer in currentQuestion.questionAnswers)
            CustomButton(customText: answer, customFunction: () {}),
        ],
      ),
    );
  }
}
