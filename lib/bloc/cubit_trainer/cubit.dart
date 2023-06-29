import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cv/bloc/cubit_trainer/states.dart';
import 'package:cv/core/components.dart';
import 'package:cv/modle/path_model.dart';
import 'package:cv/modle/post_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modle/user.dart';





class TrainerCubit extends Cubit<TrainerState> {
  TrainerCubit() : super(TrainerInitiaState());

  static TrainerCubit get(context) => BlocProvider.of(context);

void createPath(String query) {
  emit(CreatePathLoadingState());

  FirebaseFirestore.instance
      .collection('yes').where('text', isEqualTo: query).get()
      .then((value) {
    emit(CreatePathSuccessState());
  }).catchError((error) {
    emit(CreatePathErrorState(error.toString()));
  });

}

  List<Map<String, PathModel>> pathList = [];

  void getPath() {
    FirebaseFirestore.instance.collection('yes').where('text', isEqualTo: 'aaa').snapshots().listen((value) {
      pathList = [];

      for (var element in value.docs) {
        pathList
            .add({element.reference.id: PathModel.fromJson(element.data())});
      }

      emit(GetpathSuccess());
    });
  }

  List<Map<String, PostModel>> aaaalist = [];

  void getaaa() {
    FirebaseFirestore.instance.collection('posts').where('itemsave', isEqualTo: uId).snapshots().listen((value) {
      aaaalist = [];

      for (var element in value.docs) {
        aaaalist.add(
            {element.reference.id: PostModel.fromJson(element.data())});
      }

      emit(GetpathSuccesss());
    });
  }




}
