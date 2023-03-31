import 'package:cv/Ui/Education/course_details.dart';
import 'package:cv/Ui/Education/lectures.dart';
import 'package:cv/Ui/Education/widget/widget_course.dart';
import 'package:cv/Ui/Groups/Screen/group.dart';
import 'package:cv/Ui/ITEM_SAVED/item_saved_screen.dart';
import 'package:cv/Ui/NavBar/navbar.dart';
import 'package:cv/Ui/Notification/Widget/image.dart';
import 'package:cv/Ui/Notification/drower.dart';
import 'package:cv/Ui/Profiles/profilescreen.dart';
import 'package:cv/Ui/Room/voice_screen.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:cv/core/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  var eduController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColorF3,
      appBar: AppBar(
        centerTitle: true,
        title: const CustomText(
          text: "المسارات التعليمية",
          fontFamily: "Cairo",
          fontWeight: FontWeight.w400,
          fontSize: 13,
          colors: Colors.white,
        ),
        leadingWidth: 120,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColor.main,
        ),
        elevation: 0,
        leading: Row(
          children: [
            const SizedBox(
              width: 13,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(IconlyLight.arrow_right_2)),
            const SizedBox(
              width: 7,
            ),
            SvgPicture.asset(
              "assets/images/iconmes.svg",
              width: 28,
              height: 28,
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(IconlyLight.search),
          ],
        ),
        actions: [
          Container(
              padding: const EdgeInsetsDirectional.only(end: 10),
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
                  SizedBox(
                      height: 130,
                      child: SvgPicture.asset(
                        "assets/images/Drawer.svg",
                        width: double.infinity,
                        fit: BoxFit.contain,
                      )),
                  const Positioned(
                    bottom: 30,
                    right: 20,
                    child: Text(
                      'القائمة ',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffffffff),
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
                  title: const Text("أحمد محمد "),
                  subtitle: const Text(
                    "مصمم واجهات مستخدم",
                    style: TextStyle(height: 0.9),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      navigateTo(context, Profile());
                    },
                    child: Container(
                      height: 30,
                      child: const Icon(
                        IconlyLight.arrow_left_2,
                        color: AppColor.black,
                      ),
                      width: 30,
                      decoration: BoxDecoration(
                          color: const Color(0xffF2F2F3),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              myDivider(),
              const SizedBox(
                height: 11,
              ),
              GestureDetector(
                  onTap: () {
                    navigateTo(context, const item());
                  },
                  child: drawer("العناصر المحفوظة", IconlyLight.bookmark)),
              const SizedBox(
                height: 11,
              ),
              drawer("مركز المعلومات", IconlyLight.info_circle),
              const SizedBox(
                height: 11,
              ),
              drawer("الحاضنات", IconlyLight.folder),
              const SizedBox(
                height: 11,
              ),
              GestureDetector(
                  onTap: () {
                    navigateTo(context, const Group());
                  },
                  child: drawer("المجموعات", IconlyLight.user_1)),
              const SizedBox(
                height: 11,
              ),
              GestureDetector(
                  onTap: () {
                    navigateTo(context, const VoiceRoom());
                  },
                  child: drawer("الغرف الصوتية", IconlyLight.voice_2)),
              const SizedBox(
                height: 11,
              ),
              drawer("غرف الفيديو", IconlyLight.video),
              const SizedBox(
                height: 11,
              ),
              drawer("المناسبات", IconlyLight.calendar),
              const SizedBox(
                height: 11,
              ),
              drawer("المساعدة والدعم", IconlyLight.user),
              const SizedBox(
                height: 11,
              ),
              drawer("الإعدادات والخصوصية", IconlyLight.setting),
              const SizedBox(
                height: 11,
              ),
              drawer("تسجيل الخروج", IconlyLight.logout),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              defaultFormFieldWithOut(
                  controller: eduController,
                  type: TextInputType.text,
                  color: AppColor.bagroundColorF8,
                  hint: "ابحث عن مسار",
                  hintStyle: const TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 9,
                    color: Color(0xff99A0AA),
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                        "مسار برمجة المواقع"),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Icon(
                    IconlyLight.arrow_left_2,
                    size: 14,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text("دورات المسار"),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    listOfCourses(context),
                    const SizedBox(
                      height: 50,
                    ),
                    listOfCourses(context),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      )),
    );
  }
}
