import 'package:flutter/material.dart';
import '../constants/style.dart';

class FlashcardWidget extends StatefulWidget {
  const FlashcardWidget(
      {Key? key,
      required this.flashcardTitle,
      required this.indexAction,
      required this.totalFlashcards})
      : super(key: key);

  final String flashcardTitle;
  final int indexAction;
  final int totalFlashcards;

  @override
  State<FlashcardWidget> createState() => _FlashcardWidgetState();
}

class _FlashcardWidgetState extends State<FlashcardWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Flashcard ${widget.indexAction + 1}/$widget.totalFlashcards: $widget.flashcardTitle',
          style: const TextStyle(
            fontSize: 24.0,
            color: deepOrange,
          ),
        ));
  }
}
