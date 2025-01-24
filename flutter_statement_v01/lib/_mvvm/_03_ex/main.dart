import 'package:flutter/material.dart';

import 'views/video_list_view.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("시청한 동영상"),
          ),
          body: const VideoListView(),
        ),
      ),
    );
  }
}
