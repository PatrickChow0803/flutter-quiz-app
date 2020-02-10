import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';
//void main() {
//  (MyApp());
//}

void main() => runApp(MyApp());

// Data here does get recreated
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// Data here doesn't get recreated <> means generic, MyApp is used as a pointer
// State<MyApp> tells flutter that this state belongs to MyApp (The class above)
// Places the underscore makes the class private so that the class can only be accessed by MyApp. Cant only be used within this file.
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': "What\s your favorite color?",
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': "What\s your favorite animal?",
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': "Who is your favorite teacher?",
      'answers': ['Max', 'Titly']
    }
  ];

  @override
  Widget build(BuildContext context) {
    void _answerQuestion() {
      // questions contains an array of maps
      // const = compile time constant

      // use the function setState for code that will change data and will update the ui
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex.toString());

      if (_questionIndex < _questions.length) {
        print('We have more questions!');
      }
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is my first app'),
        ),
        // _questionIndex < questions.length is an if statement. Perform everything after the ? if its true.
        // Else perform everything after the Column.
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
