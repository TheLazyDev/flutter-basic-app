import 'package:flutter/material.dart';
import "./question.dart";
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerHanlder;

  Quiz({@required this.questions,@required this.answerHanlder, @required  this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["questionText"]),
        ...(questions[questionIndex]["answers"] as List<Map<String,Object>>)
            .map((answer) => Answer(
                  answer: answer["text"],
                  answerHandler: answerHanlder(answer["score"]),
                ))
            .toList()
        // Answer(answerQuestion),
        // Answer(answerQuestion),
        // Answer(answerQuestion),
      ],
    );
  }
}
