import 'package:flutter/material.dart';

const MaterialColor primaryWhite = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF), // 완전 흰색
    100: Color(0xFFF5F5F5), // 약간 어두운 흰색
    200: Color(0xFFE0E0E0), // 더 어두운 흰색
    300: Color(0xFFCCCCCC), // 연한 회색
    400: Color(0xFFB3B3B3), // 중간 정도 회색
    500: Color(0xFF999999), // 더 진한 회색
    600: Color(0xFF808080), // 다소 진한 회색
    700: Color(0xFF666666), // 짙은 회색
    800: Color(0xFF4D4D4D), // 아주 짙은 회색
    900: Color(0xFF333333), // 가장 짙은 회색
  },
);

// 전역 함수
ThemeData theme() {
  // 앱의 전반적인 테마(색상, 글꼴, 위젯 스타일 등)을 정의하는 클래스
  // 전체적으로 통일성있는 디자인 유지를 위해 사용
  return ThemeData(
    // 앱의 기본 색상 팔레트 설정
    primarySwatch: primaryWhite,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.indigoAccent)
    )
  );
}
