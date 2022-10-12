import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// _ means private class
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'text': 'What\'s your favorite color?',
      'ans': [
        {
          'text': 'Black',
          'score': 10,
        },
        {
          'text': 'White',
          'score': 5,
        },
        {
          'text': 'Red',
          'score': 3,
        },
        {
          'text': 'Blue',
          'score': 7,
        },
      ],
    },
    {
      'text': 'What\'s your favorite animal?',
      'ans': [
        {
          'text': 'Dog',
          'score': 10,
        },
        {
          'text': 'Pig',
          'score': 3,
        },
        {
          'text': 'Cat',
          'score': 2,
        },
        {
          'text': 'Cow',
          'score': 1,
        },
      ],
    },
    {
      'text': 'What\'s your favorite person?',
      'ans': [
        {
          'text': 'Dave',
          'score': 10,
        },
        {
          'text': 'David',
          'score': 10,
        },
        {
          'text': 'KT',
          'score': 9,
        },
        {
          'text': 'Kiki',
          'score': 8,
        },
      ],
    }
  ];

  var _questionIdx = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIdx++;
    });

    if (_questionIdx < _questions.length - 1) {
      print('We have more questions!');
    }
  }

  void _reset() {
    setState(() {
      _questionIdx = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My 1st App'),
        ),
        body: _questionIdx < _questions.length
            ? Quiz(
                questions: _questions,
                questionIdx: _questionIdx,
                answerQuestionCb: _answerQuestion,
              )
            : Result(_totalScore, _reset),
      ),
    );
  }
}
