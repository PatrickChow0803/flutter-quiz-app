import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // Function = Value stored in this property has to be a function and a pointer
  final Function selectHandeler;

  Answer(this.selectHandeler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Answer 1'),
        onPressed: selectHandeler,
      ),
    );
  }
}
