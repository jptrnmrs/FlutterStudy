
class Playlist {
  String imageUri; // 썸네일 이미지
  String linkedUri; // 이미지를 눌렀을 때 이동할 장소
  String? innerTitle; // 이미지 안에 표시될 플레이리스트 제목
  String? innerSubtitle; // 설명이나 만든 사람 이름 또는 태그

  @override
  String toString() {
    return 'Playlist{imageUri: $imageUri, linkedUri: $linkedUri, innerTitle: $innerTitle, innerSubtitle: $innerSubtitle}';
  }

  Playlist(
      { required this.imageUri,
        required this.linkedUri,
      this.innerTitle,
      this.innerSubtitle,}); // 설명이나 만든 사람 이름 또는 태그


}

List<Playlist> dummyPlaylists = [
  Playlist(
    imageUri: "https://picsum.photos/203", // Picsum 이미지
    linkedUri: "https://example.com/playlists/1",
    innerTitle: "우리 사랑이 영화라면 주제가가 되겠지",
  ),
  Playlist(
    imageUri:"https://picsum.photos/201",
    linkedUri:"https://example.com/playlists/2",
    innerTitle:"더 많은 플레이리스트",
    innerSubtitle:"로그인하고 뮤직4U를 경험해 보세요.",
  ),
  Playlist(
    imageUri:"https://picsum.photos/200/200?random=3",
    linkedUri:"https://example.com/playlists/3",
    innerTitle:"Top 50 Global",
    innerSubtitle:"By Popular Demand",
  ),
  Playlist(
    imageUri:"https://picsum.photos/200/200?random=4",
    linkedUri:"https://example.com/playlists/4",
    innerTitle:"Relaxing Piano",
    innerSubtitle:"Peaceful Sounds",
  ),
  Playlist(
    imageUri:"https://picsum.photos/200/200?random=5",
    linkedUri:"https://example.com/playlists/5",
    innerTitle:"Road Trip Classics",
    innerSubtitle:"Drive and Enjoy",
  ),
];