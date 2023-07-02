import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cv/Ui/BusinessOwners/addNewJop.dart';
import 'package:cv/Ui/Chats/list_chats.dart';
import 'package:cv/Ui/Education/educationscreen.dart';
import 'package:cv/Ui/Home/Screen/home_view.dart';
import 'package:cv/Ui/Jop/jopscreen.dart';
import 'package:cv/Ui/Notification/notifications.dart';
import 'package:cv/Ui/Reais/Widget/home_page.dart';
import 'package:cv/Ui/Search/search_home.dart';
import 'package:cv/bloc/cubit_navbar/states.dart';
import 'package:cv/core/cache_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  BuildContext? context;

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
  List<Widget> bottomScreensbe = [
     HomePage(),
    const NotificationScreen(),
    AddNewJop(),
     List_Chat(),
    const SearchHome(
    ),
  ];

  void updateEmail(String newEmail) async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      try {
        await user.updateEmail(newEmail);
        print('Email updated successfully');
      } catch (e) {
        print('Error updating email: $e');
      }
    }
  }



  void getUserData() {
    emit(SocialGetUserLoadingState());

    FirebaseFirestore.instance.collection('users').doc(uId).snapshots().listen((value) {
      user = UserDataModel.fromJson(value.data()!);
      emit(SocialGetUserSuccessState());
    });
    // }).catchError((error) {
    //   debugPrint(error.toString());
    //
    //   emit(SocialGetUserErrorState(
    //     message: error.toString(),
    //   ));
    // });
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
      {}
    }
  }



  //
//Edit Profile Image
  void uploadProfileImage({
    required String firstname,
    required String lastName,
    required String time,
    required String city,
    required String country,
    required String url,
    required String jopTitle,
    required String phone,
  }) {
    emit(SocialUserUpdateLoadingState());

    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('users/${Uri.file(profileImage!.path).pathSegments.last}')
        .putFile(profileImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        //emit(SocialUploadProfileImageSuccessState());
        print(value);
        updateUser(
          jopTitle: jopTitle,
          phone: phone,
          url: url,
          city: city,
          country: country,
          lastName: lastName,
          firstname: firstname,
          time: time,
          image: value,
        );
      }).catchError((error) {
        emit(SocialUploadProfileImageErrorState());
      });
    }).catchError((error) {
      emit(SocialUploadProfileImageErrorState());
    });
  }
  void userLogin({
    required String email,
    required String password,
  }) {
    emit(SingInLoadingState());

    FirebaseAuth.instance
        .signInWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      print(value.user!.email!);
      print(value.user!.uid);
      emit(SingInSuccessState(value.user!.uid));
    }).catchError((error) {
      emit(SingInErrorState(error.toString()));
    });
  }


  void updateUser({
    required String firstname,
    required String lastName,
    String? time,
    required String city,
    required String country,
    String? image,
    String? phone,
    String? jopTitle,
    String? url,
  }) {
    UserDataModel model = UserDataModel(
        userStats:2,
        firstname: firstname,
        lastName: lastName,
        time: time,
        email: EmailUser,
        image: image ?? ImagePer,
        uId: uId,
        city: city,
        country: country,
        jopTitle: "jopTitle",
        url: "Url",
        phone: "020000000");

    FirebaseFirestore.instance
        .collection('users')
        .doc(UId)
        .update(model.toJson())
        .then((value) {
      getUserData();
    }).catchError((error) {
      emit(SocialUserUpdateErrorState());
    });
  }






}
