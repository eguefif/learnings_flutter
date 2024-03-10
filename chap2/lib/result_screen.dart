import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chap2/data/questions.dart';
import 'package:chap2/quiz_summary/questions_summary.dart';
import 'package:chap2/quiz_summary/restart_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.restartQuiz, {super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;
  final Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
        'correct': questions[i].answers[0] == chosenAnswers[i]
                  ? true
                  : false,
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      if (data["user_answer"] == data["correct_answer"]) {
        return true;
      }
      return false;
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "You answered $numCorrectQuestions out of $numTotalQuestions questions correctly",
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 230, 200, 253),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center, 
                ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(height: 30),
            RestartButton(restartQuiz),
          ],
        ),
      ),
    );
  }
}
