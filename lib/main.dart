import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  static const questions = [
    {
      "questionText": "What's your fav color ?",
      "answers": [
        {
          'text': 'Black',
          'score': 10,
        },
        {
          'text': 'Blue',
          'score': 100,
        },
        {
          'text': 'Pink',
          'score': 100,
        },
        {
          'text': 'Green',
          'score': 50,
        }
      ],
    },
    {
      "questionText": "What's your fav food ?",
      "answers": [
        {
          'text': 'Burger',
          'score': 50,
        },
        {
          'text': 'Salad',
          'score': 100,
        },
        {
          'text': 'Pizza',
          'score': 70,
        },
        {
          'text': 'Noodles',
          'score': 40,
        }
      ],
    },
    {
      "questionText": "Who's your fav footballer ?",
      "answers": [
        {
          'text': 'Cristiano Ronaldo',
          'score': 100,
        },
        {
          'text': 'Lionel Messi',
          'score': 90,
        },
        {
          'text': 'Gerad Piqque',
          'score': 40,
        },
        {
          'text': 'David de Gea',
          'score': 80,
        }
      ],
    },
  ];

  void _answerChosen(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore = _totalScore + score;
    });
  }

  void reset() => setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < questions.length
              ? Quiz(
                  questions: questions,
                  answerChosen: _answerChosen,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore, reset)),
    );
  }
}
