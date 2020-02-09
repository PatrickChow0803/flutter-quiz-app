import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // keyword final tells dart that the value of questionText will never change
  // after the initialization in the constructor
  final String questionText;

  // Constructor to set the questionText's value
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // Need the container so that the text takes the full width of the container.
    return Container(
      // double.infinity makes it so that it takes as much space as it can get
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        // because within a container, it now uses the parent widget as the measurement
        textAlign: TextAlign.center,
      ),
    );
  }
}
