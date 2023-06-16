import 'package:cv/Ui/Groups/Screen/group.dart';
import 'package:cv/Ui/Home/Screen/home_view.dart';
import 'package:cv/Ui/ITEM_SAVED/item_saved_screen.dart';
import 'package:cv/Ui/NavBar/navbar.dart';
import 'package:cv/Ui/Notification/Widget/image.dart';
import 'package:cv/Ui/Notification/drower.dart';
import 'package:cv/Ui/Profiles/Widget/edit/editprofile.dart';
import 'package:cv/Ui/Profiles/Widget/edit/leaflets.dart';
import 'package:cv/Ui/Profiles/Widget/followers.dart';
import 'package:cv/Ui/Profiles/Widget/jop.dart';
import 'package:cv/Ui/Profiles/Widget/path_education.dart';
import 'package:cv/Ui/Profiles/Widget/profile_persona.dart';
import 'package:cv/Ui/Profiles/Widget/skill.dart';
import 'package:cv/Ui/Room/voice_screen.dart';
import 'package:cv/Ui/Search/search_home.dart';
import 'package:cv/Ui/SingIn/singin.dart';
import 'package:cv/bloc/cubit_navbar/cubit.dart';
import 'package:cv/bloc/cubit_profile/cubit.dart';
import 'package:cv/core/cache_helper.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

import '../../../core/colors.dart';
import '../../bloc/cubit_profile/states.dart';
import '../../core/string.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

List<String> items = [
  "المتابِعيين",
  "المتابَعيين",
];
int current = 0;

class _ProfileState extends State<Profile> {
  final int states = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColorF3,
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsetsDirectional.only(bottom: 30.0, end: 00),
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 10.0),
                child: Imagepro((SocialCubit.get(context).user!.uId! ==
                        CacheHelper.sharedPreferences!.getString('PostId'))
                    ? SocialCubit.get(context).user!.image
                    : uImage),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 10.0),
                child: CustomText(
                  text: (SocialCubit.get(context).user!.uId! ==
                          CacheHelper.sharedPreferences!.getString('PostId'))
                      ? "${SocialCubit.get(context).user?.firstname} ${SocialCubit.get(context).user?.lastName}"
                      : "${uFirstName} ${uLastName}",
                  fontFamily: "Tajawal",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  colors: Colors.white,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 5.0),
                child: Text("مصمم واجهات مستخدم - فلسطين",
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 10.0),
                child: Text("متابَع 45 - متابَع 45",
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ),
        leadingWidth: 120,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColor.main,
        ),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 115.0),
          child: Container(
            child: Row(
              children: [
                SizedBox(
                  width: 13,
                ),
                GestureDetector(
                    onTap: () {
                      CacheHelper.removeData(key: 'PostId');
                      if (CacheHelper.sharedPreferences!.getString('PostId') ==
                          null) {
                        print(
                            "PostId ::  ${CacheHelper.sharedPreferences!.getString('PostId')}");
                        navigateAndFinish(context, NavBarLayout());
                      }
                    },
                    child: Icon(IconlyLight.arrow_right_2)),
                SizedBox(
                  width: 7,
                ),
                SvgPicture.asset(
                  "assets/images/iconmes.svg",
                  width: 28,
                  height: 28,
                ),
                SizedBox(
                  width: 12,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchHome()));
                    },
                    child: Icon(IconlyLight.search)),
              ],
            ),
          ),
        ),
        actions: [
          Container(
              padding: EdgeInsetsDirectional.only(end: 20, bottom: 115),
              child: Row(
                children: [
                  (SocialCubit.get(context).user!.uId! ==
                          CacheHelper.sharedPreferences!.getString('PostId'))
                      ? GestureDetector(
                          onTap: () {
                            navigateTo(context, EditProfile());
                          },
                          child: SvgPicture.asset("assets/images/pan.svg",
                              color: AppColor.white))
                      : Container(),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      padding: EdgeInsetsDirectional.only(end: 10),
                      child: Builder(
                          builder: (context) => IconButton(
                              icon: SvgPicture.asset(
                                "assets/images/iocnmune.svg",
                                width: 26,
                                height: 26,
                              ),
                              onPressed: () =>
                                  Scaffold.of(context).openDrawer())))
                ],
              ))
        ],
        backgroundColor: AppColor.main,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        toolbarHeight: 200,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: SvgPicture.asset(
              'assets/images/svg2.svg',
              height: 200,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        elevation: 0,
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      height: 130,
                      child: SvgPicture.asset(
                        "assets/images/Drawer.svg",
                        width: double.infinity,
                        fit: BoxFit.contain,
                      )),
                  Positioned(
                    bottom: 30,
                    right: 20,
                    child: Text(
                      'القائمة ',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: Images(
                  "${SocialCubit.get(context).user?.image ?? ""}",
                ),
                title: Text(
                    "${SocialCubit.get(context).user?.firstname ?? "User Name"} ${SocialCubit.get(context).user?.lastName ?? ""}"),
                subtitle: Text(
                  "مصمم واجهات مستخدم",
                  style: TextStyle(height: 0.9),
                ),
                trailing: GestureDetector(
                  onTap: () {
                    navigateTo(context, Profile());
                  },
                  child: Container(
                    height: 30,
                    child: Icon(
                      IconlyLight.arrow_left_2,
                      color: AppColor.black,
                    ),
                    width: 30,
                    decoration: BoxDecoration(
                        color: Color(0xffF2F2F3),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              SizedBox(
                height: 11,
              ),
              myDivider(),
              SizedBox(
                height: 11,
              ),
              GestureDetector(
                  onTap: () {
                    navigateTo(context, item());
                  },
                  child: drawer("العناصر المحفوظة", IconlyLight.bookmark)),
              SizedBox(
                height: 11,
              ),
              drawer("مركز المعلومات", IconlyLight.info_circle),
              SizedBox(
                height: 11,
              ),
              drawer("الحاضنات", IconlyLight.folder),
              SizedBox(
                height: 11,
              ),
              GestureDetector(
                  onTap: () {
                    navigateTo(context, Group());
                  },
                  child: drawer("المجموعات", IconlyLight.user_1)),
              SizedBox(
                height: 11,
              ),
              GestureDetector(
                  onTap: () {
                    navigateTo(context, VoiceRoom());
                  },
                  child: drawer("الغرف الصوتية", IconlyLight.voice_2)),
              SizedBox(
                height: 11,
              ),
              drawer("غرف الفيديو", IconlyLight.video),
              SizedBox(
                height: 11,
              ),
              drawer("المناسبات", IconlyLight.calendar),
              SizedBox(
                height: 11,
              ),
              drawer("المساعدة والدعم", IconlyLight.user),
              SizedBox(
                height: 11,
              ),
              drawer("الإعدادات والخصوصية", IconlyLight.setting),
              SizedBox(
                height: 11,
              ),
              GestureDetector(
                  onTap: () {
                    void signOut(context) {
                      CacheHelper.removeData(
                        key: 'uid',
                      ).then((value) {
                        if (value) {
                          navigateAndFinish(
                            context,
                            SingIn(),
                          );
                        }
                      });
                    }

                    signOut(context);
                  },
                  child: drawer("تسجيل الخروج", IconlyLight.logout)),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 8,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
            ),
            Expanded(
              child: DefaultTabController(
                  length: 6,
                  child: Column(
                    children: [
                      TabBar(
                          isScrollable: true,
                          indicatorPadding:
                              const EdgeInsetsDirectional.only(start: 10),
                          indicatorWeight: 1,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorColor: AppColor.main,
                          tabs: [
                            Tab(
                              child: textWidget("الملف الشخصي"),
                            ),
                            Tab(
                              child: textWidget("المنشورات"),
                            ),
                            Tab(
                              child: textWidget("الخبرة والتعليم"),
                            ),
                            Tab(
                              child: textWidget("المسارات التعليمية"),
                            ),
                            Tab(
                              child: textWidget('الوظائف'),
                            ),
                            Tab(
                              child: textWidget(
                                'المتابعيين',
                              ),
                            ),
                          ]),
                      Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            profilePersona(context),
                            //  leaflets(context),

                            leaflets(),

                            ///////////////////////////////////////////////////////////////////////////////

                            Skill(),
                            PathEducation(),
                            jopsed(context),
                            Column(
                              children: [
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      right: 15, left: 15, top: 0),
                                  width: double.infinity,
                                  height: 60,
                                  child: ListView.builder(
                                      physics: const BouncingScrollPhysics(),
                                      itemCount: items.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (ctx, index) {
                                        return Column(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  current = index;
                                                });
                                              },
                                              child: AnimatedContainer(
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                margin: const EdgeInsets.all(5),
                                                width: 109,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(current ==
                                                              index
                                                          ? "assets/images/Mask Group 76.png"
                                                          : "assets/images/Path 47066.png")),
                                                  color: current == index
                                                      ? AppColor.main
                                                      : AppColor.white,
                                                  borderRadius: current == index
                                                      ? BorderRadius.circular(
                                                          10)
                                                      : BorderRadius.circular(
                                                          10),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    items[index],
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: current == index
                                                            ? AppColor.white
                                                            : AppColor.black),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      }),
                                ),
                                current == 0
                                    ? BlocConsumer<EditProfileCubit,
                                            EditProfileStates>(
                                        listener: (context, state) {
                                        EditProfileCubit.get(context)
                                            .follower
                                            .length;
                                        print(
                                            "/*/${EditProfileCubit.get(context).follower.length}");
                                        //   EditProfileCubit.get(context).follower[1].followersName;
                                        print(
                                            "/*/${EditProfileCubit.get(context).follower.length}");
                                      }, builder: (context, state) {
                                        return Followers();
                                      })
                                    : Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 15),
                                        width: double.infinity,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                2,
                                      )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
