class ReelsModel {
  ReelsModel({
    required this.video,
    required this.time,
    required this.ownerName,
    required this.ownerImage,
    required this.isFollow,
    required this.url,
    required this.likes,
    required this.shares,
  });

  dynamic video;
  dynamic time;
  dynamic ownerName;
  dynamic ownerImage;
  dynamic isFollow;
  dynamic url;
  dynamic likes;
  dynamic shares;

  ReelsModel.fromJson(Map<String, dynamic> json) {
    video = json['video'] ?? '';
    time = json['time'] ?? '';
    ownerName = json['ownerName'] ?? '';
    ownerImage = json['ownerImage'] ?? '';
    isFollow = json['isFollow'] ?? '';
    url = json['url'] ?? '';
    likes = List.from(json['likes']).map((e) => e.toString()).toList() ;
    shares = json['shares'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    return {
      'video': video,
      'time': time,
      'ownerName': ownerName,
      'ownerImage': ownerImage,
      'isFollow': isFollow,
      'url': url,
      'likes': likes.map((element) => element).toList(),
      'shares': shares,
    };
  }
}
