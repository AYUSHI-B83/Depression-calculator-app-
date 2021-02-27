import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}
  class MyAppState extends State<MyApp>{
  int quesindex=0;
   var questions=[
      {'questionText':'How often have you been bothered by feeling down,depressed or hopeless?','answers':[
        {'text':'Not at all','score':10},{'text':'Several days','score':7},{'text':'More than half the days','score':5},{'text':'Nearly every day','score':2}
      ],
      },
      {'questionText':'How often have you little interest or no interest in doing things?','answers':[
        {'text':'Not at all','score':10},{'text':'Several days','score':7},{'text':'More than half the days','score':5},{'text':'Nearly every day','score':2}
      ],
      },
      {'questionText':'How often have you been bothered by trouble falling sleep or sleeping too muc?','answers':[
        {'text':'Not at all','score':10},{'text':'Several days','score':7},{'text':'More than half the days','score':5},{'text':'Nearly every day','score':2}
      ],
      },
      {'questionText':'How often have you been bothered by feeling tired or having little energy?','answers':[
        {'text':'Not at all','score':10},{'text':'Several days','score':7},{'text':'More than half the days','score':5},{'text':'Nearly every day','score':2}
      ],
      },
     
      {'questionText':'How often have you been bothered by feeling bad about youself,or that you are a failure,or have let yourself or your family down?','answers':[
        {'text':'Not at all','score':10},{'text':'Several days','score':7},{'text':'More than half the days','score':5},{'text':'Nearly every day','score':2}
      ],
      },
      {'questionText':'How often have you been bothered by trouble concentating on things?','answers':[
        {'text':'Not at all','score':10},{'text':'Several days','score':7},{'text':'More than half the days','score':5},{'text':'Nearly every day','score':2}
      ],
      },
      {'questionText':'How often have you been bothered by feeling nervous,anxious or on an edge?','answers':[
        {'text':'Not at all','score':10},{'text':'Several days','score':7},{'text':'More than half the days','score':5},{'text':'Nearly every day','score':2}
      ],
      },
      {'questionText':'Have you had an anxiety attack?','answers':[
        {'text':'Yes','score':0},{'text':'No','score':10}
      ],
      },
      {'questionText':'How often have you been bothered by worrying too much about different things ?','answers':[
        {'text':'Not at all','score':10},{'text':'Several days','score':7},{'text':'More than half the days','score':5},{'text':'Nearly every day','score':2}
      ],
      },
      {'questionText':'How often have you been borthered by becoming easily annoyed or irritable?','answers':[
        {'text':'Not at all','score':10},{'text':'Several days','score':7},{'text':'More than half the days','score':5},{'text':'Nearly every day','score':2}
      ],
      },
      
      ];
      var totalscore=0;
      void reset(){
        setState((){
        quesindex=0;
        totalscore=0;
        });
        
      }
  void ansques(int score){
    totalscore+=score;
    if(quesindex<questions.length){
    }
    setState(() {
      quesindex=quesindex+1;
      print(quesindex);
    });
    print(quesindex);
  }
  @override
  Widget build(BuildContext context){
   
    return MaterialApp(home:Scaffold(
      appBar:AppBar(
        backgroundColor:Color(0xFF880E47),
        title:Text('Test youself'),),
      body:quesindex<questions.length ? Quiz(ansques:ansques,questions:questions,quesindex:quesindex)
       : Result(totalscore,reset),
    
    ),
    ); 
  }
}