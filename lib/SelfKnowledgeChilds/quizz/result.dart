import 'package:flutter/material.dart';
import 'package:mmtaz/Screens/FirstScreen.dart';
import 'package:mmtaz/SelfKnowledgeChilds/menu.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'تو انجامش دادی';
    if (resultScore <= 8)
      resultText = 'شما عالی هستید!';
    else if (resultScore <= 12)
      resultText = 'بسیار دوست داشتنی!';
    else if (resultScore <= 16)
      resultText = 'تو عجیبی؟!';
    else
      resultText = 'تو خیلی بدی!!!';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            child: Text('دوباره امتحان کن'),
            onPressed: resetHandler,
          ),
          FlatButton(
            child: Text('بازگشت'),
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          FirstScreen()));
            },
          )
        ],
      ),
    );
  }
}
