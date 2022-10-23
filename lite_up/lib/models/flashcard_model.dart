class Flashcard {
  // The title of each flashcard. Ex: Flashcard 1: Hello World!.
  final String title;
  // The reading content of each flashcard.
  final String content;

  // Constructor for Flashcard object
  Flashcard(
      {required this.title,
      required this.content});

  @override
  String toString() {
    return "Flashcard(title: $title, content: $content)";
  }
}