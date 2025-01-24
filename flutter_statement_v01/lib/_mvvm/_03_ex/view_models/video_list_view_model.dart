
import '../models/video.dart';

class VideoListViewModel{
  List<Video> _items =[
    Video(title: '위키드'),
    Video(title: '기생충'),
    Video(title: '헤어질 결심'),
  ];

  int index = 0;

  List<Video> recentItem =[];

  Video nowContent(){
    return _items[index];
  }

  void nextIndex(){
    nowContent().isPlay=true;
    recentItem.add(nowContent());
    index++;
    if(index==_items.length) index=0;
  }

  void prevIndex(){
    nowContent().isPlay=true;
    recentItem.add(nowContent());
    index--;
    if(index<0) index=_items.length-1;
  }

  void togglePlay(){
    nowContent().isPlay = !nowContent().isPlay;
  }
  void toggleLike(Video video){
    video.isLike = !video.isLike;
    if(video.isLike) video.isHate = false;
  }
  void toggleHate(Video video){
    video.isHate = !video.isHate;
    if(video.isHate) video.isLike = false;
  }
}