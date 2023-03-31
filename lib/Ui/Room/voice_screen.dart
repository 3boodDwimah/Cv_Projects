import 'package:cv/Ui/Groups/Screen/group.dart';
import 'package:cv/Ui/ITEM_SAVED/item_saved_screen.dart';
import 'package:cv/Ui/Notification/Widget/image.dart';
import 'package:cv/Ui/Notification/drower.dart';
import 'package:cv/Ui/Profiles/profilescreen.dart';
import 'package:cv/Ui/Room/room_details.dart';
import 'package:cv/Ui/Room/widget/widget_voice.dart';
import 'package:cv/Ui/Search/search_home.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:cv/core/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class VoiceRoom extends StatefulWidget {
  const VoiceRoom({Key? key}) : super(key: key);

  @override
  State<VoiceRoom> createState() => _VoiceRoomState();
}

var nameController = TextEditingController();

class _VoiceRoomState extends State<VoiceRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          text: " الغرف الصوتية",
          fontFamily: "Cairo",
          fontWeight: FontWeight.w400,
          fontSize: 13,
          colors: Colors.white,
        ),
        leadingWidth: 110,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColor.main,
        ),
        elevation: 0,
        leading: Container(
          child: Row(
            children: [
              SizedBox(
                width: 10,
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
                width: 11,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchHome()));
                  },
                  child: Icon(IconlyLight.search)),
            ],
          ),
        ),
        actions: [
          Container(
              padding: EdgeInsetsDirectional.only(end: 10),
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
        toolbarHeight: 88,
        flexibleSpace: SafeArea(
          child: SvgPicture.asset(
            'assets/images/appbarpoint.svg',
            fit: BoxFit.cover,
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
      body: SafeArea(
        child: Container(
          color: AppColor.backgroundColorF3,
          child: SingleChildScrollView(
            child: Container(
              color: AppColor.backgroundColorF3,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 1.75,
                            child: defaultFormFieldWithOut(
                                width: 0,
                                controller: nameController,
                                color: AppColor.bagroundColorF8,
                                type: TextInputType.text,
                                hint: "ابحث عن غرفة ما ",
                                hintStyle: const TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff99A0AA),
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              navigateTo(context, Room_Details());
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: AppColor.main),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: const Text(
                                "أنشا غرفة جديدة",
                                style: const TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 13,
                                  color: AppColor.white,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      activeTitle(context, "الغرف النشطة حالياً"),
                      const SizedBox(
                        height: 10,
                      ),
                      activeRoom(context, 1)
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      activeTitle(context, "الغرف المجدولة"),
                      const SizedBox(
                        height: 10,
                      ),
                      activeRoom(context, 0),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
