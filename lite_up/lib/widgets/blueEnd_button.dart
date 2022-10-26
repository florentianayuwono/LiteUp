import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/style.dart';
import '../screens/flashcard_screen.dart';
import '../screens/homepage_screen.dart';
import '../screens/personalisation_screen.dart';

class BlueEndButton extends StatelessWidget {
  const BlueEndButton({Key? key, required this.nextPage, required this.buttonText}) : super(key: key);

  final StatefulWidget nextPage;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: skyBlue,
            padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
            shape: const StadiumBorder()),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => nextPage));
        },
        child: Text(buttonText,
            style: GoogleFonts.poppins(textStyle: loginButtonTextStyle)));
  }
}
