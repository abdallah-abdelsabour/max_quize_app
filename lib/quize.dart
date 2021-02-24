import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quize extends StatelessWidget {
  int index;

  final qs;

  final Function nq;

  Quize({
     @required this.index,
     @required this.qs,
     @required  this.nq});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(qs[index]["questionText"]),

          ...(qs[index]['answers'] as List<Map<String,Object>>).map((answ) {

            return Answer(()=>nq(answ['score']), answ['text']);
          }).toList()
        ],
      ),
    );
  }
}
