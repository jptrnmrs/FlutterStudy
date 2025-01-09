import 'package:flutter/material.dart';

// 프로필 헤더 위젯 클래스
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        _buildHeaderAvatar(),
        const SizedBox(width: 20),
        _buildHeaderProfile()
      ],
    );
  }

  Column _buildHeaderProfile() {
    return Column(
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
    );
  }

  SizedBox _buildHeaderAvatar() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/avatar.png'),
      ),
    );
  }
}
