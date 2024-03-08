import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  startQuiz() {}

  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: startQuiz(),
      style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          disabledForegroundColor: Colors.white,
      ),
      icon: const Icon(Icons.arrow_right_alt),
      label: const Text("Start Quiz"),
    );
  }
}
