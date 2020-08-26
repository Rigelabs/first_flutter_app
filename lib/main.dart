import 'package:flutter/material.dart';
import 'package:flutter_app_1/quiz.dart';
import 'package:flutter_app_1/result.dart';

import 'result.dart';
import 'quiz.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  final  _questions=  const [
    {'questionText': 'What\'s your favorite food ?',
      'answers':[{'text':'Beans','score':10},{'text':'Rice','score':5},{'text':'Ugali','score':3},{'text':'Kienyenji','score':15}]},
    {'questionText': 'what did you eat today ?',
      'answers':[{'text':'Beans','score':7},{'text':'Rice','score':13},{'text':'Ugali','score':15},{'text':'Kienyenji','score':4}]},
    {'questionText': 'when did you give birth ?',
      'answers':[{'text':'1991','score':5},{'text':'1994','score':8},{'text':'1990','score':9},{'text':'2013','score':10}]},
    {'questionText': 'where were your born ?',
      'answers':[{'text':'france','score':3},{'text':'Kenya','score':0},{'text':'Usa','score':0},{'text':'England','score':2}]},
  ];

  var _questionIndex=0;
  var _totalscore = 0;
  void _answer(int score) {
    _totalscore += score;
    setState(() {
      _questionIndex =_questionIndex +1;
    });
    if (_questionIndex< _questions.length){
      print('One more question');
    }


    print(_questionIndex);

  }
  @override
  Widget build(BuildContext context){

    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('My Best App'),),
      body: _questionIndex <_questions.length ?
          Quiz(answerQuestion: _answer,questionIndex: _questionIndex,questions: _questions,)
          : Result(_totalscore),


    ),
    );
  }

}