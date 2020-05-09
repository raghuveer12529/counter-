import 'package:flutter/material.dart';
import '../models/Marks.dart';


class MarkList extends StatelessWidget {
  final List<Marks> marks;

  MarkList(this.marks);
  

  @override
  Widget build(BuildContext context) {
    return Column(
            children: marks.map((tx) {
              return Card(
                child:Row(
                  children: <Widget>[
                Container(
                  height:50 ,
                  child:Column(
                  children:<Widget>[
                    Text(tx.username ),
                    Text(tx.securedMarks.toString())
                    ],
                  )
                ),
                ],
                ) ,
                );
            }).toList(),
          );
  }
}