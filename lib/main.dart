import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// _ means private class
class _MyAppState extends State<MyApp> {
  var _questionIdx = 0;

  void _answerQuestion() {
    setState(() {
      _questionIdx++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'text': 'What\'s your favorite color?',
        'ans': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'text': 'What\'s your favorite animal?',
        'ans': ['Dog', 'Pig', 'Cat', 'Cow'],
      },
      {
        'text': 'What\'s your favorite person?',
        'ans': ['Dave', 'David', 'Dh', 'Me'],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My 1st App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIdx]['text'],
            ),
            ...(questions[_questionIdx]['ans'] as List<String>).map((a) {
              return Answer(_answerQuestion, a);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
