import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function incrementCounter;
  final String optionText;
  Answer(this.incrementCounter, this.optionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(optionText),
        onPressed: incrementCounter,
        color: Colors.indigoAccent,
        textColor: Colors.white,
      ),
    );
  }
}
