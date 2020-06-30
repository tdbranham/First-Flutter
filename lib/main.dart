import 'package:flutter/material.dart';

void main() {
  runApp(TannersApp());
}

class TannersApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TannersAppState();
  }
}

class TannersAppState extends State<TannersApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('Midwest'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('East Coast'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('South'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('West Coast'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
