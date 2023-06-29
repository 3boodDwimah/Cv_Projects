// Skill

class EditSkillModel {
  dynamic uId;
  dynamic time;
  dynamic companyName;
  dynamic desTitle;
  dynamic jopTitle;

  EditSkillModel({
    required this.uId,
    required this.time,
    required this.companyName,
    required this.desTitle,
    required this.jopTitle,
  });

  EditSkillModel.fromJson(Map<String, dynamic> json) {
    uId = json['uId'] ?? "";
    time = json['time'] ?? "";
    companyName = json['companyName'] ?? "";
    desTitle = json['desTitle'] ?? "";
    jopTitle = json['jopTitle'] ?? "";
  }

  Map<String, dynamic> toJson() {
    return {
      'uId': uId,
      'time': time,
      'companyName': companyName,
      'desTitle': desTitle,
      'jopTitle': jopTitle,
    };
  }
}

// Education

class EditEducationModel {
  dynamic uId;
  dynamic time;
  dynamic universityName;
  dynamic degree;

  EditEducationModel({
    required this.uId,
    required this.time,
    required this.universityName,
    required this.degree,
  });

  EditEducationModel.fromJson(Map<String, dynamic> json) {
    uId = json['uId'] ?? "";
    time = json['time'] ?? "";
    universityName = json['universityName'] ?? "";
    degree = json['degree'] ?? "";
  }

  Map<String, dynamic> toJson() {
    return {
      'uId': uId,
      'time': time,
      'universityName': universityName,
      'degree': degree,
    };
  }



}

// Followers

class FollowersModel {
  dynamic followersID;
  dynamic time;
  dynamic followersName;
  dynamic followersImage;

  FollowersModel({
    required this.followersID,
    required this.time,
    required this.followersName,
    required this.followersImage,
  });

  FollowersModel.fromJson(Map<String, dynamic> json) {
    followersID = json['followersID'] ?? "";
    time = json['time'] ?? "";
    followersName = json['followersName'] ?? "";
    followersImage = json['followersImage'] ?? "";
  }

  Map<String, dynamic> toJson() {
    return {
      'followersID': followersID,
      'time': time,
      'followersName': followersName,
      'followersImage': followersImage,
    };
  }



}
