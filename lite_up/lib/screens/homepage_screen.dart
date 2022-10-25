import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/style.dart';
import '../constants/text.dart';
import '../models/flashcard_model.dart';
import '../widgets/flashcard_widget.dart';
import '../widgets/levelcard_widget.dart';
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
  List<int> level = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          decoration: primaryBackground,
          alignment: Alignment.center,
          child: Column(children: [
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
                child: Row(children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image.asset('lib/assets/images/UserProfile.png')),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name Holder',
                          style: GoogleFonts.poppins(textStyle: appBarTitle),
                          textAlign: TextAlign.left),
                      Text('Level 1',
                          style: GoogleFonts.poppins(textStyle: levelTitle),
                          textAlign: TextAlign.start)
                    ],
                  )
                ])),
            for (var i in level)
              Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: LevelcardWidget(level: i))
          ])),
    ));
  }
}
