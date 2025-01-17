import 'package:flutter/material.dart';

import '../../../models/icon_menu.dart';

class CardIconMenu extends StatelessWidget {
  final List<IconMenu> iconMenuList;

  const CardIconMenu({required this.iconMenuList, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: Column(
        children: List.generate(
            iconMenuList.length,
            (index) => ListTile(
                  leading: Icon(
                    iconMenuList[index].iconData,
                    size: 20,
                  ),
                  title: Text(
                    iconMenuList[index].title,
                  ),
                )),
      ),
    );
  }
}
