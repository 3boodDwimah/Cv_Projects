import 'package:cv/Ui/Groups/Screen/group.dart';
import 'package:cv/Ui/ITEM_SAVED/item_saved_screen.dart';
import 'package:cv/Ui/Jop/Screen/submission.dart';
import 'package:cv/Ui/Jop/Widget/widgetdetails.dart';
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
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class jop_details extends StatefulWidget {
  const jop_details({Key? key}) : super(key: key);

  @override
  State<jop_details> createState() => _jop_detailsState();
}

class _jop_detailsState extends State<jop_details> {
  List<String> items = [
    "معلومات الوظيفة",
    "الوصف الوظيفي",
    "معلومات الشركة",
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColorF3,
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsetsDirectional.only(bottom: 20.0, end: 70),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/logocomp.jpg"),
                radius: 25,
              ),
              SizedBox(
                height: 7,
              ),
              CustomText(
                text: "اسم الوظيفة",
                fontFamily: "Tajawal",
                fontWeight: FontWeight.w400,
                fontSize: 13,
                colors: Colors.white,
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "اسم الشركة",
                      fontFamily: "Tajawal",
                      fontWeight: FontWeight.w400,
                      fontSize: 9,
                      colors: Colors.white,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CustomText(
                      text: "الأمارات العربية",
                      fontFamily: "Tajawal",
                      fontWeight: FontWeight.w400,
                      fontSize: 9,
                      colors: Colors.white,
                    ),
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
          padding: const EdgeInsets.only(bottom: 110.0),
          child: Container(
            child: Row(
              children: [
                SizedBox(
                  width: 13,
                ),


                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(IconlyLight.arrow_right_2))
                ,  SizedBox(
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
              padding: EdgeInsetsDirectional.only(end: 10,bottom: 110),
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
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),


              child: Column(
                children: [
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, left: 15, top: 8),
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
                                  width: 112,
                                  height: 31.5,
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
                      ? jobInfo(context)
                      : current == 1
                          ? Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height / 1.4,
                              child: SingleChildScrollView(
                                  child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    color: AppColor.white,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'الوصف الوظيفي',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 12,
                                            height: 2,
                                            color: const Color(0xff10000d),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.  هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 11,
                                            height: 1.24,
                                            color: const Color(0xff514d55),
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    color: AppColor.white,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0, top: 10),
                                          child: Text(
                                            'المسؤؤوليات',
                                            style: TextStyle(
                                              fontFamily: 'Tajawal',
                                              fontSize: 12,
                                              color: const Color(0xff10000d),
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          child: ListView.builder(
                                            physics: BouncingScrollPhysics(),
                                            padding: EdgeInsets.only(top: 0),
                                            itemCount: 5,
                                            itemBuilder: (context, index) =>
                                                Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 8.0),
                                              child: poinwithtext(context,1,
                                                  "التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    color: AppColor.white,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0, top: 10),
                                          child: Text(
                                            'الخبرة والمهارات',
                                            style: TextStyle(
                                              fontFamily: 'Tajawal',
                                              fontSize: 12,
                                              color: const Color(0xff10000d),
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        Container(
                                          height: 140,
                                          child: ListView.builder(
                                            physics: BouncingScrollPhysics(),
                                            padding: EdgeInsets.only(top: 0),
                                            itemCount: 5,
                                            itemBuilder: (context, index) =>
                                                Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 8.0),
                                              child:
                                              poinwithtext(context,1,
                                                  "التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في",),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 190,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    color: AppColor.white,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0, top: 10),
                                          child: Text(
                                            'الفوائد والامتيازات',
                                            style: TextStyle(
                                              fontFamily: 'Tajawal',
                                              fontSize: 12,
                                              color: const Color(0xff10000d),
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        Container(
                                          height: 140,
                                          child: ListView.builder(
                                            physics: BouncingScrollPhysics(),
                                            padding: EdgeInsets.only(top: 0),
                                            itemCount: 5,
                                            itemBuilder: (context, index) =>
                                                Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 8.0),
                                              child: poinwithtext(context,1,
                                                  "التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 190,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    color: AppColor.white,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0, top: 10),
                                          child: Text(
                                            'المهارات',
                                            style: TextStyle(
                                              fontFamily: 'Tajawal',
                                              fontSize: 12,
                                              color: const Color(0xff10000d),
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        Container(
                                          height: 140,
                                          child: ListView.builder(
                                            physics: BouncingScrollPhysics(),
                                            padding: EdgeInsets.only(top: 0),
                                            itemCount: 5,
                                            itemBuilder: (context, index) =>
                                                Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 8.0),
                                              child: Container(
                                                height: 140,
                                                margin: EdgeInsets.only(top: 10),
                                                child: GridView.builder(
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                          childAspectRatio:
                                                              0.7 / 0.23,
                                                          crossAxisSpacing: 10,
                                                          mainAxisSpacing: 10,
                                                          crossAxisCount: 3),
                                                  itemCount: 5,
                                                  itemBuilder: (context, index) {
                                                    return Container(
                                                      padding: EdgeInsets.symmetric(
                                                          horizontal: 10),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                4),
                                                        color: Color(0xffD5DFEB),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional
                                                              .center,
                                                      child: Text(
                                                        "# ابسوم لوريم ",
                                                        style: TextStyle(
                                                          fontFamily: 'Tajawal',
                                                          fontSize: 12,
                                                          color: AppColor.main,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 100,
                                  )
                                ],
                              )),
                            )
                          : Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              width: double.infinity,
                              color: AppColor.backgroundColorF3,
                              height: MediaQuery.of(context).size.height / 1.4,
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 30, bottom: 10),
                                    width: double.infinity,
                                    color: AppColor.white,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 40,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "القطاع المستهدف",
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    color: Color(0xff000000),
                                                  ),
                                                  softWrap: false,
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  "حجم الشركة",
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    color: Color(0xff000000),
                                                  ),
                                                  softWrap: false,
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  "تاريخ التأسيس ",
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    color: Color(0xff000000),
                                                  ),
                                                  softWrap: false,
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  " الهاتف",
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    color: Color(0xff000000),
                                                  ),
                                                  softWrap: false,
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  "البريد الإلكتروني ",
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    color: Color(0xff000000),
                                                  ),
                                                  softWrap: false,
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  "تاريخ التأسيس ",
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    color: Color(0xff000000),
                                                  ),
                                                  softWrap: false,
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  "الموقع ",
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    color: Color(0xff000000),
                                                  ),
                                                  softWrap: false,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 90,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "التكنولوجيا",
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    color: Color(0xff514D55),
                                                  ),
                                                  softWrap: false,
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  "100- 500 موظف",
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    color: Color(0xff000000),
                                                  ),
                                                  softWrap: false,
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  "20/10/2012",
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    color: Color(0xff514D55),
                                                  ),
                                                  softWrap: false,
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  "+10 123456789",
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    color: Color(0xff514D55),
                                                  ),
                                                  softWrap: false,
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  "m@gmail.com",
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    color: Color(0xff514D55),
                                                  ),
                                                  softWrap: false,
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  "20/10/2012",
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    color: Color(0xff514D55),
                                                  ),
                                                  softWrap: false,
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  "الأمارات العربية",
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    color: Color(0xff514D55),
                                                  ),
                                                  softWrap: false,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 290,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: AppColor.main,
                                              borderRadius:
                                                  BorderRadius.circular(9)),
                                          child: Text(
                                            "زيارة موقع الشركة",
                                            style: TextStyle(
                                              fontFamily: 'Tajawal',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Color(0xffffffff),
                                            ),
                                            softWrap: false,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,

              child: Container(
                height: 73,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3dc5c5c5),
                      offset: Offset(0, -2),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.share_rounded,
                          color: AppColor.main,
                        ),
                        width: 41,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.5,
                              color: AppColor.main,
                            ),
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(8)))
,
                    GestureDetector(
                      onTap: (){
                      navigateTo(context, Submission());
                      },
                      child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "التقديم على الوظيفة",
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 13,
                              color: AppColor.white,
                            ),
                          ),
                          width: 194,
                          height: 40,
                          decoration: BoxDecoration(
                              color: AppColor.main,
                              borderRadius: BorderRadius.circular(8))),
                    ),
                    Container(
                        alignment: Alignment.center,
                        child: Icon(
                          IconlyLight.bookmark,
                          color: AppColor.main,
                        ),
                        width: 41,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.5,
                              color: AppColor.main,
                            ),
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(8)))
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
