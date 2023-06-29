import 'package:cv/Ui/BusinessOwners/addNewJop.dart';
import 'package:cv/bloc/cubit_navbar/cubit.dart';
import 'package:cv/bloc/cubit_navbar/states.dart';
import 'package:cv/core/cache_helper.dart';
import 'package:cv/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

import '../../core/components.dart';

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
            body:
            CacheHelper.getData(key: 'fi') == 2 ?

            cubit.bottomScreens[cubit.currentIndex]:
            cubit.bottomScreensbe[cubit.currentIndex],
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
                CacheHelper.getData(key: 'fi') == 2
                    ? BottomNavigationBarItem(
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
                        ))
                    : BottomNavigationBarItem(
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
                CacheHelper.getData(key: 'fi') == 2 ?

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
                ):
                BottomNavigationBarItem(
                    label: '',
                    icon:
                      Container(
                        width: 46,
                        height: 46,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(45)),
                            color: AppColor.main),
                        child: Icon(
                          Icons.add,
                          color: AppColor.white,
                        ),
                      ),
                      backgroundColor: AppColor.main,

                ),
                CacheHelper.getData(key: 'fi') == 2 ?

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
                ):BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/images/iconmes.svg",
                    color: AppColor.mulledWine55,
                    width: 28,
                    height: 28,
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
          "assets/images/iconmes.svg",
          color: AppColor.main,
          width: 28,
          height: 28,
          ),
                    ],
                  ),
                  label: '',
                ),
                CacheHelper.getData(key: 'fi') == 2 ?

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
                ):BottomNavigationBarItem(
                  icon:Icon(IconlyLight.search,size: 22),
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
                  Icon(IconlyLight.search,
                    size: 22,
                        color: AppColor.main,
                      ),
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
