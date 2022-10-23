import 'package:flutter/material.dart';
import '../constants/style.dart';
import '../constants/text.dart';
import '../models/flashcard_model.dart';

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
      backgroundColor: background,
      appBar: AppBar(
        title: const Text('LiteUp'),
        backgroundColor: background,
        shadowColor: Colors.transparent,
      ),
    );
  }
}
