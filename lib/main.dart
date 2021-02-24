import 'package:flutter/material.dart';

import './quize.dart';
import './result.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  var qIndex = 0;
  int _score = 0;

  void nextuestion(int score) {
    _score += score;

    setState(() {
      qIndex += 1;
    });
  }

  void  resetIndex(){
   setState(() {
     
     this.qIndex=0;
     this._score = 0;

   print('res _________________________________');
   });
   

  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: "this is app",

      home: SafeArea(

          child: Scaffold(

        appBar: AppBar(

          leading: Icon(Icons.access_alarms),
          title: Center(child: Text("quize App  ")),
        ),
        body: qIndex < questions.length
            ? Quize(index: qIndex, qs: questions, nq: nextuestion)
            : Result(_score,resetIndex),
      )),
    );
  }


}
