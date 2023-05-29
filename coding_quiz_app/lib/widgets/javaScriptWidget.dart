import 'package:coding_quiz_app/pages/quizPage.dart';
import 'package:flutter/material.dart';
class JavaScriptWidget extends StatefulWidget{
  @override
  State<JavaScriptWidget> createState() => _JavaScriptWidgetState();
}

class _JavaScriptWidgetState extends State<JavaScriptWidget> {
  var questionsIndex=0;
  var finalscore=0;

  var questions=[
    {
      'question':'Who is the developer of JavaScript?',
      'answers':[{'answer':'Bajarne Stroustrup','score':0},{'answer':'Brendan Eich','score':1},{'answer':'Dennis Ritchie','score':0},{'answer':'None','score':0}]
    },
    {
      'question':'In which year, JavaScript was develpoed?',
      'answers':[{'answer':'1972','score':0},{'answer':'1980','score':0},{'answer':'1995','score':1},{'answer':'1994','score':0}]
    },
    {
      'question':'Javascript is an _______ language?',
      'answers':[{'answer':'object oriented Programming','score':1},{'answer':'Object Based programming','score':0},{'answer':'Procedural programming','score':0},{'answer':'None','score':0}]
    },
    {
      'question':'Which of the following keywords is used to define a variable in Javascript?',
      'answers':[{'answer':'Var','score':0},{'answer':'Let','score':0},{'answer':'Both A & B','score':1},{'answer':'None of the Above','score':0}]
    },
    {
      'question':'Which of the following methods is used to access HTML elements using Javascript?',
      'answers':[{'answer':'GetElementById()','score':0},{'answer':'GetElementByClassName()','score':0},{'answer':'Both A & B','score':1},{'answer':'None of the Above','score':0}]
    },
    {
      'question':'Upon encountering empty statements, what does the Javascript Interpreter do?',
      'answers':[{'answer':'Throws an error','score':0},{'answer':'Ignore the Statement','score':1},{'answer':'Gives a warning','score':0},{'answer':'None','score':0}]
    },
    {
      'question':'Which of the following methods can be used to display data in some form using Javascript?',
      'answers':[{'answer':'Document.write()','score':0},{'answer':'Console.log()','score':0},{'answer':'Window.alert()','score':0},{'answer':'All of the Above','score':1}]
    },
    {
      'question':'How can a datatype be declared to be a constant type?',
      'answers':[{'answer':'Const','score':1},{'answer':'var','score':0},{'answer':'Let','score':0},{'answer':'constant','score':0}]
    },
    {
      'question':'When the switch statement matches the expression with the given labels, how is the comparison done?',
      'answers':[{'answer':'Both the datatype and the result of the expression are compared','score':1},{'answer':'only the datatype of the expression is compared','score':0},{'answer':'Only the value of the expression is compared','score':0},{'answer':'None','score':0}]
    },
    {
      'question':'What keyword is used to check whether a given property is valid or not?',
      'answers':[{'answer':'In','score':1},{'answer':'Is In','score':0},{'answer':'Exit','score':0},{'answer':'Lies','score':0}]
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
            Text('JAVA SCRIPT',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
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