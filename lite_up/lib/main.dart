import 'package:flutter/material.dart';
import './screens/entry_screen.dart';
import 'models/book_model.dart';
import 'screens/flashcard_screen.dart';
import './models/db_connect.dart';

// Main entry of the application.
void main() {
  var database = DBconnect();
  database.addBook(Book(title: 'Oliver Twist', content: 'Hello World'));
  runApp(
    // Render the LiteUp app.
    const LiteUp(),
  );
  database.addBook(Book(title: 'Oliver Twist', content: 'Hello World'));
}

// Create the LiteUp widget.
class LiteUp extends StatelessWidget {
  const LiteUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // Remove the default debug banner from Flutter.
        debugShowCheckedModeBanner: false,
        // Set the homepage.
        home: EntryScreen());
  }
}
