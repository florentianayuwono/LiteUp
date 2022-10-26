import 'package:flutter/material.dart';
import '../constants/style.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key, required this.nextFlashcard}) : super(key: key);

  final VoidCallback nextFlashcard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextFlashcard,
      child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: deepOrange, borderRadius: BorderRadius.all(Radius.circular(40))),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: const Text('Next Flashcard',
              style: loginButtonTextStyle, textAlign: TextAlign.center)),
    );
  }
}
