import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bugs_tv/bugs_tv_page.dart';
import 'everytime/everytime_page.dart';
import 'home/home_page.dart';
import 'my_music/my_music_page.dart';
import 'search/search_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0; // 현재 선택된 탭의 인덱스를 저장하는 변수

  // 상태(속성)은 행위를 통해서 변경해야 한다
  void changeStackPages(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // 현재 선택된 인덱스 번호를 활용해서 해당하는 위젯을 화면에 그려줄 수 있다.
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            HomePage(),
            BugsTvPage(),
            MyMusicPage(),
            SearchPage(),
            EverytimePage()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (index) {
            changeStackPages(index);
          },
          items: [
            BottomNavigationBarItem(
              label: "홈",
              icon:
                  Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined),
            ),
            BottomNavigationBarItem(
              label: "벅스TV",
              icon: Icon(_selectedIndex == 1 ? BootstrapIcons.play_btn_fill:BootstrapIcons.play_btn),
            ),
            BottomNavigationBarItem(
              label: "내 음악",
              icon: Icon(_selectedIndex == 2 ? CupertinoIcons.person_fill:CupertinoIcons.person),
            ),
            BottomNavigationBarItem(
              label: "탐색",
              icon: Icon(CupertinoIcons.search),
            ),
            BottomNavigationBarItem(
              label: "24/7",
              icon: Icon(BootstrapIcons.infinity),
            ),
          ],
        ),
      ),
    );
  }
}
