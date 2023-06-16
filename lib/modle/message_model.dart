class MessageDataModel {
  MessageDataModel( {
    this.senderId,
    this.receiverId,
    this.message,
    this.read,
    this.time,

  });

 dynamic senderId;
 dynamic receiverId;
 dynamic message;
 dynamic time;
 dynamic read;



  MessageDataModel.fromJson(Map<String, dynamic> json) {
    senderId = json['senderId'] ?? '';
    receiverId = json['receiverId'] ?? '';
    message = json['message'] ?? '';
    time = json['time'] ?? '';
    read = json['read'] ?? '';
  }

  Map<String, dynamic> toJson() {
    return {
      'senderId': senderId,
      'receiverId': receiverId,
      'message': message,
      'time': time,
      'read': read,
    };
  }
}