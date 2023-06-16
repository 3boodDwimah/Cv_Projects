class CvVideo {

  String? time;
  dynamic cvuId;


  String? cvVideos;





  CvVideo({

    this.time,
    this.cvuId,

    this.cvVideos,



  });

  CvVideo.fromJson(Map<String, dynamic> json) {

    time = json['time'];
    cvVideos = json['cvVideos'];
    cvuId = json['cvuId'];

}

  Map<String, dynamic> toJson() {
    return {
      'time': time,
      'cvVideos': cvVideos,
      'cvuId': cvuId,

    };
  }
}




