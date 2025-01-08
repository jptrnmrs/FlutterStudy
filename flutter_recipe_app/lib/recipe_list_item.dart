import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imgName;
  final String title;

  const RecipeListItem(this.imgName, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/${imgName}.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
            "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
            "Nisl tincidunt eget nullam non.",
            style:
                TextStyle(color: Colors.black45, fontWeight: FontWeight.w300),
          )
          // 텍스트1
          // 텍스트2
        ],
      ),
    );
  }
}
