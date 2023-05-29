import 'package:flutter/material.dart';
class QuizPageHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text('Quiz Topics',style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),textScaleFactor: 1.5,),
      Text('10 Question of each topic given',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
     ]
    );
  }
}