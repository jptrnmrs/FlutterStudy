import 'package:flutter/material.dart';
import 'package:flutter_bugs_clone/screens/main_screen.dart';
import 'package:flutter_bugs_clone/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bugs',
      debugShowCheckedModeBanner: false,
      theme: mTheme(),
      home: MainScreen(),
    );
  }
}
