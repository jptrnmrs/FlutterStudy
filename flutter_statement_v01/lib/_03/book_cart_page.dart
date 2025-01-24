import 'package:flutter/material.dart';

import 'inherited_parent.dart';

class BookCartPage extends StatelessWidget {

  const BookCartPage({super.key});
  @override
  Widget build(BuildContext context) {

    InheritedParent inheritedParent =
      context.dependOnInheritedWidgetOfExactType()!;


    return ListView(
      children: inheritedParent.state
          .map((book) => ListTile(title: Text(book)))
          .toList(),
    );
  }
}
