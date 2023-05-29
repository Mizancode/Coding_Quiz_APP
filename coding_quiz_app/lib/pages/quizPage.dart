import 'package:coding_quiz_app/widgets/c++Widget.dart';
import 'package:coding_quiz_app/widgets/c3Widget.dart';
import 'package:coding_quiz_app/widgets/cWidget.dart';
import 'package:coding_quiz_app/widgets/javaWidget.dart';
import 'package:coding_quiz_app/widgets/pythonWidget.dart';
import 'package:coding_quiz_app/widgets/quizPageHeader.dart';
import 'package:flutter/material.dart';

import '../models/topicModel.dart';
import '../widgets/javaScriptWidget.dart';
class QuizPage extends StatelessWidget{
  var callWidgets=[
    JavaWidget(),
    CWidget(),
    C2Widget(),
    PythonWidget(),
    JavaScriptWidget(),
    C3Widget()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade700,
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0,left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuizPageHeader(),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 350,
              child: ListView.builder(
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Card(
                        color: Colors.grey.shade700,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.arrow_forward_rounded,color: Colors.white,),
                                Text(TopicList.topic[index].name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
                                ElevatedButton(onPressed: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>callWidgets[index]));
                                }, child: Text('GO',style: TextStyle(color: Colors.white),),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.deepPurple)
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                itemCount: TopicList.topic.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}