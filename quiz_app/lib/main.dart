import 'package:flutter/material.dart';

//void main() {
//  (MyApp());
//}

void main() => runApp(MyApp());

// Data here does get recreated
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

// Data here doesn't get recreated <> means generic, MyApp is used as a pointer
// State<MyApp> tells flutter that this state belongs to MyApp (The class above)
class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    void answerQuestion() {
      // use the function setState for code that will change data and will update the ui
      setState(() {
        questionIndex = questionIndex + 1;
      });
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
