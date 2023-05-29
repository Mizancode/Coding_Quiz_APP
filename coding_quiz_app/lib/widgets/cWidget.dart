import 'package:coding_quiz_app/pages/quizPage.dart';
import 'package:flutter/material.dart';
class CWidget extends StatefulWidget{
  @override
  State<CWidget> createState() => _CWidgetState();
}

class _CWidgetState extends State<CWidget> {
  var questionsIndex=0;
  var finalscore=0;

  var questions=[
    {
      'question':'Who is the father of C language?',
      'answers':[{'answer':'Bajarne Stroustrup','score':0},{'answer':'James A.Gosling','score':0},{'answer':'Dennis Ritchie','score':1},{'answer':'Dr. E.F Code','score':0}]
    },
    {
      'question':'In which year, C was develpoed?',
      'answers':[{'answer':'1972','score':1},{'answer':'1980','score':0},{'answer':'1995','score':0},{'answer':'1994','score':0}]
    },
    {
      'question':'Which of the following function is user defined?',
      'answers':[{'answer':'Scanf','score':0},{'answer':'Printf','score':0},{'answer':'Main','score':1},{'answer':'None','score':0}]
    },
    {
      'question':'How many keywords in C?',
      'answers':[{'answer':'32','score':1},{'answer':'62','score':0},{'answer':'48','score':0},{'answer':'52','score':0}]
    },
    {
      'question':'How many loops in C?',
      'answers':[{'answer':'1','score':0},{'answer':'2','score':0},{'answer':'3','score':1},{'answer':'4','score':0}]
    },
    {
      'question':'Void occupy how many bytes in memory?',
      'answers':[{'answer':'0','score':1},{'answer':'1','score':0},{'answer':'2','score':0},{'answer':'3','score':0}]
    },
    {
      'question':'What is the range of int datatype?',
      'answers':[{'answer':'0 to 255','score':0},{'answer':'-127 to +128','score':0},{'answer':'-32768 to 32767','score':1},{'answer':'None','score':0}]
    },
    {
      'question':'What is the range of char datatype?',
      'answers':[{'answer':'0 to 255','score':0},{'answer':'-127 to 128','score':1},{'answer':'0 to 127','score':0},{'answer':'None','score':0}]
    },
    {
      'question':'Which type of C language is?',
      'answers':[{'answer':'Procedural Oriented programming','score':1},{'answer':'Object Oriented Programming','score':0},{'answer':'Semi Object Oriented Programming','score':0},{'answer':'None','score':0}]
    },
    {
      'question':'The format identifier %c is used for which datatype?',
      'answers':[{'answer':'Integer','score':0},{'answer':'Double','score':0},{'answer':'Char','score':1},{'answer':'Float','score':0}]
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
            Text('C',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
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