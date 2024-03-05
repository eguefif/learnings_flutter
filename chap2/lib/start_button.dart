import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton(this.text, {super.key});

  final String text;
  final TextStyle textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 28,
  );

  startQuiz() {}

  @override
  Widget build(context) {
    return OutlinedButton(
      onPressed: startQuiz(),
      style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
      ),
      child: Text(
        text,
        style: textStyle),
    );
  }
}
