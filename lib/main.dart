import 'package:flutter/material.dart';

void main() {
  runApp(TannersApp());
}

class TannersApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
        appBar: AppBar(title: Text('My First App'),), 
        body: Text('This is some default text!'),
      ),
    );
  }
}