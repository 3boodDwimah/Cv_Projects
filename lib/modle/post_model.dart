// class PostDataModel {
//   PostDataModel({
//      this.text,
//      this.firstname,
//      this.lastName,
//      this.uId,
//      this.image,
//     this.likes,
//      this.dateTime,
//      this.postImage,
//      this.postVideo,
//   });
//
//   dynamic firstname;
//   dynamic lastName;
//   dynamic uId;
//   dynamic dateTime;
//   dynamic text;
//   dynamic postImage;
//   dynamic postVideo;
//   dynamic likes;
//   dynamic image;
//   dynamic shares;
//   dynamic comments;
//
//   PostDataModel.fromJson(Map<String, dynamic> json) {
//     text = json['text'] ?? '';
//     uId = json['uId'] ?? '';
//     firstname = json['firstname'] ?? '';
//     image = json['image'] ?? '';
//     lastName = json['lastName'] ?? '';
//     dateTime = json['dateTime'] ?? '';
//     postImage = json['postImage'] ?? '';
//     postVideo = json['postVideo'] ?? '';
//     likes = List.from(json['likes']).map((e) => e.toString()).toList();
//     shares = json['shares'] ?? 0;
//     comments = List.from(json['comments'])
//         .map((e) => CommentDataModel.fromJson(e))
//         .toList();
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'firstname': firstname,
//       'lastName': lastName,
//       'dateTime': dateTime,
//       'text': text,
//       'uId': uId,
//       'image': image,
//       'postImage': postImage,
//       'postVideo': postVideo,
//       'likes': likes.map((element) => element).toList(),
//       'shares': shares,
//       'comments': comments.map((element) => element.toJson()).toList(),
//     };
//   }
// }
//
// class CommentDataModel {
//   CommentDataModel({
//     required this.text,
//     required this.time,
//     required this.ownerName,
//     required this.ownerImage,
//   });
//
//   late final String text;
//   late final String time;
//   late final String ownerName;
//   late final String ownerImage;
//
//   CommentDataModel.fromJson(Map<String, dynamic> json) {
//     text = json['text'] ?? '';
//     time = json['time'] ?? '';
//     ownerName = json['ownerName'] ?? '';
//     ownerImage = json['ownerImage'] ?? '';
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'text': text,
//       'time': time,
//       'ownerName': ownerName,
//       'ownerImage': ownerImage,
//     };
//   }
// }
