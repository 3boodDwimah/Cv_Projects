import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cv/Ui/Education/educationscreen.dart';
import 'package:cv/Ui/Home/Screen/home_view.dart';
import 'package:cv/Ui/Jop/jopscreen.dart';
import 'package:cv/Ui/Notification/notifications.dart';
import 'package:cv/Ui/Reais/Widget/home_page.dart';
import 'package:cv/bloc/cubit_navbar/states.dart';
import 'package:cv/modle/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:image_picker/image_picker.dart';

import '../../core/components.dart';
import '../../main.dart';
import '../../modle/user.dart';

class SocialCubit extends Cubit<SocialStates> {
  SocialCubit() : super(SocialInitialState());


  static SocialCubit get(context) => BlocProvider.of(context);
  BuildContext? context ;

  File? profileImage;
  var picker = ImagePicker();
  UserDataModel? user;
  File? postImage;


  int currentIndex = 0;


  void changeBottomNav(int index) {
    emit(SocialNewPostState());
    currentIndex = index;
    emit(SocialChangeBottomNavState());
  }

  List<Widget> bottomScreens = [
    const HomeView(),
    const JopScreen(),
    HomePage(),
    const EducationScreen(),
    const NotificationScreen(),
  ];

  void getUserData() {
    emit(SocialGetUserLoadingState());

    FirebaseFirestore.instance.collection('users').doc(uId).get().then((value) {
      user = UserDataModel.fromJson(value.data()!);
      emit(SocialGetUserSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());

      emit(SocialGetUserErrorState(
        message: error.toString(),
      ));
    });
  }

  Future<void> getProfileImage() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      profileImage = File(pickedFile.path);
      print(pickedFile.path);
      emit(SocialProfileImagePickedSuccessState());
    } else {
      print('No image selected.');
      emit(SocialProfileImagePickedErrorState());
      {


      }
    }
  }
  void uploadProfileImage({
    required String firstname,
    required String lastName,
    required String data,
  }) {
    emit(SocialUserUpdateLoadingState());

    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('users/${Uri
        .file(profileImage!.path)
        .pathSegments
        .last}')
        .putFile(profileImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        //emit(SocialUploadProfileImageSuccessState());
        print(value);
        // updateUser(
        //
        //
        //   lastName: lastName,
        //   firstname: firstname,
        //   data: data,
        //   image: value,
        // );
      }).catchError((error) {
        emit(SocialUploadProfileImageErrorState());
      });
    }).catchError((error) {
      emit(SocialUploadProfileImageErrorState());
    });


    // void uploadCoverImage({
    //   required String firstname,
    //   required String lastName,
    //   required String data,
    // }) {
    //   emit(SocialUserUpdateLoadingState());
    //   firebase_storage.FirebaseStorage.instance
    //       .ref()
    //       .child('users/${Uri.file(coverImage!.path).pathSegments.last}')
    //       .putFile(coverImage!)
    //       .then((value) {
    //     value.ref.getDownloadURL().then((value) {
    //       //emit(SocialUploadCoverImageSuccessState());
    //       print(value);
    //       updateUser(
    //         firstname:firstname ,
    //         lastName:lastName ,
    //         data: data,
    //       );
    //     }).catchError((error) {
    //       emit(SocialUploadCoverImageErrorState());
    //     });
    //   }).catchError((error) {
    //     emit(SocialUploadCoverImageErrorState());
    //   });
    // }

//   void updateUserImages({
//   required String name,
//   required String phone,
//   required String bio,
// })
//   {
//     emit(SocialUserUpdateLoadingState());
//
//     if(coverImage != null)
//     {
//       uploadCoverImage();
//     } else if(profileImage != null)
//     {
//       uploadProfileImage();
//     } else if (coverImage != null && profileImage != null)
//     {
//
//     } else
//       {
//         updateUser(
//           name: name,
//           phone: phone,
//           bio: bio,
//         );
//       }
//   }

    void updateUser({
      required String firstname,
      required String lastName,
      required String data,
      required String country,
      required String city,
      String? image,
    }) {
      UserDataModel model = UserDataModel(
        firstname: firstname,
        lastName: lastName,
        data: data,
        country: country,
        city:city ,
        email: user!.email,
        image: image ?? user!.image,
        uId: user!.uId,
        // isEmailVerified: false,
      );

      FirebaseFirestore.instance
          .collection('users')
          .doc(user!.uId)
          .update(model.toJson())
          .then((value) {
        getUserData();
      }).catchError((error) {
        emit(SocialUserUpdateErrorState());
      });
    }}

        //





      }
