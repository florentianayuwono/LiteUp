import 'package:flutter/material.dart';
import '../constants/style.dart';
import '../constants/text.dart';
import '../models/flashcard_model.dart';
import '../widgets/flashcard_widget.dart';
import '../widgets/login_button.dart';
import '../widgets/next_button.dart';
import '../widgets/signup_button.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Level 1 Flash Cards', style: flashcardAppBarTitle),
          backgroundColor: white,
          elevation: 0),
      body: Container(
          decoration: primaryBackground,
          alignment: Alignment.center,
          child: Column(children: [
            Container(
                margin: const EdgeInsets.only(top: 122),
                child: Image.asset('lib/assets/images/LiteUp_logo.png')),
          ])),
    );
  }
}
