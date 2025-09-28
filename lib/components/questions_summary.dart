import 'package:flutter/material.dart';
import 'package:quiz_app/components/questionsSummary/question_summary_main.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData // é feito um mapeamento de summaryData para QuestionSummaryMain
              .map((data) => QuestionSummaryMain(data: data))
              .toList(),
        ),
      ),
    );
  }
}
