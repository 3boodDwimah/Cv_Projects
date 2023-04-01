import 'package:cv/bloc/cubit_login/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CvSingUpCubit extends Cubit<CvSingUpStates> {
  CvSingUpCubit() : super(CvSingUpInitialState());

  static CvSingUpCubit get(context) => BlocProvider.of(context);

  void userRegister({
    required String name,
    required String email,
    required String password,
    required String phone,
  }) {
    emit(CvSingUpLoadingState());

    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      // userCreate(
      //   uid: value.user.uid,
      //   name: name,
      //   phone: phone,
      //   email: email,
      // );
      print(value.user!.email);
      print(value.user!.uid);
      emit(CvSingUpSuccessState());
    }).catchError((error) {
      emit(CvSingUpErrorState(error.toString()));
    });
  }
  //
  // void userCreate({
  //   required String name,
  //   required String email,
  //   required String phone,
  //   required String uid,
  // })

    // SocialUserModel model = SocialUserModel(
    //   name: name,
    //   email: email,
    //   phone: phone,
    //   uId: uid,
    //   bio: 'write your bio ...',
    //   cover: 'https://image.freepik.com/free-photo/photo-attractive-bearded-young-man-with-cherful-expression-makes-okay-gesture-with-both-hands-likes-something-dressed-red-casual-t-shirt-poses-against-white-wall-gestures-indoor_273609-16239.jpg',
    //   image: 'https://image.freepik.com/free-photo/photo-attractive-bearded-young-man-with-cherful-expression-makes-okay-gesture-with-both-hands-likes-something-dressed-red-casual-t-shirt-poses-against-white-wall-gestures-indoor_273609-16239.jpg',
    //   isEmailVerified: false,
    // );
    //   FirebaseFirestore.instance
    //       .collection('users')
    //       .doc(uid)
    //       .set(model.toMap())
    //       .then((value) {
    //     emit(SocialCreateUserSuccessState());
    //   }).catchError((error) {
    //     emit(SocialCreateUserErrorState(error.toString()));
    //   });
    // }

    IconData suffix = Icons.visibility_outlined;
    bool isPassword = true;

    void changePasswordVisibility() {
      isPassword = !isPassword;
      suffix =
      isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;

      emit(CvnChangePasswordVisibilityState());
    }

}
