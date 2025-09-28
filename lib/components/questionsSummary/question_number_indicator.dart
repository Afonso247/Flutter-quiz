import 'package:flutter/material.dart';

class QuestionNumberIndicator extends StatelessWidget {
  const QuestionNumberIndicator({
    super.key,
    required this.questionNumber,
    required this.isCorrect,
  });

  final int questionNumber;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        color: isCorrect ? Colors.green : Colors.red,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          questionNumber.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}