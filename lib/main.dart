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
      'answers': ['East Coast', 'West Coast', 'South', 'Midwest'],
    },
    {
      'questionText': 'Where is your dream city?',
      'answers': ['Seattle', 'Los Angeles', 'New York'],
    },
    {
      'questionText': 'What is your favorite color?',
      'answers': ['Blue', 'Green', 'Red'],
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
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
            : Result(),
      ),
    );
  }
}
