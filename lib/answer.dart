import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function stateHandler;
  final String answerText;
  final int answerScore;

  Answer(this.stateHandler, this.answerText, this.answerScore);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: () => stateHandler(answerScore),
      ),
    );
  }
}
