class PathModel {
  String? text;

  String? image;

  String? number;

  String? tID;


  PathModel({
    this.text,
    this.image,
    this.number,
    this.tID,

  });

  PathModel.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    image = json['image'];
    text = json['text'];
    tID = json['tID'];
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'number': number,
      'text': text,
      'tID': tID,
    };
  }
}
