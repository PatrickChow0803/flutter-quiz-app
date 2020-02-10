import 'package:flutter/material.dart';
import './question.dart';
import './result.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Acesses the questions variable with the index _questionIndex with the key as the string
        Question(
          questions[questionIndex]['questionText'],
        ),
        // These lines of code is run for each item in the list. For each item, create an Answer widget.
        ...(questions[questionIndex]['answers'] as List<String>)
            // answer is the string value of the list obtained within the map.
            .map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
