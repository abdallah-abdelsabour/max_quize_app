
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

   final  Function answerHandler;
   final String answeText ;

   Answer(this.answerHandler,this.answeText);

  @override
  Widget build(BuildContext context) {

    return Container(
     // color: Colors.blue,
      width: double.infinity,
      child: RaisedButton(onPressed: answerHandler,
      // textColr: ,
      child: Text(this.answeText),),
    );
  }
}