import 'package:flutter/material.dart';
import 'package:flutter_bugs_clone/common/components/image_container.dart';
import 'package:flutter_bugs_clone/models/song.dart';
import 'package:flutter_bugs_clone/theme.dart';


class RecentMusicItem extends StatelessWidget {
  final Song item;
  const RecentMusicItem({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageContainer(borderRadius: 0.0, imageUrl: item.imageUri, width: 120, height: 120,),
          const SizedBox(height: 5.0,),
          Text(item.title, style: textTheme().displayMedium,),
          const SizedBox(height: 2.0,),
          Text(item.singer, style: textTheme().displaySmall,),
        ],
      ),
    );
  }
}
