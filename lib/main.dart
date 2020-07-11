import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  final questions = const [
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
    if ( _questionIndex < questions.length) {
      print('Next question')
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
