import 'package:flutter/material.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/style.dart';
import '../models/flashcard_model.dart';

class FlashcardWidget extends StatefulWidget {
  const FlashcardWidget(
      {Key? key,
      required this.currentFlashcard,
      required this.indexAction,
      required this.totalFlashcards,
      required this.nextFlashcard,
      required this.previousFlashcard})
      : super(key: key);

  final Flashcard currentFlashcard;
  final int indexAction;
  final int totalFlashcards;
  final VoidCallback nextFlashcard;
  final VoidCallback previousFlashcard;

  @override
  State<FlashcardWidget> createState() => _FlashcardWidgetState();
}

class _FlashcardWidgetState extends State<FlashcardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
            color: white, borderRadius: BorderRadius.circular(25)),
        alignment: Alignment.center,
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Text(
                widget.currentFlashcard.content,
                style: GoogleFonts.poppins(textStyle: flashcardContentStyle),
                textAlign: TextAlign.center,
              )),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: const BoxDecoration(
                    color: softOrange, shape: BoxShape.circle),
                width: 35,
                height: 35,
                child: TextButton(
                    onPressed: widget.previousFlashcard,
                    child: const Icon(Icons.navigate_before,
                        color: white, size: 20))),
            Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text('${widget.indexAction + 1}',
                    style: flashcardPageStyle)),
            Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: const BoxDecoration(
                    color: softOrange, shape: BoxShape.circle),
                width: 35,
                height: 35,
                child: TextButton(
                    onPressed: widget.nextFlashcard,
                    child: const Icon(Icons.navigate_next,
                        color: white, size: 20)))
          ])
        ]));
  }
}
