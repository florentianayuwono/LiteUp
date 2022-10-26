import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/style.dart';
import '../screens/flashcard_screen.dart';
import '../screens/homepage_screen.dart';
import '../screens/personalisation_screen.dart';

class BlueEndButton extends StatelessWidget {
  const BlueEndButton(
      {Key? key,
      required this.buttonText,
      required this.pressed})
      : super(key: key);

  final String buttonText;
  final VoidCallback pressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: skyBlue,
            padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 7),
            shape: const StadiumBorder()),
        onPressed: () {
          pressed;
        },
        child: Text(buttonText,
            style: GoogleFonts.poppins(
                textStyle:
                    GoogleFonts.poppins(textStyle: endButtonTextStyle))));
  }
}
