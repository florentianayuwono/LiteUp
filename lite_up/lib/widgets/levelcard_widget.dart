import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/style.dart';

class LevelcardWidget extends StatefulWidget {
  const LevelcardWidget({Key? key, required this.level}) : super(key: key);

  final int level;

  @override
  State<LevelcardWidget> createState() => _LevelcardWidgetState();
}

class _LevelcardWidgetState extends State<LevelcardWidget> {
  bool levelIsLocked = true;

  // Create a function to display the unlocked level
  void unlockLevel() {
    if (levelIsLocked) {
      setState(() {
        levelIsLocked = false;
      });
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (levelIsLocked) {
      return Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 120),
          decoration: BoxDecoration(
              color: white, borderRadius: BorderRadius.circular(25)),
          alignment: Alignment.centerLeft,
          child: Stack(children: [
            Text(
              'Level ${widget.level} Flash Cards',
              style: GoogleFonts.poppins(textStyle: lockedLevelCardTitle),
            ),
            Image.asset('lib/assets/images/lock_icon.png')
          ]));
    } else {
      return Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 120),
          decoration: BoxDecoration(
              color: softOrange, borderRadius: BorderRadius.circular(25)),
          alignment: Alignment.centerLeft,
          child: Text(
            'Level ${widget.level} Flash Cards',
            style: GoogleFonts.poppins(textStyle: unlockedLevelCardTitle),
          ));
    }
  }
}
