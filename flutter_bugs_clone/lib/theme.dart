
import 'package:flutter/material.dart';

TextTheme textTheme(){
  return TextTheme(
    titleLarge: TextStyle(fontFamily: "ModernGothic", fontSize: 20,color: Colors.black),
    titleMedium: TextStyle(fontFamily: "ModernGothic", fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),
    titleSmall: TextStyle(fontFamily: "ModernGothic", fontSize: 18,color: Colors.black),
    displayLarge: TextStyle(fontFamily: "ModernGothic",fontSize: 18,color: Colors.black,overflow: TextOverflow.ellipsis),
    displayMedium: TextStyle(fontFamily: "ModernGothic",fontSize: 14,color: Colors.black,overflow: TextOverflow.ellipsis),
    displaySmall: TextStyle(fontFamily: "ModernGothic",fontSize: 10,color: Colors.grey,overflow: TextOverflow.ellipsis),
    bodyLarge: TextStyle(fontFamily: "ModernGothic",fontSize: 13, color: Colors.white),
    bodyMedium: TextStyle(fontFamily: "ModernGothic",fontSize: 11, color: Colors.white),
    bodySmall: TextStyle(fontFamily: "ModernGothic",fontSize: 9, color: Colors.white),
    labelLarge: TextStyle(fontFamily: "ModernGothic",fontWeight: FontWeight.w600, fontSize: 10, color: Colors.black),
    labelMedium: TextStyle(fontFamily: "ModernGothic",fontWeight: FontWeight.w100, fontSize: 10, color: Colors.black87),
    labelSmall: TextStyle(fontFamily: "ModernGothic",fontSize: 8, color: Colors.grey),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    elevation: 0.0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: textTheme().titleLarge,
  );
}

// Bottom Navigation Bar
BottomNavigationBarThemeData bottomNavigationBarTheme(){
  return BottomNavigationBarThemeData(
    selectedLabelStyle: TextStyle(fontFamily: "ModernGothic",fontSize: 14),
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey,
    showUnselectedLabels: true, // 선택 안된 라벨 표시 여부
  );
}

ThemeData mTheme(){
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: bottomNavigationBarTheme(),
  );
}
