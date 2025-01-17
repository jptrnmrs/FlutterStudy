import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bugs_clone/theme.dart';

class HomeVerticalSlideMenu extends StatelessWidget {
  final Text title;
  final bool isMore;
  final String? subTitle;
  final List<Widget>? taps;
  final List<Widget> children;

  const HomeVerticalSlideMenu({
    required this.title,
    this.subTitle,
    required this.isMore,
    this.taps,
    required this.children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                title,
                const SizedBox(width: 5.0,),
                Text(
                  subTitle ?? '',
                  style: textTheme().labelSmall,
                ),
                const SizedBox(width: 3.0,),
                Visibility(
                  visible: isMore,
                  child: Icon(
                    CupertinoIcons.right_chevron,
                    size: 16,
                  ),
                ),
                Visibility(
                  visible: taps != null,
                  child: Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:taps??[]
                        ),
                  )
                        ?? Text("data",style: textTheme().labelSmall,),
                )
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 15.0,
              ),
              ...children,
            ],
          ),
        )
      ],
    );
  }
}
