import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  String get resultPhrase {
    var resultText = "You are bad!";
    if (resultScore <= 8) {
      resultText = "You are awesome";
    } else if (resultScore <= 12) {
      resultText = "Pretty likable";
    } else if (resultScore <= 16) {
      resultText = "You are ... strange?";
    }
    return resultText;
  }

  Result({this.resultScore,this.resetHandler });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(child: Text("Restart Quiz!"), onPressed: resetHandler,textColor: Colors.blue,)
        ],
      ),
    );
  }
}
