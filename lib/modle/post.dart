class PostModel {
  String? firstname ;
  String? lastName ;
  String? uId;
  String? image;
  String? time;
  String? text;
  String? postImage;
  // String? postVideo;
  dynamic likes;
  dynamic  shares;
  dynamic comments;





  PostModel({
    this.firstname,
    this.lastName,
    this.uId,
    this.image,
    this.time,
    this.text,
    this.postImage,
    // this.postVideo,
     this.likes,
     this. shares,
   this.comments,


  });

  PostModel.fromJson(Map<String, dynamic> json) {
    firstname = json['firstname'];
    lastName = json['lastName'];
    uId = json['uId'];
    image = json['image'];
    time = json['time'];
    text = json['text'];
    postImage = json['postImage'];
    // postVideo = json['postVideo'];
    shares = json['shares'] ?? 0;
    likes = List.from(json['likes']).map((e) => e.toString()).toList() ?? [];
    comments = List.from(json['comments']).map((e) => CommentDataModel.fromJson(e)).toList() ?? [];

}

  Map<String, dynamic> toJson() {
    return {
      'firstname': firstname,
      'lastName': lastName,
      'uId': uId,
      'image': image,
      'time': time,
      'text': text,
      'postImage': postImage,
      // 'postVideo': postVideo,
      'shares': shares,
      'likes': likes.map((element) => element).toList(),
     'comments': comments.map((element) => element.toJson()).toList(),

    };
  }
}





class CommentDataModel {
  CommentDataModel({
    required this.text,
    required this.time,
    required this.firstname,
    required this.lastName,
    required this.image,
  });

 dynamic text;
 dynamic time;
 dynamic firstname;
 dynamic lastName;
 dynamic image;

  CommentDataModel.fromJson(Map<String, dynamic> json) {
    text = json['text'] ?? '';
    time = json['time'] ?? '';
    firstname = json['firstname'] ?? '';
    lastName = json['lastName'] ?? '';
    image = json['image'] ?? '';
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'time': time,
      'firstname': firstname,
      'lastName': lastName,
      'image': image,
    };
  }
}