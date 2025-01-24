
// 1. 창고 안에 들어갈 데이터를 준비한다.

import 'package:flutter_riverpod/flutter_riverpod.dart';

String myBook = '흐르는 강물처럼';

// 2. 창고를 만든다. StateNotifier 규격 상속

class MyBookStore extends StateNotifier<String>{
  MyBookStore(super.state);

  void changeData(String book){
    state = book;
  }
}

// 3. 창고 관리자를 만든다.
final myBookStoreProvider = StateNotifierProvider<MyBookStore,String>(
  (ref) => MyBookStore(myBook),
);