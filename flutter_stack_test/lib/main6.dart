import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              // 배경을 꾸며보자
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              //반투명 레이어
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Positioned(
                top: 15,
                  right: 70,
                  child: Text(
                "Flutter",
                style: TextStyle(fontSize: 24, color: Colors.white),
              )),
              Positioned(
                  top: 70,
                  left: 10,
                  child: Text("Me",
                    style: TextStyle(fontSize: 24, color: Colors.white),))
            ],
          ),
        ),
      ),
    );
  }
}
