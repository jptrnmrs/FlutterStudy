import 'package:flutter/material.dart';
import 'package:shopping_cart_practice/components/shoppingcart_body.dart';
import 'package:shopping_cart_practice/theme.dart';

import 'components/shoppingcart_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mTheme(),
      home: ShoppingCartPage(),
    );
  }
}
class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({super.key});

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {

  // 1. 상태
  int selectedId = 0;
  // 객체지향개념 - 상태는 행위(Method)를 통해 변경
  void changeSelectedId(int sId) {
    setState(() {
      selectedId = sId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildShoppingcartAppBar(),
        body: Column(
          children: [
            ShoppingcartHeader(selectedId: selectedId,changeSelectedId: changeSelectedId,),
            Spacer(),
            ShoppingcartBody(selectedId: selectedId,),
          ],
        ),
      ),
    );
  }
  AppBar _buildShoppingcartAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        ),
      ],
    );
  }

}

