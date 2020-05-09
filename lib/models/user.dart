
import 'package:cards_counter/widgets/Marks_list.dart';

import '../widgets/new_user.dart';
import 'package:flutter/material.dart';
import '../widgets/Marks_list.dart';
import './Marks.dart';
import 'package:cards_counter/widgets/new_user.dart';


class User extends StatefulWidget {

  @override
  _UserState createState() => _UserState();
}

 class _UserState extends State<User> {
   final List<Marks> _markSecured =[
    Marks(securedMarks: 24,username: "Raghuveer"),
    Marks(securedMarks: 24,username: "going "),
  ];

  void _addNewMarks(String username,String securedMarks){
    final newMarks = new Marks(username: username,securedMarks:int.parse(securedMarks));
    setState(() {
      _markSecured.add(newMarks);
    });
  }
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('User Page')
      ),
      body:SingleChildScrollView(
        child:
      Column( 
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            // width: double.infinity,
            height:70,
            padding: EdgeInsets.all(10),
            child:Card(
            child:Text('Test',
            style: TextStyle(fontWeight:FontWeight.bold),
            textAlign: TextAlign.center,
            ),
            color: Colors.blue,
            elevation :5,
            margin: EdgeInsets.all(10),
          )
          ),
           NewUser(_addNewMarks),
            MarkList(_markSecured),
        ]
        )
      )  
    );
  }
}


