import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(TannersApp());
}

class TannersApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TannersAppState();
  }
}

class _TannersAppState extends State<TannersApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What US region did you grow up in?',
      'Where is your dream city?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Midwest'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('East Coast'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('South'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('West Coast'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
