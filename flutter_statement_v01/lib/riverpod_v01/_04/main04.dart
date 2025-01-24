import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v01/riverpod_v01/_04/book.dart';

void main(){
  // 1. ProviderScope사용
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyBookPage(),);
  }
}

// 2.
class MyBookPage extends ConsumerWidget {
  const MyBookPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //ref.read(provider) 데이터를 한 번 가져오거나 창고 자체에 접근
    //
    String getBook = ref.watch(myBookStoreNotiProvider);
    MyBookStore store = ref.read(myBookStoreNotiProvider.notifier);
    return SafeArea(child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${getBook}"),
            ElevatedButton(onPressed: (){
              store.changeData("심청전");
            }, child: Text("심청전으로 변환")),
            ElevatedButton(onPressed: (){
              store.changeData("데미안");
            }, child: Text("데미안으로 변환"))
          ],
        ),
      ),
    ));
  }
}

///
/// 정리
///
/// Provider (01예제) - 1회 알바생
/// - 데이터를 단순히 한 번 제공하는 역할.
///   상태가 변하지 않는 데이터를 관리할 때 사용하며
///   주로 정적인 데이터를 제공할 때 사용한다.
///   (단순 문자열, 정적 객체 등)
///
/// StateNotifierProvider (02예제) - 창고 관리자
/// - riverpod 1.xxx 버전
/// - 상태(state)를 관리, 변경할 수 있는 관리자 역할.
///   상태가 변경되면 이를 구독(.watch)중인 모든 위젯에게 알린다.
///   ref.read() 창고 자체에 접근할 수 있다.
///   ref.watch() 계속 구독하여 상태 변경을 감지할 수 있다.
///
/// NotifierProvider (04 예제)
/// - riverpod 2.xxx 버전
/// - 상태를 관리하고 변경할 수 있는 창고 관리자 역할
/// - StateNotifierProvider의 개선된 버전
