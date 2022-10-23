import 'package:flutter/material.dart';
import '../constants/style.dart';
import '../constants/text.dart';
import '../models/flashcard_model.dart';
import '../widgets/flashcard_widget.dart';

/* 
HomeScreen widget is stateful because it is our parent widget and therefore
all the functions and variables will be in this widget. As a consequence, we
will need to change the state of our widget.
*/
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Flashcard> flashcards = [
    Flashcard(title: flashcards_1[0][0], content: flashcards_1[0][1]),
    Flashcard(title: flashcards_1[1][0], content: flashcards_1[1][1])
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set background color
      backgroundColor: background,

      // Set the top app bar
      appBar: AppBar(
        title: const Text('Level 1 Flash Cards', style: flashcardTitle),
        backgroundColor: white,
        elevation: 0
      ),

      // Set the body of the app
      body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              // Add the flashcard widget
              FlashcardWidget(
                indexAction: index,
                flashcardTitle: flashcards[index].title,
                totalFlashcards: flashcards.length,
              ),
              const Divider(color: skyBlue),
            ],
          )),
    );
  }
}
