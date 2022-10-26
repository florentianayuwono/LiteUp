import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_up/widgets/record_button.dart';
import 'package:permission_handler/permission_handler.dart';
import '../api/sound_recorder.dart';
import '../constants/style.dart';
import '../constants/text.dart';
import '../widgets/quiz_widget.dart';
import '../widgets/next_button.dart';

/* 
QuizScreen widget is stateful because it is our parent widget and therefore
all the functions and variables will be in this widget. As a consequence, we
will need to change the state of our widget.
*/
class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<String> Quizs = [
    for (var i = 0; i < quiz_1.length; i++)
      "// Quiz(title: quiz_1[i][0], content: quiz_1[i][1])"
  ];

  // Create an index to loop through Quizs
  int index = 0;

  // Create a function to display the next Quiz
  void nextQuiz() {
    if (index == Quizs.length - 1) {
      return;
    } else {
      setState(() {
        // Increments the index to rebuild the app to show next Quiz
        index++;
      });
    }
  }

  void previousQuiz() {
    if (index == 0) {
      return;
    } else {
      setState(() {
        // Decrements the index to rebuild the app to show previous Quiz
        index--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set background color
      backgroundColor: background,

      // Set the top app bar
      appBar: AppBar(
          title: Text('Level 1 Quiz',
              style: GoogleFonts.poppins(textStyle: appBarTitle)),
          backgroundColor: white,
          foregroundColor: Colors.black,
          elevation: 0),

      // Set the body of the app
      body: SingleChildScrollView(
          child: Container(
              decoration: primaryBackground,
              alignment: Alignment.center,
              child: Column(
                children: [
                  for (var i = 0; i < Quizs.length; i++)
                    // Add the Quiz widget
                    QuizWidget(level: index),
                ],
              ))),
    );
  }
}
