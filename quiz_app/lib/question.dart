import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // keyword final tells dart that the value of questionText will never change
  // after the initialization in the constructor
  final String questionText;

  // Constructor to set the questionText's value
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
