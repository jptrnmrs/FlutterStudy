import 'package:flutter/material.dart';

Container SideBar() {
  return Container(
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
          trailing:
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
        ),
        _buildSideTile(Icons.account_circle_outlined, "My Profile"),
        _buildSideTile(Icons.post_add_outlined, "New Post"),
        _buildSideTile(Icons.mail_outline_rounded, "Direct Message"),
        _buildSideTile(Icons.search, "Search"),
        _buildSideTile(Icons.settings, "Setting"),
      ],
    ),
  );
}

ListTile _buildSideTile(IconData mIcon, String text) {
  return ListTile(
    leading: Icon(mIcon),
    title: Text(text),
    trailing:
    IconButton(onPressed: () {}, icon: Icon(Icons.navigate_next_rounded)),
  );
}