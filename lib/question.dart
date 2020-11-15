import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50, top: 50),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 38),
        textAlign: TextAlign.center,
      ),
    );
  }
}
