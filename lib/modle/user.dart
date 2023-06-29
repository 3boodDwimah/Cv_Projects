class UserDataModel {


    dynamic email;
    dynamic uId;
    dynamic firstname;
    dynamic lastName;
    dynamic time;
    dynamic image;
    dynamic country;
    dynamic city;
    dynamic phone;
    dynamic jopTitle;
    dynamic url;
    dynamic userStats;

  UserDataModel({
    required this.uId,
    required this.firstname,
    required this.email,
    required this.lastName,
    required this.time,
    required this.image,
    required this.country,
    required this.city,
    required this.phone,
    required this.jopTitle,
    required this.url,
    required this.userStats,

  });

    UserDataModel.fromJson(Map<String, dynamic> json)
    {
      email = json['email'];
      uId = json['uId'] ;
      firstname = json['firstname'] ;
      lastName = json['lastName'];
      time = json['time'];
      image = json['image'];
      country = json['country'];
      city = json['city'];
      phone = json['phone'];
      jopTitle = json['jopTitle'];
      url = json['url'];
      userStats = json['userStats'] ?? 0;

    }


  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'uId': uId,
      'firstname': firstname,
      'lastName': lastName,
      'time': time,
      'image': image,
      'country': country,
      'city': city,
      'phone': phone,
      'jopTitle': jopTitle,
      'url': url,
      'userStats': userStats,
    };
  }
}