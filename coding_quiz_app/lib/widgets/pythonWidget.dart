import 'package:coding_quiz_app/pages/quizPage.dart';
import 'package:flutter/material.dart';
class PythonWidget extends StatefulWidget{
  @override
  State<PythonWidget> createState() => _PythonWidgetState();
}

class _PythonWidgetState extends State<PythonWidget> {
  var questionsIndex=0;
  var finalscore=0;

  var questions=[
    {
      'question':'What is the maximum length of a Python identifier?',
      'answers':[{'answer':'32','score':0},{'answer':'16','score':0},{'answer':'128','score':0},{'answer':'No fixed length specified','score':1}]
    },
    {
      'question':'In which year, Python was develpoed?',
      'answers':[{'answer':'1991','score':1},{'answer':'1990','score':0},{'answer':'1995','score':0},{'answer':'1994','score':0}]
    },
    {
      'question':'How is a code block indicated in Python?',
      'answers':[{'answer':'Bracket','score':0},{'answer':'Identation','score':1},{'answer':'Key','score':0},{'answer':'None of the Above','score':0}]
    },
    {
      'question':'Which of the following concepts is not a part of Python?',
      'answers':[{'answer':'Pointers','score':1},{'answer':'Loop','score':0},{'answer':'Dynamic typing','score':0},{'answer':'All of the Above','score':0}]
    },
    {
      'question':'Which of the following statements are used in Exception Handling in Python?',
      'answers':[{'answer':'Try','score':0},{'answer':'Except','score':0},{'answer':'Finally','score':0},{'answer':'All of the Above','score':1}]
    },
    {
      'question':'Which of the following types of loops are not supported in Python?',
      'answers':[{'answer':'For','score':0},{'answer':'while','score':0},{'answer':'Do while','score':1},{'answer':'None','score':0}]
    },
    {
      'question':'Which of the following is the proper syntax to check if a particular element is present in a list?',
      'answers':[{'answer':'If else in list','score':0},{'answer':'if not else not in list','score':0},{'answer':'Both A & B','score':1},{'answer':'None','score':0}]
    },
    {
      'question':'Which of the following functions converts date to corresponding time in Python?',
      'answers':[{'answer':'StrpTime()','score':1},{'answer':'StrfTime()','score':0},{'answer':'Both A & B','score':0},{'answer':'None','score':0}]
    },
    {
      'question':'As what datatype are the *args stored, when passed into a function?',
      'answers':[{'answer':'List.','score':0},{'answer':'Tuple.','score':1},{'answer':'Dictionary.','score':0},{'answer':'None of the Above','score':0}]
    },
    {
      'question':'As what datatype are the *kwargs stored, when passed into a function?',
      'answers':[{'answer':'List.','score':0},{'answer':'Tuple.','score':0},{'answer':'Dictionary.','score':1},{'answer':'None of the Above','score':0}]
    },
  ];

  @override
  Widget build(BuildContext context) {
    indexIncrement(int score){
      setState(() {
        finalscore+=score;
        questionsIndex++;
      });
    }

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:questionsIndex<questions.length? Column(
          children: [
            Text('Python',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
            SizedBox(
              height: 15.0,
            ),
            Text(questions[questionsIndex]['question'] as String,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(
              height: 10.0,
            ),
            ...(questions[questionsIndex]['answers']as List<Map<String,dynamic>>).map((answer) => Container(width: double.infinity,
                child: ElevatedButton(onPressed: ()=> indexIncrement(answer['score']), child: Text(answer['answer'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)
                ),))).toList(),
          ],
        ): Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You have Scored ${finalscore}',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
                SizedBox(
                  height: 3.0,
                ),
                ElevatedButton(onPressed: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>QuizPage())), child: Text('Restart',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),style: ButtonStyle(
                  shape: MaterialStatePropertyAll(StadiumBorder()),
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}