class PostModel {
  String? firstname ;
  String? lastName ;
  String? postId;
  String? image;
  String? time;
  String? text;
  String? postImage;
  // String? postVideo;
  dynamic likes;
  dynamic  shares;
  dynamic  pid;
  dynamic  itemsave;






  PostModel({
    this.firstname,
    this.lastName,
    this.postId,
    this.image,
    this.time,
    this.text,
    this.postImage,
    // this.postVideo,
     this.likes,
     this. shares,
     this. pid,
     this. itemsave,


  });

  PostModel.fromJson(Map<String, dynamic> json) {
    firstname = json['firstname'];
    lastName = json['lastName'];
    postId = json['postId'];
    image = json['image'];
    time = json['time'];
    text = json['text'];
    postImage = json['postImage'];
    pid = json['pid'];
    // itemsave = json['itemsave'];
    itemsave = List.from(json['itemsave']).map((e) => e.toString()).toList() ?? [];

    // postVideo = json['postVideo'];
    shares = json['shares'] ?? 0;
    likes = List.from(json['likes']).map((e) => e.toString()).toList() ?? [];

}

  Map<String, dynamic> toJson() {
    return {
      'firstname': firstname,
      'lastName': lastName,
      'postId': postId,
      'image': image,
      'time': time,
      'text': text,
      'postImage': postImage,
      // 'postVideo': postVideo,
      'shares': shares,
      'pid': pid,
      // 'itemsave': itemsave,
      'likes': likes.map((element) => element).toList(),
      'itemsave': itemsave.map((element) => element).toList(),

    };
  }
}





