import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/style.dart';
import '../models/quiz_model.dart';

class QuizWidget extends StatefulWidget {
  const QuizWidget(
      {Key? key, required this.quiz, required this.showCorrectAnswer})
      : super(key: key);

  final Quiz quiz;
  final bool showCorrectAnswer;

  @override
  State<QuizWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  bool isPressed = false;
  Color primary = white;
  int choicePressed = -1;

  void pressed(i) {
    if (isPressed) {
      setState(() {
        isPressed = false;
        primary = white;
      });
    } else {
      setState(() {
        isPressed = true;
        primary = deepYellow;
        choicePressed = i;
        widget.quiz.selectedIndex = i;
      });
    }
  }

  Color showStatus(i) {
    if (i == widget.quiz.selectedIndex && i == widget.quiz.correctIndex) {
      return skyBlue;
    }

    if (i == widget.quiz.selectedIndex) {
      return red;
    }

    return white;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.showCorrectAnswer) {
      return Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          color: Colors.transparent,
          alignment: Alignment.centerLeft,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text(
              widget.quiz.question,
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(textStyle: personalisationTextstyle),
            ),
            for (int i = 0; i < widget.quiz.choices.length; i++)
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 0),
                      decoration: BoxDecoration(
                          color: showStatus(i),
                          shape: BoxShape.circle,
                          border: Border.all(color: deepYellow)),
                      width: 35,
                      height: 35,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(mapNumberToLetter[i + 1] as String,
                              style: GoogleFonts.poppins(
                                  textStyle: personalisationTextstyle)))),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Text(widget.quiz.choices[i],
                          style: GoogleFonts.poppins(
                              textStyle: personalisationTextstyle)))
                ],
              )
          ]));
    }
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        color: Colors.transparent,
        alignment: Alignment.centerLeft,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            widget.quiz.question,
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(textStyle: personalisationTextstyle),
          ),
          for (int i = 0; i < widget.quiz.choices.length; i++)
            Row(
              children: [
                Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 0),
                    decoration: BoxDecoration(
                        color: i == choicePressed ? primary : white,
                        shape: BoxShape.circle,
                        border: Border.all(color: deepYellow)),
                    width: 35,
                    height: 35,
                    child: TextButton(
                        onPressed: () {
                          pressed(i);
                        },
                        child: Text(mapNumberToLetter[i + 1] as String,
                            style: GoogleFonts.poppins(
                                textStyle: personalisationTextstyle)))),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Text(widget.quiz.choices[i],
                        style: GoogleFonts.poppins(
                            textStyle: personalisationTextstyle)))
              ],
            )
        ]));
  }
}
