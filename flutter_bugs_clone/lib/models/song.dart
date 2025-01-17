class Song {
  String imageUri;
  String title;
  String singer;

  Song({
    required this.imageUri,
    required this.title,
    required this.singer,
  });
}

List<Song> dummySongs = List.generate(10, (index) {
  return Song(
    imageUri: "https://picsum.photos/${index + 500}/200", // Picsum 이미지
    title: "Freakin ${index + 1} Song Title", // 가짜 곡 제목
    singer: "Peko${index + 1}, Meno, Singer ${index + 5}", // 가짜 가수 이름
  );
});