import 'package:flutter/material.dart';
import 'package:chap2/start_button.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});


  final TextStyle textStyle = const TextStyle(
    color: Color.fromARGB(255, 188, 153, 233),
    fontSize: 24,
  );

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300),
          const SizedBox(height: 40),
          Text(
            "Learn flutter the fun way!",
            style: textStyle),
          const SizedBox(height: 20),
          const StartButton("start quiz"),
        ],
      ),
    );
  }
}
