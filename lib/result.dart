import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback restart;

  Result(this.score, this.restart);

  String get resultPhrase {
    String resultText;

    if (score <= 20) {
      resultText = 'You are lame...';
    } else if (score <= 25) {
      resultText = 'You are okay~';
    } else {
      resultText = 'You are a great person!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: restart,
            child: Text('Restart Quiz!'),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.blue,
                shadowColor: Colors.transparent),
          )
        ],
      ),
    );
  }
}
