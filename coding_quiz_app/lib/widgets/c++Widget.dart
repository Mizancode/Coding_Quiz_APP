import 'package:coding_quiz_app/pages/quizPage.dart';
import 'package:flutter/material.dart';
class C2Widget extends StatefulWidget{
  @override
  State<C2Widget> createState() => _C2WidgetState();
}

class _C2WidgetState extends State<C2Widget> {
  var questionsIndex=0;
  var finalscore=0;

  var questions=[
    {
      'question':'Who is the father of C++ language?',
      'answers':[{'answer':'Bajarne Stroustrup','score':1},{'answer':'James A.Gosling','score':0},{'answer':'Dennis Ritchie','score':0},{'answer':'Dr. E.F Code','score':0}]
    },
    {
      'question':'In which year, C++ was develpoed?',
      'answers':[{'answer':'1972','score':0},{'answer':'1979','score':1},{'answer':'1995','score':0},{'answer':'1994','score':0}]
    },
    {
      'question':'C++ programming used to develop?',
      'answers':[{'answer':'Games','score':0},{'answer':'Desktop Apps','score':0},{'answer':'OS','score':0},{'answer':'All of Above','score':1}]
    },
    {
      'question':'How many keywords in C++?',
      'answers':[{'answer':'32','score':0},{'answer':'62','score':0},{'answer':'48','score':0},{'answer':'None','score':1}]
    },
    {
      'question':'How many loops in C++?',
      'answers':[{'answer':'1','score':0},{'answer':'2','score':0},{'answer':'3','score':1},{'answer':'4','score':0}]
    },
    {
      'question':'While loop is _________ type Controlled of loop?',
      'answers':[{'answer':'Entry','score':1},{'answer':'Count','score':0},{'answer':'Exit','score':0},{'answer':'None','score':0}]
    },
    {
      'question':'do While loop is _________ type Controlled of loop?',
      'answers':[{'answer':'Entry','score':0},{'answer':'Count','score':0},{'answer':'Exit','score':1},{'answer':'None','score':0}]
    },
    {
      'question':'C++ programs are converted into machine language with the help of?',
      'answers':[{'answer':'Interpreter','score':0},{'answer':'Assembler','score':0},{'answer':'Linker','score':0},{'answer':'Complier','score':1}]
    },
    {
      'question':'Which type of C++ language is?',
      'answers':[{'answer':'Procedural Oriented programming','score':0},{'answer':'Object Oriented Programming','score':1},{'answer':'Semi Object Oriented Programming','score':0},{'answer':'None','score':0}]
    },
    {
      'question':'Preprocessor command starts with?',
      'answers':[{'answer':'*','score':0},{'answer':'&','score':0},{'answer':'#','score':1},{'answer':'%','score':0}]
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
            Text('C++',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
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