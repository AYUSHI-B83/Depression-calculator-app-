import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore,this.resetHandler);
  String get phrase{
    String resultPhrase;
    if(resultScore<=25){
      resultPhrase='You need a therapy. You are suffering from serious depression!!';
    } else if(resultScore<=50){
      resultPhrase='You are suffering from depression.Try getting some help from your trustful ones';
    } else if(resultScore<=70){
      resultPhrase='You arent entirely fine.There sre some things disturbing you. Try being around positive people';
    }else if(resultScore<=90){
      resultPhrase='You are good to go.Stay positive,Stay active!!';
    }
    else{
      resultPhrase='do better';
    }
    
    return resultPhrase;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
        margin:EdgeInsets.all(10),
      child:Column(
      
      children: [
        
        Text(phrase,
        style: TextStyle(
        fontSize: 40,
        
        color:Colors.pinkAccent[400]
       ),
        ),
        //FlatButton(onPressed: resetHandler, child: Text('Restart'))

      const SizedBox(height: 30),
          RaisedButton(
            onPressed: resetHandler,
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFFC51162),
                    Color(0xFFF50057),
                    Color(0xFFEC407A),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child:
                  const Text('Restart', style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
     

      
    ),
      
    );
  }
}