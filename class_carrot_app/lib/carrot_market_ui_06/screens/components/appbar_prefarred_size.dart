import 'package:flutter/material.dart';

PreferredSize appBarBottomLine() {
  var height = 0.5;

  return PreferredSize(
      preferredSize: Size.fromHeight(height),
      child: Divider(
        height: height,
        thickness: height,
        color: Colors.grey,
      ));
}
