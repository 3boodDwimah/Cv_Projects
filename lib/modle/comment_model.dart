
class CommentDataModel {
  CommentDataModel({
    required this.text,
    required this.time,
    required this.ownerName,
    required this.ownerImage,
    required this.cid,
  });

  dynamic text;
  dynamic time;
  dynamic ownerName;
  dynamic ownerImage;
  dynamic cid;

  CommentDataModel.fromJson(Map<String, dynamic> json) {
    text = json['text'] ?? '';
    time = json['time'] ?? '';
    ownerName = json['ownerName'] ?? '';
    ownerImage = json['ownerImage'] ?? '';
    cid = json['cid'] ?? '';
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'time': time,
      'ownerName': ownerName,
      'ownerImage': ownerImage,
      'cid': cid,
    };
  }
}
