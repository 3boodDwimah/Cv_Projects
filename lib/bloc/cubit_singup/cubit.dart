import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cv/bloc/cubit_singup/states.dart';
import 'package:cv/core/components.dart';
import 'package:cv/modle/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CvSingUpCubit extends Cubit<CvSingUpStates> {
  CvSingUpCubit() : super(CvSingUpInitialState());

  static CvSingUpCubit get(context) => BlocProvider.of(context);

  UserDataModel? userModel;


  void userRegister({
    required String email,
    required String firstname,
    required String password,
    required String conpassword,
    required String data,
    required String lastName,
    required String country,
    required String city,
  }) {
    emit(CvSingUpLoadingState());

    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      userCreate(
        uId: value.user!.uid,
        firstname: firstname,
        lastName: lastName,
        data: data,
        email: email,
        country:country,
        city:city
      );
    }).catchError((error) {
      emit(CvSingUpErrorState(error.toString()));
    });
  }

  void userCreate({
    required String firstname,
    required String lastName,
    required String email,
    required String data,
    required String uId,
    required String country,
    required String city,
  }) {
    UserDataModel model = UserDataModel(
      firstname: firstname,
      lastName: lastName,
      data: data,
      email: email,
      uId: uId,
      city: city,
      country: country,
      image:
          'https://image.freepik.com/free-photo/photo-attractive-bearded-young-man-with-cherful-expression-makes-okay-gesture-with-both-hands-likes-something-dressed-red-casual-t-shirt-poses-against-white-wall-gestures-indoor_273609-16239.jpg',
     // isEmailVerified:false ,
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(model.toJson())
        .then((value) {
      emit(SocialCreateUserSuccessState());
    }).catchError((error) {
      emit(SocialCreateUserErrorState(error.toString()));
    });
  }

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;

    emit(CvnChangePasswordVisibilityState());
  }
}
