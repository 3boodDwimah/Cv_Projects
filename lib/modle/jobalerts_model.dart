class JobAlertsModel {
  JobAlertsModel({
    required this.time,
    required this.jopName,
    required this.category,
    required this.id,

  });


  dynamic time;
  dynamic jopName;
  dynamic category;
  dynamic id;

  JobAlertsModel.fromJson(Map<String, dynamic> json) {
    time = json['time'] ?? '';
    jopName = json['jopName'] ?? '';
    category = json['category'] ?? '';
    id = json['id'] ?? '';

  }

  Map<String, dynamic> toJson() {
    return {
      'time': time,
      'jopName': jopName,
      'category': category,
      'id': id,

    };
  }
}
