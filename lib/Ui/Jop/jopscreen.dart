import 'package:cv/Ui/Groups/Screen/group.dart';
import 'package:cv/Ui/ITEM_SAVED/item_saved_screen.dart';
import 'package:cv/Ui/Jop/Screen/job_details3.dart';
import 'package:cv/Ui/Jop/Screen/search_filter.dart';
import 'package:cv/Ui/Jop/Screen/submission.dart';
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

class JopScreen extends StatefulWidget {
  const JopScreen({Key? key}) : super(key: key);

  @override
  State<JopScreen> createState() => _JopScreenState();
}

class _JopScreenState extends State<JopScreen> {
  var jopController = TextEditingController();
  var name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColorF3,
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          text: "الوظائف",
          fontFamily: "Cairo",
          fontWeight: FontWeight.w400,
          fontSize: 13,
          colors: Colors.white,
        ),
        leadingWidth: 90,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColor.main,
        ),
        elevation: 0,
        leading: Container(
          child: Row(
            children: [
              SizedBox(
                width: 15,
              ),
              SvgPicture.asset(
                "assets/images/iconmes.svg",
                width: 28,
                height: 28,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(IconlyLight.search)
            ],
          ),
        ),
        actions: [
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

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: defaultFormFieldWithOut(
                      controller: jopController,
                      type: TextInputType.text,
                      color: AppColor.bagroundColorF8,
                      hint: "ابحث عن وظيفة",
                      hintStyle: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 9,
                        color: const Color(0xff99A0AA),
                      )),
                ),
                SizedBox(
                  width: 13,
                ),
                GestureDetector(
                  onTap: () {
                    showBottomSheet(
                        enableDrag: true,
                        context: context,
                        builder: (BuildContext) {
                          return SingleChildScrollView(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50)),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "المسمى الوظيفي",
                                      style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: 9,
                                        height: 2,
                                        color: const Color(0xff10000d),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    defaultFormFieldWithOut(
                                        color: Color(0xffF3F4F8),
                                        controller: name,
                                        type: TextInputType.none,
                                        hint: ""),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "التخصص",
                                      style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: 9,
                                        height: 2,
                                        color: const Color(0xff10000d),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    defaultFormFieldWithOut(
                                        color: Color(0xffF3F4F8),
                                        controller: name,
                                        hintStyle: TextStyle(
                                          fontFamily: 'Tajawal',
                                          fontSize: 11,

                                          color: AppColor.grayishblue99a0aa,
                                          fontWeight: FontWeight.w400,
                                        ),

                                        hint: "تكنولوجيا المعلومات",
                                        type: TextInputType.none),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "حدد المكان",
                                      style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: 9,
                                        height: 2,
                                        color: const Color(0xff10000d),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    defaultFormFieldWithOut(
                                        color: Color(0xffF3F4F8),
                                        controller: name,
                                        prefix: Icon(
                                          IconlyLight.location,
                                          size: 20,

                                        ),
                                        type: TextInputType.none),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      " تاريخ النشر",
                                      style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: 9,
                                        height: 2,
                                        color: const Color(0xff10000d),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    defaultFormFieldWithOut(
                                        color: Color(0xffF3F4F8),
                                        controller: name,
                                        hint: " حديثاَ",
                                        hintStyle: TextStyle(
                                          fontFamily: 'Tajawal',
                                          fontSize: 11,

                                          color: AppColor.grayishblue99a0aa,
                                          fontWeight: FontWeight.w400,
                                        ),

                                        type: TextInputType.none),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "  مستوى التعليم",
                                      style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: 9,
                                        height: 2,
                                        color: const Color(0xff10000d),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    defaultFormFieldWithOut(
                                        color: Color(0xffF3F4F8),
                                        controller: name,
                                        hint: " حديثاَ",
                                        hintStyle: TextStyle(
                                          fontFamily: 'Tajawal',
                                          fontSize: 11,

                                          color: AppColor.grayishblue99a0aa,
                                          fontWeight: FontWeight.w400,
                                        ),

                                        type: TextInputType.none),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      " مستوى الخبرة",
                                      style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: 9,
                                        height: 2,
                                        color: const Color(0xff10000d),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    defaultFormFieldWithOut(
                                        color: Color(0xffF3F4F8),
                                        controller: name,
                                        hint: " خبير",
                                        hintStyle: TextStyle(
                                          fontFamily: 'Tajawal',
                                          fontSize: 11,

                                          color: AppColor.grayishblue99a0aa,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        type: TextInputType.none),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      " نوع الوظيفة",
                                      style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontSize: 9,
                                        height: 2,
                                        color: const Color(0xff10000d),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                    Container(
                                      height: 38,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        padding: EdgeInsetsDirectional.only(
                                            start: 5),
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 72,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: AppColor.snowFC,
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                            child: Text(
                                              "دوام جزئي",
                                              style: TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 12,
                                                color: const Color(0xff10000d),
                                                fontWeight: FontWeight.w400,
                                              ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 72,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: AppColor.snowFC,
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                            child: Text(
                                              "دوام كلي",
                                              style: TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 12,
                                                color: const Color(0xff10000d),
                                                fontWeight: FontWeight.w400,
                                              ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 101,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: AppColor.main,
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                            child: Text(
                                              "وظيفة عن بعد",
                                              style: TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 12,
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.w400,
                                              ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 90,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: AppColor.snowFC,
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                            child: Text(
                                              "عمل عن بعد",
                                              style: TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 12,
                                                color: const Color(0xff10000d),
                                                fontWeight: FontWeight.w400,
                                              ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 55,
                                            height: 30,
                                            decoration: BoxDecoration(
                                                color: AppColor.snowFC,
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                            child: Text(
                                              "عقد",
                                              style: TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 12,
                                                color: const Color(0xff10000d),
                                                fontWeight: FontWeight.w400,
                                              ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 1.8,
                                      color: AppColor.main,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "إلغاء",
                                              style: TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 12,
                                                color: AppColor.main,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.right,
                                            ),
                                            width: 85,
                                            height: 32,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  width: 1.5,
                                                  color: AppColor.main,
                                                ),
                                                color: AppColor.white,
                                                borderRadius:
                                                    BorderRadius.circular(8))),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        GestureDetector(
                                          onTap: (){
                                            navigateTo(context, Search_FilterScreen());
                                          },
                                          child: Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "بحث",
                                                style: TextStyle(
                                                  fontFamily: 'Tajawal',
                                                  fontSize: 12,
                                                  color: const Color(0xffffffff),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.right,
                                              ),
                                              width: 65,
                                              height: 32,
                                              decoration: BoxDecoration(
                                                  color: AppColor.main,
                                                  borderRadius:
                                                      BorderRadius.circular(8))),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              height: 700,
                              width: double.infinity,
                            ),
                          );
                        });
                  },
                  child: Container(
                    width: 44,
                    height: 44,
                    child: Icon(
                      IconlyLight.filter_2,
                      color: AppColor.white,
                    ),
                    decoration: BoxDecoration(
                        color: AppColor.main,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'تنبيهات الوظائف',
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: const Color(0xff10000d),
                  ),
                  textAlign: TextAlign.right,
                ),
                Text(
                  'أضف تنبيه جديد',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 9,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff99A0AA),
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 58,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(

                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    margin: EdgeInsets.symmetric(horizontal: 5,),
                    width: 127,
                    decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              ' UX UI Design ',
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff10000d),
                              ),
                            ),
                            SizedBox(height: 0,),
                            Text(
                              ' عالمياً',
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color(0xff99A0AA),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10,),
                        Icon(
                          size: 22,
                          Icons.more_horiz_sharp,
                          color: AppColor.linkWaterD0D6E0,
                        ),
                        SizedBox(
                          height: 2,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'نشرت حديثاً',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff10000d),
                ),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: (){
                        navigateTo(context, jop_details());
                      },
                      child: JopList(context));
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                ' وظائف مقترحة',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff10000d),
                ),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height/2.5,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return JopList(context);
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            defauContainer(text: "البحث عن مزيد من الوظائف",
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColor.white,

            ),
            width: 170,height: 30,
              borderRadius: 6
            ),

            SizedBox(
              height: 100,
            )
          ]),
        ),
      ),
    );
  }
}
