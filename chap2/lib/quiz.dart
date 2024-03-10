import 'package:flutter/material.dart';
import 'package:chap2/start_screen.dart';
import 'package:chap2/questions_screen.dart';
import 'package:chap2/data/questions.dart';
import 'package:chap2/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String? activeScreen;
  List<String> selectedAnswers = [];

  @override
  void initState() {
    activeScreen = 'start-screen';
    super.initState();
  }

  void chooseAnswer(answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState( () {
        activeScreen = 'result-screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(restartQuiz, chosenAnswers: selectedAnswers);
    }
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
        child: screenWidget,
      )),
    );
  }
}
