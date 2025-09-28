import 'package:flutter/material.dart';

import 'package:quiz_app/components/custom_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Pergunta'),
          const SizedBox(height: 20),
          CustomButton(customText: 'Resposta 1', customFunction: () {}),
          CustomButton(customText: 'Resposta 2', customFunction: () {}),
          CustomButton(customText: 'Resposta 3', customFunction: () {}),
      ]),
    );
  }
}