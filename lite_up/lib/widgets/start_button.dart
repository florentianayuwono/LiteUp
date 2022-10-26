import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/style.dart';
import '../screens/flashcard_screen.dart';
import '../screens/homepage_screen.dart';

class StartButton extends StatefulWidget {
  const StartButton({Key? key, required this.buttonText}) : super(key: key);

  final String buttonText;

  @override
  State<StartButton> createState() => _StartButtonState();
}

class _StartButtonState extends State<StartButton> {
  bool isPressed = false;
  Color primary = lightGray;
  Color textColor = white;

  void pressed() {
    if (isPressed) {
      Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
    } else {
      setState(() {
        isPressed = true;
        primary = deepOrange;
        textColor = white;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: primary,
            padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
            shape: const StadiumBorder()),
        onPressed: () {
          pressed();
        },
        child: Text(widget.buttonText,
            style: GoogleFonts.montserrat(textStyle: loginButtonTextStyle)));
  }
}
