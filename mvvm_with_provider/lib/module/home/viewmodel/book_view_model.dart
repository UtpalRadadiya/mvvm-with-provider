import 'package:flutter/material.dart';
import 'package:mvvm_with_provider/module/home/model/book_model.dart';

class BookListViewModel extends ChangeNotifier {
  final List<Book> _books = [
    Book(title: 'Book 1', author: 'Author 1', description: 'Description 1'),
    Book(title: 'Book 2', author: 'Author 2', description: 'Description 2'),
    Book(title: 'Book 3', author: 'Author 3', description: 'Description 3'),
  ];

  List<Book> get books => _books;

  void addBook(Book book) {
    _books.add(book);
    notifyListeners();
  }
}
