import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'components/product_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      // body: ListView.separated(itemBuilder: itemBuilder, separatorBuilder: separatorBuilder, itemCount: itemCount),
      body: ListView.separated(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return ProductItem(product: productList[index]);
        },
        separatorBuilder: (context, index) => const Divider(
          thickness: 0.5,
          color: Colors.grey,
          indent: 16.0,
          endIndent: 16.0,
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      forceMaterialTransparency: true,
      backgroundColor: Colors.white,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.5),
        child: Divider(
          thickness: 0.5,
          color: Colors.grey,
        ),
      ),
      title: Row(
        children: [
          Text("좌동"),
          const SizedBox(
            width: 4.0,
          ),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 25,
          )
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.list_bullet)),
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
      ],
    );
  }
}
