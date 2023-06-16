class ChatDataModel {
  ChatDataModel({
     this.username,
     this.userImage,
     this.userId,
     this.lastMes,
  });

  dynamic username;
  dynamic userImage;
  dynamic userId;
  dynamic lastMes;

  ChatDataModel.fromJson(Map<String, dynamic> json) {
    username = json['username'] ?? '';
    userImage = json['userImage'] ?? '';
    userId = json['userId'] ?? '';
    lastMes = json['lastMes'] ?? '';
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'userImage': userImage,
      'userId': userId,
      'lastMes': lastMes,
    };
  }
}