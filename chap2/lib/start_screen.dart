import 'package:flutter/material.dart';
import 'package:chap2/start_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(void Function() this.startQuiz, {super.key});

  final void Function() startQuiz;

  final TextStyle textStyle = const TextStyle(
    color: Colors.white,
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
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
            ),
          const SizedBox(height: 40),
          Text(
            "Learn flutter the fun way!",
            style: textStyle,
            ),
          const SizedBox(height: 20),
          StartButton(startQuiz),
        ],
      ),
    );
  }
}
