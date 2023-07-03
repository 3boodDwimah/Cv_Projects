class CvVideoModel {

  dynamic cvuId;


  String? cvVideos;





  CvVideoModel({

    this.cvuId,

    this.cvVideos,



  });

  CvVideoModel.fromJson(Map<String, dynamic> json) {

    cvVideos = json['cvVideos'];
    cvuId = json['cvuId'];

}

  Map<String, dynamic> toJson() {
    return {
      'cvVideos': cvVideos,
      'cvuId': cvuId,

    };
  }
}




