import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'BookEnd'),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text('하루 한 권'),
              actions: [Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.menu_rounded),
              )],
            ),
            body: PageView.builder(
              itemCount: 5, // 총 페이지 수
              itemBuilder: (context, index) {
                // 페이지의 내용
                return Container(
                  child: Image.asset('assets/Book${index}.jpg'),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              },
            )
        ),
      ),
    );
  }
}
