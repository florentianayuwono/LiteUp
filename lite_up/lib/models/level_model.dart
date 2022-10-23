import 'dart:html';

class Level {
  // Every level will have an Id. Ex: Level 1.
  final int id;
  // The title of each level. Ex: Level 1: The Beginning.
  final String title;
  // Each level will have list of flashcards.
  final List<Flashcard> flashcards;
  // Each level will have a book as the prize.
  final Book book;

  // Constructor for Level object
  Level(
      {required this.id,
      required this.title,
      required this.flashcards,
      required this.book});

  @override
  String toString() {
    return "Level(id: $id, title: $title, flashcards: $flashcards, book: $book)";
  }
}
