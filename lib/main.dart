// import 'package:cards_counter/secondPage.dart';
import 'package:flutter/material.dart';
import './models/user.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      home: User(),
      debugShowCheckedModeBanner: false,
    );
  }
}
  
 

    