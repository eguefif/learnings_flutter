import 'package:flutter/material.dart';
import 'package:chap2/quizz_app.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors:[ 
                  Color.fromARGB(255, 56, 4, 197),
                  Color.fromARGB(255, 41, 5, 139),
            ],
          )
          ),
        child: const QuizApp(),
        )
      ),
    ),
  );
}
