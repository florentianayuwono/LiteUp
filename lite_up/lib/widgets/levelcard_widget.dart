import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/style.dart';

class LevelcardWidget extends StatelessWidget {
  const LevelcardWidget(
      {Key? key,
      required this.level})
      : super(key: key);

  final int level;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 120),
      decoration: BoxDecoration(color: softOrange, borderRadius: BorderRadius.circular(25)),
        alignment: Alignment.centerLeft,
        child: Text(
            'Level $level Flash Cards',
            style: GoogleFonts.poppins(textStyle: levelCardTitle),
            ));
  }
}
