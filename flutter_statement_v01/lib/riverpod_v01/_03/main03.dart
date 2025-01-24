import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v01/common.utils/logger.dart';
import 'package:flutter_statement_v01/riverpod_v01/_03/book.dart';

void main(){
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BookPage(),);
  }
}

class BookPage extends ConsumerWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String getBook = ref.watch(myBookStoreProvider);
    logger.d("getBook 값 확인 : ${getBook}");
    return SafeArea(child:Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("data 확인 : ${getBook}"),
            ElevatedButton(onPressed: (){
              MyBookStore myBookStore = ref.read(myBookStoreProvider.notifier);
              myBookStore.changeData("1Q84");
            }, child: Text("1Q84로 상태 변경"))
          ],
        ),
      ),
    ));
  }
}
