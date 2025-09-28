import 'package:flutter/material.dart';

class AnswerContainer extends StatelessWidget {
  const AnswerContainer({
    super.key,
    required this.label,
    required this.answer,
    required this.isCorrect,
    required this.isUserAnswer,
  });

  final String label;
  final String answer;
  final bool isCorrect;
  final bool isUserAnswer;

  @override
  Widget build(BuildContext context) {
    final color = isUserAnswer && !isCorrect ? Colors.red : Colors.green;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: color,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            answer,
            style: TextStyle(
              color: color,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}