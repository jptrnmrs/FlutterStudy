import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v01/riverpod_v01/_02/fruit.dart';

import '../../common.utils/logger.dart';

void main() {
  // 1. Riverpod을 사용하기 위해서 ProviderScope로 감싼다
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FruitPage(),
    );
  }
} // end of MyApp

// 2. Riverpod을 사용하기 위해서 ConsumerWidget으로 변경해야한다
class FruitPage extends ConsumerWidget {
  const FruitPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.d("FruitPage.build() 함수 호출 확인");
    // 사용하는 측 코드에서 사용할 2가지 ref.read, ref.watch
    // 한 번만 데이터를 사용하려면 무엇을 사용해야할까?
    String getFruit = ref.watch(fruitProvider);
    logger.d("getFruit값 확인 : ${getFruit}");


    // String watchFruit = ref.watch(fruitProvider);
    // logger.d("watchFruit값 확인 : ${watchFruit}");

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("data 확인 : ${getFruit}"),
              ElevatedButton(
                onPressed: () {
                  // 상태 변경 기능은 누가 들고 있을까?
                  // 데이터를 들고 오는 게 아니라 창고 자체를 들고 와 안의 메서드를 동작시켜야 한다.
                  // read() 메서드를 데이터를 한 번 들고 오기도 하지만 창고 자체에 접근할 수 있다.
                  FruitStore fruitStore = ref.read(fruitProvider.notifier);
                  fruitStore.changeData("딸기");
                },
                child: Text("딸기로 상태 변경하기"),
              )
            ],
          ),
        ),
      ),
    );
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
/// - 상태(state)를 관리, 변경할 수 있는 관리자 역할.
///   상태가 변경되면 이를 구독(.watch)중인 모든 위젯에게 알린다.
///   ref.read() 창고 자체에 접근할 수 있다.
///   ref.watch() 계속 구독하여 상태 변경을 감지할 수 있다.
///   