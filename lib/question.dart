import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String qText;

  Question(this.qText); // Constructor

  @override
  Widget build(BuildContext ctx) {
    return Text(qText);
  }
}
