import 'package:flutter/material.dart';
import '../constants/style.dart';
import '../constants/text.dart';
import '../models/flashcard_model.dart';
import '../widgets/flashcard_widget.dart';
import '../widgets/next_button.dart';

/* 
EntryScreen widget is stateful because it is our parent widget and therefore
all the functions and variables will be in this widget. As a consequence, we
will need to change the state of our widget.
*/
class EntryScreen extends StatefulWidget {
  const EntryScreen({Key? key}) : super(key: key);

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set background color
      backgroundColor: background,

      // Set the body of the app
      body: Center(
          child: Container(
              decoration: primaryBackground,
              child: Center(
                  child: Image.asset('lib/assets/images/LiteUp_logo.png')))),

      // Next button
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
