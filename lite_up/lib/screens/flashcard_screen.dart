import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_up/screens/quiz_screen.dart';
import 'package:lite_up/widgets/record_button.dart';
import 'package:permission_handler/permission_handler.dart';
import '../api/sound_recorder.dart';
import '../constants/style.dart';
import '../constants/text.dart';
import '../models/flashcard_model.dart';
import '../widgets/flashcard_widget.dart';
import '../widgets/next_button.dart';

/* 
FlashcardScreen widget is stateful because it is our parent widget and therefore
all the functions and variables will be in this widget. As a consequence, we
will need to change the state of our widget.
*/
class FlashcardScreen extends StatefulWidget {
  const FlashcardScreen({Key? key}) : super(key: key);

  @override
  State<FlashcardScreen> createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {
  List<Flashcard> flashcards = [
    for (var i = 0; i < flashcards_1.length; i++)
      Flashcard(title: flashcards_1[i][0], content: flashcards_1[i][1])
  ];

  // Create an index to loop through flashcards
  int index = 0;

  // Create a function to display the next flashcard
  void nextFlashcard() {
    if (index == flashcards.length - 1) {
      Navigator.push(context,
              MaterialPageRoute(builder: (context) => const QuizScreen()));
    } else {
      setState(() {
        // Increments the index to rebuild the app to show next flashcard
        index++;
      });
    }
  }

  void previousFlashcard() {
    if (index == 0) {
      return;
    } else {
      setState(() {
        // Decrements the index to rebuild the app to show previous flashcard
        index--;
      });
    }
  }

  final recorder = SoundRecorder();

  @override
  void initState() {
    super.initState();
    recorder.init();
  }

  @override
  void dispose() {
    recorder.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set background color
      backgroundColor: background,

      // Set the top app bar
      appBar: AppBar(
          title: Text('Level 1 Flash Cards',
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
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    for (var i = 0; i < flashcards.length; i++)
                      if (i <= index)
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Image.asset(
                                'lib/assets/images/currentTab_icon.png'))
                      else
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Image.asset(
                                'lib/assets/images/nextTab_icon.png')),
                  ]),
                  // Add the flashcard widget
                  FlashcardWidget(
                      indexAction: index,
                      currentFlashcard: flashcards[index],
                      totalFlashcards: flashcards.length,
                      nextFlashcard: nextFlashcard,
                      previousFlashcard: previousFlashcard),
                  // Add the recorder and audio button
                  //Center(child: RecordButton(recorder: recorder))
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child:
                            Image.asset('lib/assets/images/recorder_icon.png')),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Image.asset(
                            'lib/assets/images/audioPlayer_icon.png'))
                  ])
                ],
              ))),
    );
  }
}
