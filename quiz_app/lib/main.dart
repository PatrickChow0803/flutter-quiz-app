import 'package:flutter/material.dart';

//void main() {
//  (MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    void answerQuestion() {
      questionIndex = questionIndex + 1;
      print(questionIndex.toString());
    }

    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is my first app'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 Chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                // do some logic stuff here
                print('Answer 3 Chosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
