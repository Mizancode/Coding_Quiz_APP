import 'package:coding_quiz_app/pages/quizPage.dart';
import 'package:flutter/material.dart';
class C3Widget extends StatefulWidget{
  @override
  State<C3Widget> createState() => _C3WidgetState();
}

class _C3WidgetState extends State<C3Widget> {
  var questionsIndex=0;
  var finalscore=0;

  var questions=[
    {
      'question':'Who is the founder of C# programming language?',
      'answers':[{'answer':'Anders Hejlsberg','score':1},{'answer':'Douglas Crockford','score':0},{'answer':'Rasmus Lerdorf','score':0},{'answer':'Dr. E.F Code','score':0}]
    },
    {
      'question':'In which year, C# was develpoed?',
      'answers':[{'answer':'1972','score':0},{'answer':'2002','score':0},{'answer':'2000','score':1},{'answer':'1999','score':0}]
    },
    {
      'question':'C# is a programming language, developed by ___.?',
      'answers':[{'answer':'Oracle','score':0},{'answer':'Microsoft','score':1},{'answer':'GNU project','score':0},{'answer':'Google','score':0}]
    },
    {
      'question':'C# runs on the ___.?',
      'answers':[{'answer':'.NET Framework','score':1},{'answer':'Java Virtual Machine','score':0},{'answer':'Both A. and B.','score':0},{'answer':'None of the above','score':0}]
    },
    {
      'question':'C# programming language is used to develop?',
      'answers':[{'answer':'Web apps','score':0},{'answer':'Desktop apps','score':0},{'answer':'Mobiles apps','score':0},{'answer':'All of the above','score':1}]
    },
    {
      'question':'What is the extension of a C# language file?',
      'answers':[{'answer':'.c','score':0},{'answer':'.cpp','score':0},{'answer':'.cs','score':1},{'answer':'.csp','score':0}]
    },
    {
      'question':' CLR stands for ___.?',
      'answers':[{'answer':'Common Type System','score':0},{'answer':'Common Language Specification','score':0},{'answer':'Common Language Runtime','score':1},{'answer':'Java Virtual Machine','score':0}]
    },
    {
      'question':'.Net CLR is equivalent to?',
      'answers':[{'answer':'Common Type System','score':0},{'answer':'Common Language Specification','score':0},{'answer':'Common Language Runtime','score':0},{'answer':'Java Virtual Machine','score':1}]
    },
    {
      'question':'What is CLR in C#?',
      'answers':[{'answer':'It is a virtual machine component of Microsoft .NET Framework','score':1},{'answer':'It is a virtual machine component of JVM','score':0},{'answer':'SIt is a compiler to compiler the C# code','score':0},{'answer':'All of the above','score':0}]
    },
    {
      'question':'PSOAP in C# stands for ___.?',
      'answers':[{'answer':'Simple Object Access Protocol','score':1},{'answer':'Simple Object Access Program','score':0},{'answer':'Standard Object Access Protocol','score':0},{'answer':'Standard Object Access Program','score':0}]
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
            Text('C#',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
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