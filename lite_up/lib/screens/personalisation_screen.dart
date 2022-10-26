import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_up/widgets/login_button.dart';
import 'package:lite_up/widgets/signup_button.dart';
import '../constants/style.dart';
import '../constants/text.dart';
import '../models/flashcard_model.dart';
import '../widgets/flashcard_widget.dart';
import '../widgets/next_button.dart';
import '../widgets/personalisation_button.dart';
import '../widgets/start_button.dart';
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
                margin: const EdgeInsets.only(top: 30, left: 30, bottom: 5),
                child: Text(
                  'Tipe pembaca apakah kamu?',
                  style:
                      GoogleFonts.poppins(textStyle: personalisationTextstyle),
                )),
            Wrap(alignment: WrapAlignment.center, children: [
              for (var text in personalisation_1)
                Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    child: PersonalisationButton(buttonText: text))
            ]),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 10, left: 30, bottom: 5),
                child: Text(
                  'Genre apa yang kamu suka?',
                  style:
                      GoogleFonts.poppins(textStyle: personalisationTextstyle),
                )),
            Wrap(
              alignment: WrapAlignment.center,
                children: [
                  for (var text in personalisation_2)
                    Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 3),
                        child: PersonalisationButton(buttonText: text))
                ]),
            Container(
                margin: const EdgeInsets.only(top: 50),
                child: const StartButton(buttonText: 'Masuk'))
          ])),
    ));
  }
}
