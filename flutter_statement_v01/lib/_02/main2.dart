import 'package:flutter/material.dart';
import 'package:flutter_statement_v01/_02/home_screen.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      //머티리얼 3 적용방법
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    ),
    home: HomeScreen(),
  ));
}