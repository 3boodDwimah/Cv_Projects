
import 'package:cv/Ui/Education/educationscreen.dart';
import 'package:cv/Ui/Home/Screen/home_view.dart';
import 'package:cv/Ui/Jop/jopscreen.dart';
import 'package:cv/Ui/Notification/notifications.dart';
import 'package:cv/Ui/Reais/Widget/home_page.dart';
import 'package:cv/bloc/cubit_navbar/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class NavBarCubit extends Cubit<NavBarStates> {
  NavBarCubit() : super(NavBarInitialState());

  static NavBarCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomScreens = [
    const HomeView(),
    const JopScreen(),
     HomePage(),
    const EducationScreen(),
    const NotificationScreen(),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(NavBarChangeBottomNavState());
  }
}
