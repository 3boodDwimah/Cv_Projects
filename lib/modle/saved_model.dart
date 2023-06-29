
class SaveDataModel {
  SaveDataModel({
    required this.id,
    required this.pid,

  });

  dynamic id;
  dynamic pid;


  SaveDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? '';
    pid = json['pid'] ?? '';

  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pid': pid,

    };
  }
}
