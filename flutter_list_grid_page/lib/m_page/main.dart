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
          appBar: AppBar(
            title: Text('pageView'),
          ),
          body: PageView(
            controller: PageController(
              initialPage: 2,
              viewportFraction: 0.9
            ),
            children: [
              Container(
                margin: EdgeInsets.all(0.0),
                color: Colors.purple[200],
              ),
              Container(
                margin: EdgeInsets.all(0.0),
                color: Colors.blue[200],
              ),
              Container(
                margin: EdgeInsets.all(0.0),
                color: Colors.pink[200],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
