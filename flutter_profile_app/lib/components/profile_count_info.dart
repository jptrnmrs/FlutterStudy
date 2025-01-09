import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {
  const ProfileCountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildInfo('50', 'Posts'),
        _buildVerticalLine(),
        _buildInfo('10', 'Likes'),
        _buildVerticalLine(),
        _buildInfo('3', 'Share'),
      ],
    );
  }

  Container _buildVerticalLine() {
    return Container(
      width: 2,
      height: 60,
      color: Colors.blue,
    );
  }

  Column _buildInfo(String count, String title) {
    return Column(
      children: [
        Text(count, style: TextStyle(fontSize: 15),),
        const SizedBox(height: 5,),
        Text(title, style: TextStyle(fontSize: 15),)
      ],
    );
  }
}
