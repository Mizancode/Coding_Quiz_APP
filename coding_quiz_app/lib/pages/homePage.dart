import 'dart:async';
import 'package:coding_quiz_app/pages/quizPage.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool onChanged=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 350.0),
          child: Column(
            children: [
              Text('Welcome To Coding Quiz',style: TextStyle(color: Colors.cyanAccent,fontSize: 29,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 5.0,
              ),
              Text('Play coding quiz then prees the below button',style: TextStyle(color: Colors.white,),),
              SizedBox(
                height: 20.0,
              ),
              Material(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20.0),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      onChanged=true;
                      Timer(Duration(seconds: 1),(){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>QuizPage()));
                      });
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 40,
                    width: onChanged?45:90,
                    alignment: Alignment.center,
                    child: onChanged?Icon(Icons.done,color: Colors.white,):Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}