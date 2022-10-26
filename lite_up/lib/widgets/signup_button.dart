import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/style.dart';
import '../screens/flashcard_screen.dart';
import '../screens/homepage_screen.dart';
import '../screens/personalisation_screen.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        //style: loginButtonStyle,
        style: ElevatedButton.styleFrom(
            primary: white,
            padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
            shape: const StadiumBorder()),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PersonalisationScreen()));
        },
        child: Text("Daftar",
            style: GoogleFonts.montserrat(textStyle: signUpButtonTextStyle)));
  }
}
