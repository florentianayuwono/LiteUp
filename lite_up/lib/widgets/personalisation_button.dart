import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/style.dart';
import '../screens/flashcard_screen.dart';
import '../screens/homepage_screen.dart';
import '../screens/personalisation_screen.dart';

class PersonalisationButton extends StatefulWidget {
  const PersonalisationButton({Key? key, required this.buttonText})
      : super(key: key);

  final String buttonText;

  @override
  State<PersonalisationButton> createState() => _PersonalisationButtonState();
}

class _PersonalisationButtonState extends State<PersonalisationButton> {
  bool isPressed = false;
  Color primary = white;
  Color textColor = grayish;

  void pressed() {
    if (isPressed) {
      setState(() {
        isPressed = false;
        primary = white;
        textColor = grayish;
      });
    } else {
      setState(() {
        isPressed = true;
        primary = deepYellow;
        textColor = white;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        pressed();
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(100, 30), side: BorderSide(width: 1, color:deepYellow),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          elevation: 0,
          primary: primary,
          shape: const StadiumBorder(),
          textStyle: TextStyle(
              color: textColor, fontSize: 13, fontWeight: FontWeight.w500)),
      child: Text(
        widget.buttonText,
        style: TextStyle(
            color: textColor, fontSize: 13, fontWeight: FontWeight.w500),
      ),
    );
  }
}
