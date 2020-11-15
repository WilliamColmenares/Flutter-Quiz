import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int idx;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.idx,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questions[idx]['question']),
          ...(questions[idx]['options'] as List<Map<String, Object>>).map((el) {
            return Answer(() => answerQuestion(el['value']), el['text']);
          }).toList()
        ],
      ),
    );
  }
}
