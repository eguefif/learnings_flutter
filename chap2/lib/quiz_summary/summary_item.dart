import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:chap2/quiz_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      QuestionIdentifier(
        isCorrectAnswer: itemData['correct'] as bool,
        questionIndex: itemData['question_index'] as int,
      ),
      const SizedBox(width: 20),
      Expanded(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            itemData['question'] as String,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 5),
          Text(
            itemData['user_answer'] as String,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 202, 171, 252),
              fontSize: 12,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 5),
          Text(
            itemData['correct_answer'] as String,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 181, 254, 246),
              fontSize: 12,
            ),
            textAlign: TextAlign.left,
          ),
        ]),
      ),
    ]);
  }
}
