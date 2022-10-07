import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// _ means private class
class _MyAppState extends State<MyApp> {
  var _qIdx = 0;

  void _ansQuestion() {
    setState(() {
      _qIdx++;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    var qs = [
      'What\'s your fav color?',
      'What\'s your fav animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My 1st App'),
        ),
        body: Column(
          children: [
            Question(qs[_qIdx]),
            ElevatedButton(
              child: Text('Ans 1'),
              onPressed: _ansQuestion,
            ),
            ElevatedButton(
              child: Text('Ans 2'),
              onPressed: _ansQuestion,
            ),
            ElevatedButton(
              child: Text('Ans 3'),
              onPressed: _ansQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
