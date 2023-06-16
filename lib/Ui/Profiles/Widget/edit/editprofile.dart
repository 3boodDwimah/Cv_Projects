import 'package:cv/Ui/Groups/Screen/group.dart';
import 'package:cv/Ui/ITEM_SAVED/item_saved_screen.dart';
import 'package:cv/Ui/Notification/Widget/image.dart';
import 'package:cv/Ui/Notification/drower.dart';
import 'package:cv/Ui/Profiles/Widget/edit/post_skill.dart';
import 'package:cv/Ui/Profiles/Widget/edit/userdata.dart';
import 'package:cv/Ui/Profiles/profilescreen.dart';
import 'package:cv/Ui/Room/voice_screen.dart';
import 'package:cv/Ui/Search/search_home.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:cv/core/string.dart';
import 'package:cv/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

import '../../../../bloc/cubit_navbar/cubit.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

String? selectedValue;
List<String> items = [
  'أول ',
  'تاني',
  'Item3',
  'Item4',
];

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsetsDirectional.only(
            bottom: 50.0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              CustomText(
                text: "تعديل الملف الشخصي",
                fontFamily: "Cairo",
                fontWeight: FontWeight.w400,
                fontSize: 13,
                colors: Colors.white,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 15.0),
                child: Stack(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 40,
                        child: SvgPicture.asset(
                          "assets/images/Group 17643.svg",
                          height: 60,
                          width: 60,
                        )),
                    Positioned(
                        top: 23,
                        child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.0,
                                  color: AppColor.main,
                                ),
                                borderRadius: BorderRadius.circular(30),
                                color: AppColor.white),
                            child: Icon(
                              IconlyLight.camera,
                              color: AppColor.main,
                              size: 18,
                            )))
                  ],
                ),
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
          padding: const EdgeInsets.only(bottom: 65.0),
          child: Container(
            child: Row(
              children: [
                SizedBox(
                  width: 13,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
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
              padding: EdgeInsetsDirectional.only(end: 10, bottom: 80),
              child: Builder(
                  builder: (context) => IconButton(
                      icon: SvgPicture.asset(
                        "assets/images/iocnmune.svg",
                        width: 26,
                        height: 26,
                      ),
                      onPressed: () => Scaffold.of(context).openDrawer())))
        ],
        backgroundColor: AppColor.main,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        toolbarHeight: 154,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: SvgPicture.asset(
              'assets/images/appBar0.svg',
              height: 154,
              fit: BoxFit.contain,
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
              Positioned(
                child: ListTile(
                  leading: Images(
                    "assets/images/Group 17643.svg",
                  ),
                  title: Text("${SocialCubit.get(context).user?.firstname}"),
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
              drawer("تسجيل الخروج", IconlyLight.logout),
            ],
          ),
        ),
      ),
      backgroundColor: AppColor.backgroundColorF3,
      body: SafeArea(
        child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(
                    isScrollable: true,
                    indicatorPadding: EdgeInsetsDirectional.only(start: 00),
                    padding: EdgeInsetsDirectional.only(end: 150, top: 5),
                    indicatorWeight: 1,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: AppColor.main,
                    tabs: [
                      Tab(
                        child: textWidget("المعلومات الأساسية"),
                      ),
                      Tab(
                        child: textWidget("الخبرة والتعليم"),
                      ),
                    ]),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      UserData(),
                      PostSkill()
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
