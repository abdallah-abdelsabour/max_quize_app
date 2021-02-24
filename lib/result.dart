import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  final Function resetFunction;

  Result(this._score,this.resetFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container( 
                padding: EdgeInsets.all(10),
                color: Colors.blueGrey[50],
                child: Text(" congratulation ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green))),
          ),
          Text('  Score :$_score',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreenAccent[400])),
          RaisedButton(
           child:Text('restart the Test  Again ') ,
            onPressed: ()=>resetFunction())
        ],
      ),
    );
  }
}
