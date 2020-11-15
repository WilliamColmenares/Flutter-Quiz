import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _i = 0;
  double _totalScore = 0;
  final _questions = const [
    {
      'question': 'What IDE you\'re currently using?',
      'options': [
        {'text': 'VIM', 'value': 7.2},
        {'text': 'Vscode', 'value': 6.5},
        {'text': 'PyCharm', 'value': 6.5},
        {'text': 'Notepad++', 'value': 4.7},
        {'text': 'Emacs', 'value': 6.3}
      ],
    },
    {
      'question': 'What\'s your prefered programming language?',
      'options': [
        {'text': 'Python', 'value': 7.6},
        {'text': 'Javascript', 'value': 7.2},
        {'text': 'Java', 'value': 3.2},
        {'text': 'C#', 'value': 8.3},
        {'text': 'PHP', 'value': 0.0}
      ],
    },
    {
      'question': 'What OS do you use',
      'options': [
        {'text': 'Windows', 'value': 2.1},
        {'text': 'Mac', 'value': 5.6},
        {'text': 'Ubuntu', 'value': 7.2},
        {'text': 'Arch Linux', 'value': 8.7},
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _i = 0;
    });
  }

  void _answerQuestion(double score) {
    if (_i < _questions.length) {
      setState(() {
        _i++;
      });
    }
    _totalScore += score;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quizz App'),
        backgroundColor: Color(0xff2d2d6d),
      ),
      body: _i < _questions.length
          ? Quiz(
              questions: _questions,
              idx: _i,
              answerQuestion: _answerQuestion,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
