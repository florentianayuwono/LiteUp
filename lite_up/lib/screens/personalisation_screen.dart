import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_up/widgets/login_button.dart';
import 'package:lite_up/widgets/signup_button.dart';
import '../constants/style.dart';
import '../constants/text.dart';
import '../models/flashcard_model.dart';
import '../widgets/flashcard_widget.dart';
import '../widgets/next_button.dart';
import 'flashcard_screen.dart';

/* 
PersonalisationScreen widget is stateful because it is our parent widget and therefore
all the functions and variables will be in this widget. As a consequence, we
will need to change the state of our widget.
*/
class PersonalisationScreen extends StatefulWidget {
  const PersonalisationScreen({Key? key}) : super(key: key);

  @override
  State<PersonalisationScreen> createState() => _PersonalisationScreenState();
}

class _PersonalisationScreenState extends State<PersonalisationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          decoration: primaryBackground,
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Container(
                margin: const EdgeInsets.only(top: 157),
                child: Text('Kita ingin membuat LiteUp spesial untuk kamu!',
                    style: GoogleFonts.poppins(textStyle: appBarTitle),
                    textAlign: TextAlign.center)),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 30, left: 30),
                child: Text(
                  'Tipe pembaca apakah kamu?',
                  style:
                      GoogleFonts.poppins(textStyle: personalisationTextstyle),
                )),
            Container(
                margin: const EdgeInsets.only(top: 20),
                child: const LoginButton()),
            Container(
                margin: const EdgeInsets.only(top: 20),
                child: const SignUpButton())
          ])),
    ));
  }
}
