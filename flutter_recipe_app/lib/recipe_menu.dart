import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _buildMenuIcon(Icons.food_bank, "ALL"),
          SizedBox(width: 25,),
          _buildMenuIcon(Icons.emoji_food_beverage, "Coffee"),
          SizedBox(width: 25,),
          _buildMenuIcon(Icons.fastfood, "Burger"),
          SizedBox(width: 25,),
          _buildMenuIcon(Icons.local_pizza, "Pizza"),
        ],
      ),
    );
  }

  Widget _buildMenuIcon(IconData mIcon, String text) {
    // Container 위젯에 color 속성과 decoration 함께 쓰면 무조건 오류
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(28)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(mIcon, color: Colors.red,),
          SizedBox(height: 5,),
          Text(text,style: TextStyle(color: Colors.black54),)
        ],
      ),
    );
  }

}



