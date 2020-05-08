import 'package:flutter/material.dart';
import "./quiz.dart";
import "./result.dart";

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      "questionText": "What's your favoruite color?",
      "answers": [
        {
          "text": "Black",
          "score": 10,
        },
        {
          "text": "Red",
          "score": 5,
        },
        {
          "text": "Green",
          "score": 2,
        },
      ]
    },
    {
      "questionText": "What's your favourite fruit",
      "answers": [
        {
          "text": "Apple",
          "score": 10,
        },
        {
          "text": "Orange",
          "score": 5,
        },
        {
          "text": "Grapes",
          "score": 2,
        },
      ]
    }
  ];

  int _totalScore = 0;
  Function _answerQuestion(int score) => () {
        if (_questionIndex < _questions.length) {
          _totalScore += score;
          setState(() {
            _questionIndex++;
          });
        }
      };

  void _resetQuiz(){
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("FirstApp"),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    answerHanlder: _answerQuestion,
                    questionIndex: _questionIndex,
                  )
                : Result(resultScore: _totalScore, resetHandler: _resetQuiz,)));
  }
}

void main(List<String> args) {
  runApp(MyApp());
}
