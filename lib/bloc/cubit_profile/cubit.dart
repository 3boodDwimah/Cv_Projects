import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cv/bloc/cubit_profile/states.dart';
import 'package:cv/core/components.dart';
import 'package:cv/modle/cvvideo_model.dart';

import 'package:cv/modle/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import '../../main.dart';

class EditProfileCubit extends Cubit<EditProfileStates> {
  EditProfileCubit() : super(EditProfileInitialState());

  static EditProfileCubit get(context) => BlocProvider.of(context);
  BuildContext? context;

  File? profileImage;




  var picker = ImagePicker();

  EditSkillModel? editProfileModel;

  File? postImage;

  // Experience and Education
  void createExperience(
      {required String jopTitle,
      required String companyName,
      required String time,
      String? desTitle}) {
    emit(EditProfileLoadingState());

    EditSkillModel model = EditSkillModel(
      uId: UId,
      time: time,
      jopTitle: jopTitle,
      companyName: companyName,
      desTitle: desTitle,
    );

    FirebaseFirestore.instance
        .collection('experience')
        .add(model.toJson())
        .then((value) {
      emit(EditProfileSuccessState());
    }).catchError((error) {
      emit(EditProfileErrorState());
    });
  }

  List<Map<String, EditSkillModel>> ExperienceList = [];

  void getExperienceData() {
    FirebaseFirestore.instance
        .collection('experience')
        .snapshots()
        .listen((value) {
      ExperienceList = [];

      for (var element in value.docs) {
        ExperienceList.add(
            {element.reference.id: EditSkillModel.fromJson(element.data())});
      }

      emit(EditProfileExperienceSuccessState());
    });
  }

  // edu
  void createEducation({
    required String degree,
    required String universityName,
    required String time,
  }) {
    emit(EditProfileLoadingState());

    EditEducationModel model = EditEducationModel(
        uId: UId, time: time, degree: degree, universityName: universityName);

    FirebaseFirestore.instance
        .collection('education')
        .add(model.toJson())
        .then((value) {
      emit(EditProfileSuccessState());
    }).catchError((error) {
      emit(EditProfileErrorState());
    });
  }

  List<Map<String, EditEducationModel>> EducationList = [];

  void getEducationData() {
    FirebaseFirestore.instance
        .collection('education')
        .snapshots()
        .listen((value) {
      EducationList = [];

      for (var element in value.docs) {
        EducationList.add({
          element.reference.id: EditEducationModel.fromJson(element.data())
        });
      }

      emit(EditProfileExperienceSuccessState());
    });
  }

//following
  void createFollowers({
    String? followersImage,
    String? followersName,
    String? followersID,
    String? time,
  }) {
    FollowersModel model = FollowersModel(
      followersImage: "followersImage",
      followersName: "followersName",
      followersID: "followersID",
      time: "time",
    );

    // set my chats

    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .collection('follower')
        .add(model.toJson())
        .then((value) {
      emit(SocialSendMessageSuccessState());
    }).catchError((error) {
      emit(SocialSendMessageErrorState());
    });
  }

  List<FollowersModel> follower = [];

  void getFollowers({
    required String followersID,
  }) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(followersID)
        .collection('follower')
        .snapshots() // => Stream
        .listen((event) {
      follower = [];

      event.docs.forEach((element) {
        follower.add(FollowersModel.fromJson(element.data()));
      });

      emit(SocialGetMessagesSuccessState());
    });
  }

  File? cvVideo;

  var pickerVideo = ImagePicker();

  Future<void> getCvVideo() async {
    final pickedFile = await picker.pickVideo(
      source: ImageSource.camera,
    );

    if (pickedFile != null) {
      cvVideo = File(pickedFile.path);

      showToast(text: "video", state: ToastStates.SUCCESS);
      uploadProfVideo(time: '66/96/21');
      emit(EditProfileProfVideoSuccessState());
    } else {
      showToast(text: "No Video selected.", state: ToastStates.ERROR);
      print('No image selected.');
      emit(EditProfileProfVideoErrorState());
    }
  }

  void removePostImage() {
    cvVideo = null;
    emit(EditProfileRemoveProfVideoState());
  }

  void uploadProfVideo({
    required String time,
  }) {
    emit(EditCreateVideoLoadingState());

    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('users/${Uri.file(cvVideo!.path).pathSegments.last}')
        .putFile(cvVideo!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        print(value);
        createCvVideo(
          time: time,
          CvVideos: value,
        );
      }).catchError((error) {
        emit(EditCreateVideoErrorState());
      });
    }).catchError((error) {
      emit(EditCreateVideoErrorState());
    });
  }

  void createCvVideo({
    required String time,
    String? CvVideos,
    // String? postVideo,
  }) {
    emit(EditCreateVideoLoadingState());

    CvVideoModel model = CvVideoModel(
      cvuId: UId,
      cvVideos: CvVideos ?? '',
    );

    FirebaseFirestore.instance
        .collection('users').doc(uId)
        .update(model.toJson())
        .then((value) {})
        .catchError((error) {
      emit(EditCreateVideoErrorState());
    });

  }
}
