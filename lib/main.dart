import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(TannersApp());
}

class TannersApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _TannersAppState();
  }
}

class _TannersAppState extends State<TannersApp> {
  final _questions = const [
    {
      'questionText': 'What US region did you grow up in?',
      'answers': [
        {'text': 'East Coast', 'score': 10},
        {'text': 'West Coast', 'score': 7},
        {'text': 'South', 'score': 2},
        {'text': 'Midwest', 'score': 5}
      ],
    },
    {
      'questionText': 'Where is your dream city?',
      'answers': [
        {'text': 'Seattle', 'score': 10},
        {'text': 'Los Aneles', 'score': 7},
        {'text': 'New York', 'score': 2},
        {'text': 'Chicago', 'score': 5}
      ],
    },
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 7},
        {'text': 'Green', 'score': 2},
        {'text': 'Purple', 'score': 5}
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('Next question');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
