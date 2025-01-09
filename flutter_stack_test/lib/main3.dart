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
              Container(
                width: 300,
                height: 300,
                color: Colors.blue,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
              Container(width: 50, height: 50, color: Colors.green,),
            ],
          ),
        ),
      ),
    );
  }
}
