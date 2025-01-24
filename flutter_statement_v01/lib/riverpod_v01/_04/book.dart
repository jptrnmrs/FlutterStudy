
import 'package:riverpod/riverpod.dart';

// 1. 창고에 넣을 데이터 선언
String myBook = '홍길동전';

// 2. 창고를 만들자
class MyBookStore extends Notifier<String>{
  // riverpod 2.x버전 새로 생긴 함수
  @override
  String build() {
    // 초기값을 셋팅을 한다 --> 상태 관리
    return myBook;
  }

  // 이미 state가 super.state = myBook; 으로 셋팅 되어 있음
  // 내부에서 state 변수 사용 가능

  // 창고 안에 머신도 만들 수 있다.
  void changeData(String book){
    state = book;
  }
}

// 3. 창고 관리자에게 창고를 등록하고 관리하도록 설정
final myBookStoreNotiProvider
  = NotifierProvider<MyBookStore,String>(
      (){
        return MyBookStore();
      }
  );