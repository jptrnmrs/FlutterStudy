import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            // alignment: Alignment(0.5,1),
            children: [
              Positioned(
                top: 50,
                left: 50,
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              Positioned(
                bottom: 50,
                right: 50,
                child: Container(
                  width: 100,
                  height: 200,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
