import 'package:flutter/material.dart';

class RestartButton extends StatelessWidget {
  const RestartButton(Function() this.restartAction, {super.key});

  final void Function() restartAction;

  @override
  Widget build(context) {
    return TextButton.icon(
      onPressed: () { 
        restartAction();
      },
      style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          disabledForegroundColor: Colors.white,
      ),
      icon: const Icon(Icons.refresh),
      label: const Text("Restart quiz"),
    );
  }
}