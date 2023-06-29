import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cv/bloc/cubit_jop/states.dart';
import 'package:cv/modle/jopnew_model.dart';
import 'package:cv/modle/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modle/jobalerts_model.dart';

class JopCubit extends Cubit<JopStates> {
  JopCubit() : super(JopInitialState());

  static JopCubit get(context) => BlocProvider.of(context);

  List<Map<String, JobAlertsModel>> jopAlertsList = [];

  void getAllJopAlerts() {
    FirebaseFirestore.instance.collection('jobalerts').snapshots().listen((value) {
      jopAlertsList = [];

      for (var element in value.docs) {
        jopAlertsList.add(
            {element.reference.id: JobAlertsModel.fromJson(element.data())});
      }

      emit(GetAllJopAlertsSuccess());
    });
  }

  List<Map<String, JobModel>> jopNewsList = [];

  void getAllJopNew() {
    FirebaseFirestore.instance.collection('jopnew').snapshots().listen((value) {
      jopNewsList = [];

      for (var element in value.docs) {
        jopNewsList.add(
            {element.reference.id: JobModel.fromJson(element.data())});
      }

      emit(GetAllJopNewsSuccess());
    });
  }



  JobInfoModel? jobInfoModel ;

  void getJopDetails1(jid) {
    emit(JopDetailsLoadingState());

    FirebaseFirestore.instance.collection('jopnew').doc(jid).collection('infojop').doc(jid).snapshots().listen((value) {
      jobInfoModel = JobInfoModel.fromJson(value.data()!);
      emit(JopDetailsSuccessState());
    });
  }








}
