import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_cart_practice/constants.dart';



class ShoppingcartHeader extends StatefulWidget {
  ShoppingcartHeader({Key? key, required this.selectedId, required this.changeSelectedId}):super(key:key);
  int selectedId;
  final Function(int) changeSelectedId;

  @override
  State<ShoppingcartHeader> createState() => _ShoppingcartHeaderState();
}

class _ShoppingcartHeaderState extends State<ShoppingcartHeader> {

  List<String> selectPic = [
    'assets/p1.jpeg',
    'assets/p2.jpeg',
    'assets/p3.jpeg',
    'assets/p4.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 이미지를 항상 5:3 비율로 보여주기 위한 설정
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: AspectRatio(
            aspectRatio: 5 / 3,
            child: Image.asset(
              selectPic[widget.selectedId],
              fit: BoxFit.cover,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildHeaderSelectorButton(0, Icons.directions_bike),
            _buildHeaderSelectorButton(1, Icons.motorcycle),
            _buildHeaderSelectorButton(2, CupertinoIcons.car_detailed),
            _buildHeaderSelectorButton(3, CupertinoIcons.airplane),
          ],
        )
      ],
    );
  }

  Widget _buildHeaderSelectorButton(int sId, IconData mIcon) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          color: widget.selectedId == sId ? kAccentColor : kSecondaryColor,
          borderRadius: BorderRadius.circular(20.0)),
      child: IconButton(
        onPressed: () {
          widget.changeSelectedId(sId);
        },
        icon: Icon(
          mIcon,
          color: Colors.black,
        ),
      ),
    );
  }
} //end of Header

