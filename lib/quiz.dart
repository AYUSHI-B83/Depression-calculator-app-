import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>>questions;
  final Function ansques;
  final int quesindex;
  Quiz({@required this.questions,@required  this.ansques,@required  this.quesindex});

  @override
  Widget build(BuildContext context) {
    return Column(
        children:[
          Question(questions[quesindex]['questionText']),
        ...(questions[quesindex]['answers'] as List<Map<String,Object>>).map((answer){
          return Answer(()=>ansques(answer['score']),answer['text']);
        }).toList()
        ],
  
      
    );
  }
}