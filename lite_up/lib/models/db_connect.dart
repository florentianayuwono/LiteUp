import 'package:http/http.dart' as http;
import './level_model.dart';
import './book_model.dart';
import './flashcard_model.dart';
import 'dart:convert';

class DBconnect {
  final url = Uri.parse(
      'https://liteup-3380e-default-rtdb.asia-southeast1.firebasedatabase.app/');
  Future<void> addLevel(Level level) async {
    http.post(url,
        body: json.encode({
          'id': level.id,
          'title': level.title,
          'flashcards': level.flashcards,
          'book': level.book
        }));
  }

  Future<void> addBook(Book book) async {
    http.post(url,
        body: json.encode({'title': book.title, 'content': book.content}));
  }
}
