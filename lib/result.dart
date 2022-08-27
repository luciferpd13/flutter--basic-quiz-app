import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;

  Result(this.score, this.reset);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          'You did it ! Your total score is ' + score.toString(),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          child: Text('Reset'),
          textColor: Colors.blue,
          onPressed: reset,
        )
      ],
    ));
  }
}
