class Book {
  // The title of each book. Ex: Oliver Twist.
  final String title;
  // The reading content of each book.
  final String content;

  // Constructor for Book object
  Book({
      required this.title,
      required this.content});

  @override
  String toString() {
    return "Book(title: $title, content: $content)";
  }
}