import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _buildRecipeMenuIcon(Icons.food_bank,"ALL"),
          SizedBox(width: 5,),
          _buildRecipeMenuIcon(Icons.emoji_food_beverage,"Coffee"),
          SizedBox(width: 5,),
          _buildRecipeMenuIcon(Icons.fastfood,"Burger"),
          SizedBox(width: 5,),
          _buildRecipeMenuIcon(Icons.local_pizza,"Pizza"),
          SizedBox(width: 5,),
        ],
      ),
    );
  }

  Widget _buildRecipeMenuIcon(IconData mIcon, String text){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Icon(mIcon, color: Colors.redAccent,),
          SizedBox(height: 5,),
          Text(text, style: TextStyle(color: Colors.black45),)
        ],
      ),
    );
  }
}
