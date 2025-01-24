import 'package:flutter/material.dart';
import 'package:flutter_statement_v01/common.utils/logger.dart';

import 'book_cart_page.dart';
import 'book_list_page.dart';
import 'inherited_parent.dart';

// 상태가 있는 위젯

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 로컬 상태 : 하단에 활성화된 탭 인덱스 번호
  int pageIndex = 0;

  // 상품 --> 책(String) 데이터 타입으로 관리
  List<String> mySeletedBook = [];

  // 상태를 변경하는 메서드 만들기
  void _toggleSaveStatus(String book) {
    // 다시 화면을 그리라는 요청 함수
    setState(() {
      if (mySeletedBook.contains(book)) {
        mySeletedBook.remove(book);
      } else {
        mySeletedBook.add(book);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    logger.d('HomeScreen build 메서드 호출됨');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              "텐코의 서재",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer),
        body: InheritedParent(
          state: mySeletedBook,
          onPressed: _toggleSaveStatus,
          child: IndexedStack(
            index: pageIndex,
            children: [
              BookListPage(),
              BookCartPage(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'book-list'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'cart'),
          ],
        ),
      ),
    );
  }
}
