import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'recipe_list_item.dart';
import 'recipe_menu.dart';
import 'recipe_title.dart';


void main() {
  runApp(MyApp());
}

// 위젯을 만들 때 크게 두가지로 구분한다.
// Stateless Widget은 상태 변경이 없는 위젯을 화면에 그릴 때 선택한다.

//우리들만의 약속 - myApp -> 머티리얼 앱 객체를 활용하자
class MyApp extends StatelessWidget {
  // 생성자 - 선택적 명명 매개변수
  MyApp({super.key});

  // 보통 루트 위젯을 시작할 때 메티리얼 앱을 많이 활용함
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "PatuaOne"),
      // 앱이 실행되었을 때 첫 페이지를 지정하는 속성
      home: RecipePage(),
    );
  }
}

//우리들만의 약속 2 - 페이지라고 이름 붙이는 클래스는 스케아폴드 적용
class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0),
      appBar: _buildRecipeAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              RecipeTitle(),
              RecipeMenu(),
              RecipeListItem("coffee","Made Coffee"),
              RecipeListItem("burger","Made Burger"),
              RecipeListItem("pizza","Made Pizza"),
              // 레시피 아이템
            ],
          ),
        ),
      ),
    );
  } // End of Build Method

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black), // 아래에서 따로 처리하지 않은 값은 이 값이 처리됨
      // elevation: 1.0,
      actions: [
        Icon(CupertinoIcons.search, color: Colors.black,),
        SizedBox(width: 15,),
        Icon(CupertinoIcons.heart, color: Colors.red,),
        SizedBox(width: 15,)
      ],bottom: PreferredSize(preferredSize: Size.fromHeight(0.1), child: Container(color: Colors.black, height: 0.1,)),
    );
  }
}


