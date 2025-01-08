import 'package:flutter/material.dart';

import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // 객체를 const 사용하려면 생성자가 const 생성자여야한다.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

// 페이지 단위의 위젯을 만들어보자

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        endDrawer: Container(
          width: 300,
          color: Colors.white,
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar.png'),
                ),
                title: Text('김수학'),
                subtitle: Text('접속중'),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)),
              ),
              ListTile(
                leading: Icon(Icons.account_circle_outlined),
                title: Text('My Profile'),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_rounded)),
              ),
              ListTile(
                leading: Icon(Icons.post_add_outlined),
                title: Text('New Post'),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_rounded)),
              ),
              ListTile(
                leading: Icon(Icons.mail_outline_rounded),
                title: Text('Direct Message'),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_rounded)),
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text('Search'),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_rounded)),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_rounded)),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ProfileHeader(),
            const SizedBox(
              height: 20,
            ),
            // 프로필 카운트 정보
            const SizedBox(
              height: 20,
            ),
            // 프로필 버튼 2개
            // 탭바 영역
          ],
        ),
      ),
    );
  }
}

// 프로필 헤더 위젯 클래스
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        SizedBox(
          width: 100,
          height: 100,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '김철학',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            Text(
              '프로그래머/강사',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Text(
              '그린컴퓨터아카데미 강사',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ],
        )
      ],
    );
  }
}
