import 'package:flutter/material.dart';

class Question extends StatelessWidget {

   String theQuestion;

 Question(String x){

   this.theQuestion = x  ;

 }


  @override
  Widget build(BuildContext context) {

    return Container(

       margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(theQuestion,style: TextStyle( fontSize: 25,color: Colors.redAccent[400]),
       textAlign:  TextAlign.center,
       ),
    ) ;
  }
}