import 'package:flutter/material.dart';

// 레시피 타이틀 클래스(위젯)를 만들어보자
class RecipeTitle extends StatelessWidget {
  const RecipeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0,),
      child: Text("Recipes", style: TextStyle(fontSize: 30),),
    );
  }
}