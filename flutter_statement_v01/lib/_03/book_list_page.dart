import 'package:flutter/material.dart';

import 'inherited_parent.dart';

class BookListPage extends StatelessWidget {
  BookListPage({
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
    // BuildContext를 사용하여 우리가 정의한 InheritedParent위젯에 접근할 수 있다.
    InheritedParent? inheritedParent =
        context.dependOnInheritedWidgetOfExactType();

    List<String> selectedBook = inheritedParent?.state ?? [];

    // logger.d('데이터 확인${selectedBook.toString()}');

    return inheritedParent == null
        ? Center(child: Text("데이터가 존재하지 않습니다."))
        : ListView(
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
                    inheritedParent.onPressed(book);
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
