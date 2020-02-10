import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

  final questions = const [
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

      if (_questionIndex < questions.length) {
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  // Acesses the questions variable with the index _questionIndex with the key as the string
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  // These lines of code is run for each item in the list. For each item, create an Answer widget.
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      // answer is the string value of the list obtained within the map.
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You Did it!'),
              ),
      ),
    );
  }
}
