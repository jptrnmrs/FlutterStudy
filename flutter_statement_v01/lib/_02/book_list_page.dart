import 'package:flutter/material.dart';
import 'package:flutter_statement_v01/common.utils/logger.dart';

class BookListPage extends StatelessWidget {
  final Function(String) onToggleSaved;

  // 부모 위젯으로부터 넘겨받은 장바구니 데이터
  final List<String> selectedBook;

  BookListPage({
    required this.onToggleSaved,
    required this.selectedBook,
    super.key,
  });

  final List<String> books = [
    '호모사피엔스',
    '다트 입문',
    '홍길동전',
    '코드 리팩토링',
    '전치사 도감',
  ];

  @override
  Widget build(BuildContext context) {
    logger.d('데이터 확인${selectedBook.toString()}');
    return ListView(
      children: books.map((book) {
        final isSelectedBook = selectedBook.contains(book);
        return ListTile(
          leading: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Theme.of(context).secondaryHeaderColor,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.black),
            ),
          ),
          title: Text(book),
          trailing: IconButton(
            onPressed: () {
              onToggleSaved(book);
            },
            icon: Icon(
              isSelectedBook ? Icons.remove_circle : Icons.add_circle,
              color: isSelectedBook ? Colors.red : Colors.green,
            ),
          ),
        );
      }).toList(),
    );
  }
}
