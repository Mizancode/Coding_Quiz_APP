import 'package:coding_quiz_app/pages/homePage.dart';
import 'package:coding_quiz_app/pages/quizPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main()=>runApp(MyMain());
class MyMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: HomePage(),
    );
  }
}