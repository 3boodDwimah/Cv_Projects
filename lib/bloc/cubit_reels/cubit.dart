import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cv/bloc/cubit_reels/states.dart';
import 'package:cv/main.dart';
import 'package:cv/modle/reel_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReelCubit extends Cubit<ReelStates> {
  ReelCubit() : super(ReelInitialState());

  static ReelCubit get(context) => BlocProvider.of(context);

  List<Map<String, ReelsModel>> ReelsList = [];

  void getAllReels() {
    FirebaseFirestore.instance.collection('reels').snapshots().listen((value) {
      ReelsList = [];

      for (var element in value.docs) {
        ReelsList.add(
            {element.reference.id: ReelsModel.fromJson(element.data())});
      }

      emit(GetAllReelSuccess());
    });
  }

  void updateReelLikes(Map<String, ReelsModel> Reel) {
    if (Reel.values.single.likes.any((element) => element == UId)) {
      debugPrint('exist and remove');

      Reel.values.single.likes.removeWhere((element) => element == UId);
    } else {
      debugPrint('not exist and add');

      Reel.values.single.likes.add(UId);
    }

    FirebaseFirestore.instance
        .collection('reels')
        .doc(Reel.keys.single)
        .update(Reel.values.single.toJson())
        .then((value) {
      emit(UpdateReelLikeSuccess());
    }).catchError((error) {
      debugPrint(error.toString());

      emit(UpdateReelLikeError(
        message: error.toString(),
      ));
    });
  }

  void updatePostShares(Map<String, ReelsModel> Reel) {
    Reel.values.single.shares++;

    FirebaseFirestore.instance
        .collection('reels')
        .doc(Reel.keys.single)
        .update(Reel.values.single.toJson())
        .then((value) {
      emit(UpdateReelSharesSuccess());
    }).catchError((error) {
      debugPrint(error.toString());

      emit(UpdateReelSharesError(
        message: error.toString(),
      ));
    });
  }
}
