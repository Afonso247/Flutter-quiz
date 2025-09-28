import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void selecionarResposta(String resposta) {
    selectedAnswers.add(resposta);
  }

  void trocarTela() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  Widget telaAtual() {
    if (activeScreen == 'start-screen') {
      return StartScreen(trocarTela);
    } else {
      return QuestionsScreen(
        onSelectAnswer: selecionarResposta,
      );
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
