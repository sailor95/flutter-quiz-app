import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIdx;
  final Function answerQuestionCb;

  Quiz({
    @required this.questions,
    @required this.questionIdx,
    @required this.answerQuestionCb,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIdx]['text'],
        ),
        ...(questions[questionIdx]['ans'] as List<Map<String, Object>>)
            .map((a) {
          return Answer(() => answerQuestionCb(a['score']), a['text']);
        }).toList(),
      ],
    );
  }
}
