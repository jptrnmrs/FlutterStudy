import 'package:class_carrot_app/carrot_market_ui_06/models/icon_menu.dart';
import 'package:flutter/material.dart';

import '../components/appbar_prefarred_size.dart';
import 'components/card_icon_menu.dart';
import 'components/my_carrot_header.dart';

class MyCarrotPage extends StatelessWidget {
  const MyCarrotPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("MyCarrotPage() 호출 확인");
    return Scaffold(
      appBar: AppBar(
        title: Text("나의 당근"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
          ),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          // Header
          MyCarrotHeader(),
          // IconMenu1 - Card layout
          const SizedBox(height: 8.0,),
          CardIconMenu(iconMenuList: iconMenu1,),
          const SizedBox(height: 8.0,),
          CardIconMenu(iconMenuList: iconMenu2,),
          const SizedBox(height: 8.0,),
          CardIconMenu(iconMenuList: iconMenu3,),
          // IconMenu2 - Card layout
          // IconMenu3 - Card layout
        ],
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}
