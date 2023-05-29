import 'package:coding_quiz_app/pages/quizPage.dart';
import 'package:flutter/material.dart';
class JavaWidget extends StatefulWidget{
  @override
  State<JavaWidget> createState() => _JavaWidgetState();
}

class _JavaWidgetState extends State<JavaWidget> {
  var questionsIndex=0;
  var finalscore=0;

  var questions=[
    {
      'question':'Who is the developer of Java?',
      'answers':[{'answer':'Bajarne Stroustrup','score':0},{'answer':'James Gosling','score':1},{'answer':'Dennis Ritchie','score':0},{'answer':'None','score':0}]
    },
    {
      'question':'In which year, Java was develpoed?',
      'answers':[{'answer':'1972','score':0},{'answer':'1980','score':0},{'answer':'1995','score':1},{'answer':'1994','score':0}]
    },
    {
      'question':'Which of the following is not the feature of Java?',
      'answers':[{'answer':'Simple','score':0},{'answer':'Secure','score':0},{'answer':'Platform independent','score':0},{'answer':'Lossy','score':1}]
    },
    {
      'question':'How many keywords in Java?',
      'answers':[{'answer':'32','score':0},{'answer':'62','score':1},{'answer':'48','score':0},{'answer':'52','score':0}]
    },
    {
      'question':'How many loops in Java?',
      'answers':[{'answer':'1','score':0},{'answer':'2','score':0},{'answer':'3','score':0},{'answer':'4','score':1}]
    },
    {
      'question':'How many access modifier in Java?',
      'answers':[{'answer':'1','score':0},{'answer':'2','score':0},{'answer':'3','score':0},{'answer':'4','score':1}]
    },
    {
      'question':'Which of the following is not an access modifier?',
      'answers':[{'answer':'Secure','score':1},{'answer':'Private','score':0},{'answer':'Public','score':0},{'answer':'Protected','score':0}]
    },
    {
      'question':'Which loop is an entry control loop?',
      'answers':[{'answer':'Do-While','score':0},{'answer':'While','score':0},{'answer':'For','score':0},{'answer':'Both (while & for)','score':1}]
    },
    {
      'question':'Which of the following approach is adapted by Java?',
      'answers':[{'answer':'Top-Down','score':0},{'answer':'Bottom-Up','score':1},{'answer':'Low High','score':0},{'answer':'High Low','score':0}]
    },
    {
      'question':'J2SE stand for?',
      'answers':[{'answer':'Java 2 standard entriprice','score':0},{'answer':'Java 2 simple edition','score':0},{'answer':'Java 2 standard edition','score':1},{'answer':'Java 2 security edition','score':0}]
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
                Text('JAVA',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
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