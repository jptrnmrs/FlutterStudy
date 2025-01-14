import 'package:flutter/material.dart';
import 'package:shopping_cart_practice/constants.dart';

class ShoppingcartBody extends StatefulWidget {
  ShoppingcartBody({Key? key, required this.selectedId}):super(key:key);
  int selectedId;
  @override
  State<ShoppingcartBody> createState() => _ShoppingcartBodyState();
}

class _ShoppingcartBodyState extends State<ShoppingcartBody> {

  List<String> selectName = [
    'ROMET Urban Soft AL 10.0',
    'HONDA Urban Motocycle',
    'VIC GTMTG lightening',
    'Koreana Airplane',
  ];
  List<dynamic> selectPrice = [
    49.9,
    99.9,
    499,
    4999,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
        child: Column(
          children: [
            _buildBodyNameAndPrice(selectName[widget.selectedId], selectPrice[widget.selectedId]),
            SizedBox(height: 10,),
            _buildBodyRatingAndReviewCount(4, 26),
            SizedBox(height: 10,),
            _buildBodyColorOptions([Colors.black,Colors.blue, Colors.red,Colors.orangeAccent]),
            SizedBox(height: 20,),
            _buildBodybutton(),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  } // end of build

  // 1. 이름과 가격
  Widget _buildBodyNameAndPrice(String name, var price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        Text(
          "\$${price}",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  // 2. 별점 리뷰 카운트
  Widget _buildBodyRatingAndReviewCount(int rating, int review) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            for (int i = 1; i <= rating; i++)
              Icon(
                Icons.star,
                color: Colors.orangeAccent,
              ),
            for (int i = 1; i <= 5 - rating; i++)
              Icon(
                Icons.star,
                color: Colors.grey,
              ),
          ],
        ),
        Row(
          children: [
            Text("review"),
            Text(
              " (${review})",
              style: TextStyle(color: Colors.blueAccent),
            )
          ],
        )
      ],
    );
  }

  // 3. 색상 옵션 선택
  Widget _buildBodyColorOptions(List<Color> mColors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Color Options"),
        SizedBox(height: 5,),
        Row(
          children: [
            for(var mColor in mColors)
            _buildColorOption(mColor),
          ],
        ),
      ],
    );
  }

  // 4. 색상 옵션 위젯 함수
  Widget _buildColorOption(Color mColor) {
    return Padding(
      padding: EdgeInsets.only(
        right: 10,
      ),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(200)),
              width: 40,
              height: 40,
            ),
          ),
          Positioned(
            top: 5,
            left: 5,
            child: Container(
              decoration: BoxDecoration(
                color: mColor,
                borderRadius: BorderRadius.circular(200),
              ),
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }

  // 5. 버튼 만들기
  Widget _buildBodybutton() {
    return TextButton(
      onPressed: () {},
      child: Container(
        width: 500,
        height: 50,
        decoration: BoxDecoration(
          color: kAccentColor,
          borderRadius: BorderRadius.circular(22)
        ),
        child: Center(child: Text("Add to Cart", style: TextStyle(color: kPrimaryColor, fontSize: 16),)),
      ),
    );
  }
} // end of body
