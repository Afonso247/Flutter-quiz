import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.trocarTela, {super.key});

  final void Function() trocarTela;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(
            image: AssetImage("assets/images/quiz-logo.png"),
            width: 200,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
          SizedBox(height: 80),
          const Text(
            "Vamos aprender sobre Flutter!",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
            )),
            onPressed: trocarTela,
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Começar Quiz"),
          ),
        ],
      ),
    );
  }
}
