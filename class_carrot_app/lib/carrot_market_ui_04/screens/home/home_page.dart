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
          indent: 10.0,
          endIndent: 10.0,
        ),
      ),
    );
  }
  
  AppBar _appBar(){
    return AppBar(
    );
  }
}
