import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_up/widgets/blueEnd_button.dart';
import 'package:lite_up/widgets/record_button.dart';
import 'package:permission_handler/permission_handler.dart';
import '../api/sound_recorder.dart';
import '../constants/style.dart';
import '../constants/text.dart';
import '../models/quiz_model.dart';
import '../widgets/quiz_widget.dart';
import '../widgets/next_button.dart';
import 'homepage_screen.dart';

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
  List<Quiz> Quizes = [
    for (var i = 0; i < quiz_1.length; i++)
      Quiz(
          question: quiz_1[i][0] as String,
          choices: quiz_1[i][1] as List<String>,
          correctIndex: quiz_1[i][2] as int)
  ];

  // Create an index to loop through Quizes
  int index = 0;

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var i = 0; i < Quizes.length; i++)
                    // Add the Quiz widget
                    QuizWidget(quiz: Quizes[i]),
                  Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: const BlueEndButton(
                          nextPage: HomeScreen(), buttonText: 'Kirim')),
                ],
              ))),
    );
  }
}
