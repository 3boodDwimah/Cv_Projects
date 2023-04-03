class UserModel {
  String? fName;
  String? sName;
  String? email;
  String? data;
  String? uId;
  //String? image;
  //String? cover;
  //String? bio;
  bool? isEmailVerified;

  UserModel({
    this.email,
    this.fName,
    this.sName,
    this.data,
    this.uId,
    //this.image,
    //this.cover,
    //this.bio,
    this.isEmailVerified,
  });

  UserModel.fromJson(Map<String, dynamic> json)
  {
    email = json['email'];
    fName = json['fName'];
    sName = json['sName'];
    data = json['data'];
    uId = json['uId'];
   // image = json['image'];
   // cover = json['cover'];
   // bio = json['bio'];
    isEmailVerified = json['isEmailVerified'];
  }

  Map<String, dynamic> toMap()
  {
    return {
      'fName':fName,
      'sName':sName,
      'email':email,
      'data':data,
      'uId':uId,
     // 'image':image,
     // 'cover':cover,
     // 'bio':bio,
      'isEmailVerified':isEmailVerified,
    };
  }
}