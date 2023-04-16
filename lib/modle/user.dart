class UserDataModel {


    dynamic email;
    dynamic uId;
    dynamic firstname;
    dynamic lastName;
    dynamic data;
    dynamic image;
    dynamic country;
    dynamic city;

  UserDataModel({
    required this.uId,
    required this.firstname,
    required this.email,
    required this.lastName,
    required this.data,
    required this.image,
    required this.country,
    required this.city,

  });

    UserDataModel.fromJson(Map<String, dynamic> json)
    {
      email = json['email'];
      uId = json['uId'] ;
      firstname = json['firstname'] ;
      lastName = json['lastName'];
      data = json['data'];
      image = json['image'];
      country = json['country'];
      city = json['city'];
    }
  // UserDataModel.fromJson(Map<String, dynamic> json) {
  //
  //   email = json['email'] ?? '';
  //   uId = json['uId'] ?? '';
  //   firstname = json['firstname'] ;
  //   lastName = json['lastName'] ?? '';
  //   data = json['data'] ?? '';
  //   image = json['image'] ?? '';
  //   country = json['country'] ?? '';
  //   city = json['city'] ?? '';
  // }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'uId': uId,
      'firstname': firstname,
      'lastName': lastName,
      'data': data,
      'image': image,
      'country': country,
      'city': city,
    };
  }
}