import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bugs_clone/models/playlist.dart';
import 'package:flutter_bugs_clone/models/song.dart';
import 'package:flutter_bugs_clone/screens/home/components/essential_item.dart';
import 'package:flutter_bugs_clone/screens/home/components/home_vertical_slide_menu.dart';
import 'package:flutter_bugs_clone/screens/home/components/music_4_u_item.dart';
import 'package:flutter_bugs_clone/screens/home/components/recent_music_item.dart';
import 'package:flutter_bugs_clone/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView(
        children: [
          HomeVerticalSlideMenu(
            title: Text("뮤직4U", style: textTheme().titleSmall),
            isMore: true,
            children: List.generate(
              dummyPlaylists.length,
              (index) => Music4UItem(
                item: dummyPlaylists[index],
              ),
            ),
          ),
          const SizedBox(height: 50),
          Container(
            color: Colors.deepPurple,
            width: double.infinity,
            height: 60,
          ),
          const SizedBox(height: 40),
          HomeVerticalSlideMenu(
            title: Text("최신 음악", style: textTheme().titleSmall),
            isMore: true,
            taps: [
              Text("전체", style: textTheme().labelLarge),
              const SizedBox(width: 10.0),
              Text("국내", style: textTheme().labelMedium),
              const SizedBox(width: 10.0),
              Text("해외", style: textTheme().labelMedium),
              const SizedBox(width: 10.0),
              Text("커넥트", style: textTheme().labelMedium),
              const SizedBox(width: 10.0),
            ],
            children: List.generate(5, (index) {
              return Column(
                children: [
                  RecentMusicItem(item: dummySongs[index * 2]),
                  const SizedBox(height: 15.0),
                  RecentMusicItem(item: dummySongs[index * 2 + 1])
                ],
              );
            }),
          ),
          HomeVerticalSlideMenu(
            title: Text("essential;", style: textTheme().titleMedium),
            isMore: true,
            subTitle: "벅스에서 편하게 들으세요",
            children: [
              EssentialItem(),
              EssentialItem(),
            ],
          ),
          HomeVerticalSlideMenu(
            title: Text("지금 인기", style: textTheme().titleSmall),
            isMore: false,
            taps: [
              Icon(Icons.circle_rounded, size: 6),
              const SizedBox(width: 5.0),
              Icon(Icons.circle_rounded, size: 6, color: Colors.grey),
              const SizedBox(width: 5.0),
              Icon(Icons.circle_rounded, size: 6, color: Colors.grey)
            ],
            children: [],
          ),
          HomeVerticalSlideMenu(
            title: Text("오늘 듣기 좋은 뮤직PD 앨범", style: textTheme().titleSmall),
            isMore: true,
            children: [],
          ),
          HomeVerticalSlideMenu(
            title: Text("벅스 PLUS", style: textTheme().titleSmall),
            isMore: true,
            children: [],
          ),
          HomeVerticalSlideMenu(
            title: Text("벅스 Pick", style: textTheme().titleSmall),
            isMore: false,
            children: [],
          ),

          // footer
        ],
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Text("홈"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(BootstrapIcons.mic),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.bell),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert_outlined),
        ),
      ],
    );
  }
}
