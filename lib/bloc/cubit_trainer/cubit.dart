import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cv/Ui/Home/Screen/home_view.dart';
import 'package:cv/bloc/cubit_trainer/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modle/path.dart';




class TrainerCubit extends Cubit<TrainerState> {
  TrainerCubit() : super(TrainerInitiaState());

  static TrainerCubit get(context) => BlocProvider.of(context);

// void createPath({
//    String? image,
//   required String text,
//   String? numberOf,
// }) {
//   emit(CreatePathLoadingState());
//
//   PathModel model = PathModel(
//    text:text,
//   image:image,
//   number:numberOf,
//   );
//   FirebaseFirestore.instance
//       .collection('path')
//       .add(model.toJson())
//       .then((value) {
//     emit(CreatePathSuccessState());
//   }).catchError((error) {
//     emit(CreatePathErrorState(error.toString()));
//   });
//}



}
