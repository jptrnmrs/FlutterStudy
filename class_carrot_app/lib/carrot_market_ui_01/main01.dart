
import 'package:flutter/material.dart';

import 'screens/main_screen.dart';
import 'theme.dart';

void main() {
  runApp(CarrotMarketUI());
}

class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'carrot_ui',
      theme: mTheme(),
      home: MainScreen(),
    );
  }
}
