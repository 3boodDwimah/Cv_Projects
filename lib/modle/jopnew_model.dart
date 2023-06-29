class JobModel {
  JobModel({
    required this.time,
    required this.jopName,
    required this.companyName,
    required this.category,
    required this.id,
    required this.fromPrice,
    required this.toPrice,
    required this.typePrice,
    required this.itemSave,
  });

  dynamic time;
  dynamic jopName;
  dynamic category;
  dynamic companyName;
  dynamic id;
  dynamic fromPrice;
  dynamic toPrice;
  dynamic typePrice;
  dynamic itemSave;

  JobModel.fromJson(Map<String, dynamic> json) {
    time = json['time'] ?? '';
    jopName = json['jopName'] ?? '';
    category = json['category'] ?? '';
    companyName = json['companyName'] ?? '';
    id = json['id'] ?? '';
    fromPrice = json['fromPrice'] ?? '';
    toPrice = json['toPrice'] ?? '';
    typePrice = json['typePrice'] ?? '';
    itemSave =
        List.from(json['itemSave']).map((e) => e.toString()).toList() ?? [];
  }

  Map<String, dynamic> toJson() {
    return {
      'time': time,
      'jopName': jopName,
      'category': category,
      'companyName': companyName,
      'id': id,
      'fromPrice': fromPrice,
      'toPrice': toPrice,
      'typePrice': typePrice,
      'itemSave': itemSave.map((element) => element).toList(),
    };
  }
}

class JobInfoModel {
  JobInfoModel({
    required this.time,
    required this.typeJop,
    required this.fromRang,
    required this.hour,
    required this.skillLevel,
    required this.EducationLevel,
    required this.jopName,
    required this.companyName,
    required this.category,
    required this.fromPrice,
    required this.toPrice,
    required this.id,
    required this.toRang,
    required this.typePrice,
    required this.targetSector,
    required this.toCompanySize  ,
    required this.fromCompanySize,
    required this.dateOfEstablishment,
    required this.phone,
    required this.email,
    required this.location,
    required this.website,
    required this.descriptionJop,
    required this.responsibilities,
    required this.experienceAndSkills,
    required this.benefitsAndPerks,
    required this.skills,
  });

  dynamic time;
  dynamic typeJop;
  dynamic fromRang;
  dynamic hour;
  dynamic skillLevel;
  dynamic EducationLevel;
  dynamic jopName;
  dynamic category;
  dynamic fromPrice;
  dynamic toPrice;
  dynamic companyName;
  dynamic id;
  dynamic toRang;
  dynamic typePrice;
  dynamic targetSector;
  dynamic toCompanySize  ;
  dynamic fromCompanySize;
  dynamic dateOfEstablishment;
  dynamic phone;
  dynamic email;
  dynamic location;
  dynamic website;
  dynamic descriptionJop;
  dynamic responsibilities;
  dynamic experienceAndSkills;
  dynamic benefitsAndPerks;
  dynamic skills;

  JobInfoModel.fromJson(Map<String, dynamic> json) {
    time = json['time'] ?? '';
    jopName = json['jopName'] ?? '';
    category = json['category'] ?? '';
    companyName = json['companyName'] ?? '';
    id = json['id'] ?? '';
    toRang = json['toRang'] ?? '';
    typePrice = json['typePrice'] ?? '';
    typeJop = json['typeJop'] ?? '';
    fromRang = json['fromRang'] ?? '';
    hour = json['hour'] ?? '';
    skillLevel = json['skillLevel'] ?? '';
    EducationLevel = json['EducationLevel'] ?? '';
    targetSector = json['targetSector'] ?? '';
    toCompanySize   = json['toCompanySize'] ?? '';
    fromCompanySize = json['fromCompanySize'] ?? '';
    fromPrice = json['fromPrice'] ?? '';
    toPrice = json['toPrice'] ?? '';
    dateOfEstablishment = json['dateOfEstablishment'] ?? '';
    phone = json['phone'] ?? '';
    email = json['email'] ?? '';
    location = json['location'] ?? '';
    website = json['website'] ?? '';
    descriptionJop = json['descriptionJop'] ?? '';

    responsibilities = List.from(json['responsibilities'])
            .map((e) => e.toString())
            .toList() ??
        [];
    experienceAndSkills = List.from(json['experienceAndSkills'])
            .map((e) => e.toString())
            .toList() ??
        [];
    benefitsAndPerks = List.from(json['benefitsAndPerks'])
            .map((e) => e.toString())
            .toList() ??
        [];
    skills = List.from(json['skills'])
            .map((e) => e.toString())
            .toList() ??
        [];
  }

  Map<String, dynamic> toJson() {
    return {
      'time': time,
      'jopName': jopName,
      'category': category,
      'companyName': companyName,
      'id': id,
      'toRang': toRang,
      'typePrice': typePrice,
      'typeJop': typeJop,
      'fromRang': fromRang,
      'hour': hour,
      'skillLevel': skillLevel,
      'EducationLevel': EducationLevel,
      'targetSector': targetSector,
      'toCompanySize': toCompanySize  ,
      'fromCompanySize': fromCompanySize,
      'dateOfEstablishment': dateOfEstablishment,
      'phone': phone,
      'email': email,
      'location': location,
      'fromPrice': fromPrice,
      'toPrice': toPrice,
      'website': website,
      'descriptionJop': descriptionJop,
      'responsibilities':
          responsibilities.map((element) => element).toList(),
      'experienceAndSkills':
          experienceAndSkills.map((element) => element).toList(),
      'benefitsAndPerks':
          benefitsAndPerks.map((element) => element).toList(),
      'skills': skills.map((element) => element).toList(),
    };
  }
}
