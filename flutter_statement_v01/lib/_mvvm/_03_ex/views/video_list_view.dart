import 'package:flutter/material.dart';
import '../models/video.dart';
import '../view_models/video_list_view_model.dart';

class VideoListView extends StatefulWidget {
  const VideoListView({super.key});

  @override
  State<VideoListView> createState() => _VideoListViewState();
}

class _VideoListViewState extends State<VideoListView> {
  TextEditingController _controller = TextEditingController();

  VideoListViewModel _listViewModel = VideoListViewModel();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(_listViewModel.nowContent().title,style: TextStyle(fontSize: 20),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){_listViewModel.prevIndex();setState(() {

                  });}, icon: Icon(Icons.skip_previous)),
                  IconButton(onPressed: (){_listViewModel.togglePlay(); setState(() {

                  });}, icon: Icon(_listViewModel.nowContent().isPlay?Icons.pause:Icons.play_arrow)),
                  IconButton(onPressed: (){_listViewModel.nextIndex();setState(() {

                  });}, icon: Icon(Icons.skip_next))
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _listViewModel.recentItem.length,
            itemBuilder: (context, index) {
              final Video item = _listViewModel.recentItem[index];
              return ListTile(
                leading: Icon(Icons.video_collection_outlined),
                title: Text(item.title),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        _listViewModel.toggleLike(item);
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.thumb_up,
                        color: item.isLike ? Colors.green : Colors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _listViewModel.toggleHate(item);
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.thumb_down,
                        color: item.isHate ? Colors.redAccent : Colors.grey,
                      ),
                    ),

                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
