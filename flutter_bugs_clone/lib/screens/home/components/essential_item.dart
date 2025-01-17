import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bugs_clone/common/components/image_container.dart';
import 'package:flutter_bugs_clone/theme.dart';

class EssentialItem extends StatelessWidget {
  const EssentialItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ImageContainer(
                  borderRadius: 0.0,
                  imageUrl: "https://picsum.photos/220/200",
                  width: 250,
                  height: 250),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(20, 20, 20, 0.15),
                ),
                width: 250,
                height: 250,
              ),
              Text(
                "essential;",
                style: TextStyle(
                    fontFamily: "ModernGothic",
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              Positioned(
                bottom: 10,
                  right: 10,
                  child: Icon(CupertinoIcons.play, color: Colors.white,))
            ],
          )
        ],
      ),
    );
  }
}
