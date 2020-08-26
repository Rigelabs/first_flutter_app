import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);
  String get resultPhrase{
    String  resultText;
    if (resultScore <=10){
      resultText ="You are a amateur";
    }else if(resultScore <=10){
        resultText ='You are starange';
    }else{
      resultText='Don\'t bother ';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(resultPhrase, style: TextStyle(fontSize: 34))
    );
  }
}
