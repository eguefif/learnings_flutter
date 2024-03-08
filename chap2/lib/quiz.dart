import 'package:flutter/material.dart';
import 'package:chap2/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 56, 4, 197),
            Color.fromARGB(255, 41, 5, 139),
          ],
        )),
        child: const StartScreen(),
      )),
    );
  }
}
