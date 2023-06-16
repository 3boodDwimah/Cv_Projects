import 'package:cv/Ui/Education/widget/widget_coursedetails.dart';
import 'package:cv/Ui/Groups/Screen/group.dart';
import 'package:cv/Ui/ITEM_SAVED/item_saved_screen.dart';
import 'package:cv/Ui/Notification/Widget/image.dart';
import 'package:cv/Ui/Notification/drower.dart';
import 'package:cv/Ui/Profiles/profilescreen.dart';
import 'package:cv/Ui/Room/voice_screen.dart';
import 'package:cv/Ui/Search/search_home.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:cv/core/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColorF3,
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsetsDirectional.only(bottom: 30.0, end: 70),
          child: Column(
            children: [
              const SizedBox(
                height: 65,
              ),
              const CustomText(
                text: "مقدمة إلى لغة جافا",
                fontFamily: "Tajawal",
                fontWeight: FontWeight.w400,
                fontSize: 12,
                colors: Colors.white,
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: RatingBar.builder(
                  itemSize: 24,
                  direction: Axis.horizontal,
                  unratedColor: Colors.amber,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => const Icon(
                    IconlyBroken.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const CustomText(
                text: " (250) 4.5 ",
                fontWeight: FontWeight.w400,
                fontSize: 14,
                colors: AppColor.white,
              ),
              const SizedBox(
                height: 3,
              ),
              defauContainer(
                  text: "الإنضمام الآن",
                  background: AppColor.white,
                  borderRadius: 6,
                  height: 32,
                  width: 115,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: AppColor.main,
                  ))
            ],
          ),
        ),
        leadingWidth: 120,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColor.main,
        ),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 115.0),
          child: Container(
            child: Row(
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
                  width: 12,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchHome()));
                    },
                    child: const Icon(IconlyLight.search)),
              ],
            ),
          ),
        ),
        actions: [
          Container(
              padding: const EdgeInsetsDirectional.only(end: 10, bottom: 110),
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
                      style: const TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
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
        child: Column(
          children: [
            Container(
              height: 8,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
            ),
            Expanded(
              child: DefaultTabController(
                  length: 4,
                  child: Column(
                    children: [
                      TabBar(
                          isScrollable: true,
                          indicatorPadding:
                              const EdgeInsetsDirectional.only(start: 10),
                          indicatorWeight: 2,
                          unselectedLabelColor: Colors.black,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorColor: AppColor.main,
                          tabs: [
                            Tab(
                              child: Container(
                                child: const Text(
                                  'التفاصيل',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const Tab(
                              child:  Text(
                                'الوصف العام',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const Tab(
                              child: Text(
                                'الدروس',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const Tab(
                              child: Text(
                                'التقييمات',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ]),
                      Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            coursesDetails(context),
                            coursesDescription(context),
                            coursesLectures(context),
                            Container(
                              color: AppColor.black,
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

Widget truewithtext(
  BuildContext context,
  final String text,
) =>
    Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.check,
              color: AppColor.main,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.25,
              child: Padding(
                padding: const EdgeInsets.only(right: 7.0, top: 7),
                child: Text(
                  maxLines: 2,
                  text,
                  style: const TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 11,
                    height: 1.4,
                    color: Color(0xff514d55),
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ]),
    );
