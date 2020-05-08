import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  const questions = [
    {
      "questionText": "What's your favoruite color?",
      "answers": ["Black", "Red", "Green"]
    },
    {
      "questionText": "What's your favourite furit",
      "answers": ["Apple", "Banana", "Orange"]
    }
    ];
  void answerQuestion() {
    setState(() {
      questionIndex++;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
 
    const questions = [
      {
        "questionText": "What's your favoruite color?",
        "answers": ["Black", "Red", "Green"]
      },
      {
        "questionText": "What's your favourite furit",
        "answers": ["Apple", "Banana", "Orange"]
      }
    ];
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("FirstApp"),
      ),
      body: Column(
        children: [
          Question(questions[questionIndex]["questionText"]),
          ...(questions[questionIndex]["answers"] as List<String>)
              .map((answer) => Answer(
                    answer: answer,
                    answerHandler: answerQuestion,
                  ))
              .toList()
          // Answer(answerQuestion),
          // Answer(answerQuestion),
          // Answer(answerQuestion),
        ],
      ),
    ));
  }
}

void main(List<String> args) {
  runApp(MyApp());
}
