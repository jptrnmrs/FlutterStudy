import 'package:flutter/material.dart';

class BookCartPage extends StatelessWidget {
  final List<String> mySelectedBooks;

  const BookCartPage({required this.mySelectedBooks, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:
          mySelectedBooks.map((book) => ListTile(title: Text(book))).toList(),
    );
  }
}
