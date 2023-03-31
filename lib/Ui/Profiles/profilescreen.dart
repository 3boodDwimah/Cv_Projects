import 'package:cv/Ui/Groups/Screen/group.dart';
import 'package:cv/Ui/Groups/Widget/member.dart';
import 'package:cv/Ui/Home/Wdgets/corporate_updates.dart';
import 'package:cv/Ui/ITEM_SAVED/item_saved_screen.dart';
import 'package:cv/Ui/Jop/Widget/widgetdetails.dart';
import 'package:cv/Ui/Notification/Widget/image.dart';
import 'package:cv/Ui/Notification/drower.dart';
import 'package:cv/Ui/Profiles/Widget/editprofile.dart';
import 'package:cv/Ui/Profiles/Widget/followers.dart';
import 'package:cv/Ui/Profiles/Widget/jop.dart';
import 'package:cv/Ui/Profiles/Widget/leaflets.dart';
import 'package:cv/Ui/Profiles/Widget/path_education.dart';
import 'package:cv/Ui/Profiles/Widget/profile_persona.dart';
import 'package:cv/Ui/Profiles/Widget/skill.dart';
import 'package:cv/Ui/Room/voice_screen.dart';
import 'package:cv/Ui/Search/search_home.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

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
                child: Imagepro("assets/images/Group 17643.svg"),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 10.0),
                child: CustomText(
                  text: "أحمد محمد",
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
              padding: EdgeInsetsDirectional.only(end: 20, bottom: 115),
              child:
              Row(
                children: [

                  GestureDetector(
                      onTap: (){
                        navigateTo(context, EditProfile ());

                      },
                      child: SvgPicture.asset("assets/images/pan.svg",color: AppColor.white)),
                  SizedBox(width: 10,),


                    Container(
                        padding: EdgeInsetsDirectional.only(end: 10),
                        child:     Builder(
                            builder: (context) => IconButton(
                                icon: SvgPicture.asset(
                                  "assets/images/iocnmune.svg",
                                  width: 26,
                                  height: 26,
                                ),
                                onPressed: () => Scaffold.of(context).openDrawer())))



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
              Positioned(
                child: ListTile(
                  leading: Images(
                    "assets/images/Group 17643.svg",
                  ),
                  title: Text("أحمد محمد "),
                  subtitle: Text(
                    "مصمم واجهات مستخدم",
                    style: TextStyle(height: 0.9),
                  ),
                  trailing: GestureDetector(
                    onTap: (){
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
              SizedBox(height: 11,),
              myDivider(),
              SizedBox(height: 11,),

              GestureDetector(
                  onTap: (){
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
                  onTap: (){
                    navigateTo(context,Group ());
                  },
                  child: drawer("المجموعات", IconlyLight.user_1)),
              SizedBox(
                height: 11,
              ),
              GestureDetector(
                  onTap: (){
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
                            leaflets(context),
                            skill(),
                            PathEducation(),
                            jopsed(context),
                            Column(
                              children: [
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15, left: 15, top: 0),
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
                                                duration: const Duration(milliseconds: 300),
                                                margin: const EdgeInsets.all(5),
                                                width: 109,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(current == index
                                                          ? "assets/images/Mask Group 76.png"
                                                          : "assets/images/Path 47066.png")),
                                                  color: current == index
                                                      ? AppColor.main
                                                      : AppColor.white,
                                                  borderRadius: current == index
                                                      ? BorderRadius.circular(10)
                                                      : BorderRadius.circular(10),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    items[index],
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w500,
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
                                    ? Container(
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height / 1.7,
                                  child:
                                              SingleChildScrollView(
                                                physics: BouncingScrollPhysics(),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      height: MediaQuery.of(context).size.height ,
                                                      margin: EdgeInsets.symmetric(horizontal: 10),
                                                      child: GridView.builder(
                                                        physics: BouncingScrollPhysics(),
                                                        gridDelegate:
                                                        SliverGridDelegateWithFixedCrossAxisCount(
                                                            crossAxisCount: 2,
                                                            crossAxisSpacing: 12,
                                                            mainAxisSpacing: 12),
                                                        itemCount: 8,
                                                        itemBuilder: (ctx, i) {
                                                          return aaaa();
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )




                                )
                                    :
                                     Container(
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height / 2,
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

Widget Imagepro(
  final String Images,
) {
  return Stack(children: [
    Container(
      height: 55,
      width: 55,
      padding: EdgeInsets.all(2),
      child: SvgPicture.asset(Images),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(width: 2.5, color: AppColor.white),
      ),
    ),
    Positioned(
      left: 5,
      top: 0,
      child: Container(
        height: 11,
        width: 9,
        decoration: BoxDecoration(
          color: AppColor.main,
          borderRadius: BorderRadius.circular(020),
        ),
      ),
    ),
    Positioned(
      right: 5,
      bottom: 0,
      child: Container(
        height: 11,
        width: 9,
        decoration: BoxDecoration(
          color: AppColor.main,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    )
  ]);
}
