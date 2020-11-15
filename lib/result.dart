import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double finalScore;
  final Function resetQuiz;

  String get resultText {
    String text;
    if (finalScore <= 20) {
      text = 'pretty lame';
    } else {
      text = 'nothing bad';
    }
    return text;
  }

  Result(this.finalScore, this.resetQuiz);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text(
              'Restart',
              style: TextStyle(fontSize: 20),
            ),
            textColor: Colors.indigoAccent,
          )
        ],
      ),
    );
  }
}
