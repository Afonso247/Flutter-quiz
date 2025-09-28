import 'package:flutter/material.dart';
import 'package:quiz_app/screens/results_screen.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';
import 'package:quiz_app/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void selecionarResposta(String resposta) {
    selectedAnswers.add(resposta);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
        selectedAnswers = [];
      });
    }
  }

  void trocarTela() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  Widget telaAtual() {
    if (activeScreen == 'start-screen') {
      return StartScreen(trocarTela);
    } else if (activeScreen == 'questions-screen') {
      return QuestionsScreen(
        onSelectAnswer: selecionarResposta,
      );
    } else if (activeScreen == 'results-screen') {
      return ResultsScreen(
        selectedAnswers: selectedAnswers,
      );
    } else {
      return StartScreen(trocarTela);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 114, 23, 117)),
          child: telaAtual(),
        ),
      ),
    );
  }
}
