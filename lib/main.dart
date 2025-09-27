import 'package:flutter/material.dart';
import 'package:quiz_app/screens/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 114, 23, 117),
          ),
          child: StartScreen(),
        ),
      ),
    ),
  );
}
