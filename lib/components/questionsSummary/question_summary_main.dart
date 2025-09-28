import 'package:flutter/material.dart';
import 'package:quiz_app/components/questionsSummary/question_number_indicator.dart';
import 'package:quiz_app/components/questionsSummary/answer_container.dart';

class QuestionSummaryMain extends StatelessWidget {
  const QuestionSummaryMain({
    super.key,
    required this.data,
  });

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    final isCorrect = data['user_answer'] == data['correct_answer'];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isCorrect ? Colors.green : Colors.red,
          width: 2,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionNumberIndicator(
            questionNumber: (data['question_index'] as int) + 1,
            isCorrect: isCorrect,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildQuestionText(),
                const SizedBox(height: 12),
                AnswerContainer(
                  label: 'Sua resposta:',
                  answer: data['user_answer'] as String,
                  isCorrect: isCorrect,
                  isUserAnswer: true,
                ),
                if (!isCorrect) ...[
                  const SizedBox(height: 8),
                  AnswerContainer(
                    label: 'Resposta correta:',
                    answer: data['correct_answer'] as String,
                    isCorrect: true,
                    isUserAnswer: false,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionText() {
    return Text(
      data['question'] as String,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}