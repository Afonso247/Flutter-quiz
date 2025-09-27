import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void trocarTela() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  Widget telaAtual() {
    if (activeScreen == 'start-screen') {
      return StartScreen(trocarTela);
    } else {
      return QuestionsScreen();
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
