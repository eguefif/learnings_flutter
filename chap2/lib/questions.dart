import 'package:flutter/material.dart';
import 'package:chap2/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsState();
  }
}

void action(){

}

class _QuestionsState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The question...',
              style: TextStyle(
                color: Colors.white,
              )),
          SizedBox(height: 30),
          AnswerButton(text: 'Answer1', onTap: action),
          AnswerButton(text: 'Answer2', onTap: action),
          AnswerButton(text: 'Answer3', onTap: action),
        ],
      ),
    );
  }
}
