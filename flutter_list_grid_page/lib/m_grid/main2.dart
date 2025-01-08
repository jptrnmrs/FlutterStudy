import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: GridView.builder(
              scrollDirection: Axis.vertical,
              // 그리드 열 개수를 고정하는 속성
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              itemCount: 600,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: (index + 1) % 7 == 0
                        ? Colors.deepPurple[200]
                        : (index + 1) % 7 == 6
                            ? Colors.indigo[200]
                            : (index + 1) % 7 == 5
                                ? Colors.blue[200]
                                : (index + 1) % 7 == 4
                                    ? Colors.green[200]
                                    : (index + 1) % 7 == 3
                                        ? Colors.yellow[200]
                                        : (index + 1) % 7 == 2
                                            ? Colors.orange[200]
                                            : Colors.red[200],
                    borderRadius: BorderRadius.circular(200),
                    border: Border.all(
                      color: Colors.white38,
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white38,
                              size: 10,
                            ),
                            Text(
                              "참 잘했어요",
                              style:
                                  TextStyle(color: Colors.white60, fontSize: 10),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white38,
                              size: 10,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("(진짜임)",style: TextStyle(color: Colors.white60, fontSize: 9),),
                          ],
                        )
                      ],
                    )
                  ),
                );
              }),
        ),
      ),
    );
  }
}
