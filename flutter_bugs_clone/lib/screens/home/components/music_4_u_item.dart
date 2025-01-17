import 'package:flutter/material.dart';
import 'package:flutter_bugs_clone/common/components/image_container.dart';
import 'package:flutter_bugs_clone/models/playlist.dart';
import 'package:flutter_bugs_clone/theme.dart';

class Music4UItem extends StatelessWidget {
  final Playlist item;
  const Music4UItem({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Stack(
        children: [
          ImageContainer(
            borderRadius: 4.0,
            imageUrl: item.imageUri,
            height: 180,
            width: 180,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 180,
              padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 24.0),
              child: Column(
                children: [
                  Visibility(
                    visible: item.innerTitle != null,
                    child: Text(
                      textAlign: TextAlign.center,
                      item.innerTitle ?? '',
                      style: textTheme().bodyLarge,
                    ),
                  ),
                  Visibility(
                    visible: item.innerSubtitle != null,
                    child: Text(
                      item.innerSubtitle ?? '',
                      style: textTheme().bodySmall,
                    ),
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}

