import 'package:flutter/material.dart';

import '../components/profile_buttons.dart';
import '../components/profile_count_info.dart';
import '../components/profile_header.dart';
import '../components/profile_side_bar.dart';
import '../components/profile_tab.dart';

// 페이지 단위의 위젯을 만들어보자

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Profile'),
        ),
        endDrawer: SideBar(),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ProfileHeader(),
            const SizedBox(
              height: 20,
            ),
            ProfileCountInfo(),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [],
            ),
            ProfileButtons(),
            Expanded(child: ProfileTab())
            // 탭바 영역
          ],
        ),
      ),
    );
  }
}
