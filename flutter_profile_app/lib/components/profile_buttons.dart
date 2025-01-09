import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFollowButton(),
        _buildMessageButton(),
      ],
    );
  }
  InkWell _buildFollowButton() {
    return InkWell(
      onTap: (){print('pushed');},
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: Text(
          "Follow",
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(),
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }

  InkWell _buildMessageButton() {
    return InkWell(
      onTap: (){print('pushed');},
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: Text(
          "Message",
          style: TextStyle(color: Colors.black),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
