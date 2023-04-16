import 'package:cv/bloc/cubit_navbar/cubit.dart';
import 'package:cv/bloc/cubit_navbar/states.dart';
import 'package:cv/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class NavBarLayout extends StatelessWidget {
  const NavBarLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SocialCubit(),
      child: BlocConsumer<SocialCubit, SocialStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = SocialCubit.get(context);
          return Scaffold(
            backgroundColor: AppColor.ghostWhiteFA,
            body: cubit.bottomScreens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: AppColor.white,
              selectedItemColor: AppColor.main,
              unselectedItemColor: AppColor.mulledWine55,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              selectedFontSize: 0,
              iconSize: 29,
              onTap: (index) {
                cubit.changeBottomNav(index);
              },
              currentIndex: cubit.currentIndex,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(IconlyBroken.home),
                    label: "",
                    activeIcon: Column(
                      children: [
                        Container(
                          width: 10,
                          height: 2.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColor.main,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Icon(
                          IconlyBroken.home,
                        ),
                      ],
                    )),
                BottomNavigationBarItem(
                    label: '',
                    icon: Icon(
                      IconlyLight.work,
                    ),
                    activeIcon: Column(
                      children: [
                        Container(
                          width: 10,
                          height: 2.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColor.main,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Icon(IconlyBroken.work),
                      ],
                    )),
                BottomNavigationBarItem(
                  icon: Icon(
                    IconlyLight.activity,
                  ),
                  activeIcon: Column(
                    children: [
                      Container(
                        width: 10,
                        height: 2.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColor.main,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Icon(IconlyBroken.activity),
                    ],
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/images/edu.svg',
                    height: 24,
                    width: 20,
                  ),
                  activeIcon: Column(
                    children: [
                      Container(
                        width: 10,
                        height: 2.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColor.main,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SvgPicture.asset(
                        'assets/images/edu.svg',
                        height: 24,
                        width: 20,
                        color: AppColor.main,
                      ),
                    ],
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    IconlyBroken.notification,
                  ),
                  activeIcon: Column(
                    children: [
                      Container(
                        width: 10,
                        height: 2.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColor.main,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Icon(IconlyBroken.notification),
                    ],
                  ),
                  label: '',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
