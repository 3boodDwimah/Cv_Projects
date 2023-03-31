import 'package:cv/Ui/Jop/Widget/widgetdetails.dart';
import 'package:cv/Ui/Search/search_home.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

import '../../core/string.dart';

class Room_Details extends StatefulWidget {
  const Room_Details({Key? key}) : super(key: key);

  @override
  State<Room_Details> createState() => _Room_DetailsState();
}

class _Room_DetailsState extends State<Room_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: CircleAvatar(
                    radius: 33,
                    backgroundImage:
                    AssetImage("assets/images/Mask Group 55.png")),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 10.0),
                child: CustomText(
                  text: "اسم الغرفة",
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
                child: Text("اسم المستضيف",
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      fontWeight: FontWeight.w400,
                      fontSize: 9,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: 4,
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
                  width: 6,
                ),
                SvgPicture.asset(
                  "assets/images/iconmes.svg",
                  width: 28,
                  height: 28,
                ),
                SizedBox(
                  width: 7,
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
              padding: EdgeInsetsDirectional.only(end: 10,bottom: 115),
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
        toolbarHeight: 210,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: SvgPicture.asset(
              'assets/images/svg2.svg',
              height: 210,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),

      backgroundColor: AppColor.backgroundColorF3,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            margin: EdgeInsetsDirectional.only(start: 20, end: 20),
            color: AppColor.backgroundColorF3,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            "مهتم",
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
                              borderRadius: BorderRadius.circular(8))),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            "سأحضر",
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
                              borderRadius: BorderRadius.circular(8))),
                      Spacer(),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                          child: Text(
                            "دعوة أشخاص",
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 12,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          height: 32,
                          decoration: BoxDecoration(
                              color: AppColor.main,
                              borderRadius: BorderRadius.circular(5))),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: AppColor.white,
                    width: double.infinity,
                    padding:
                        EdgeInsetsDirectional.only(top: 20, start: 15, end: 15),
                    height: MediaQuery.of(context).size.height / 2,
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'التفاصيل',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 13,
                              height: 1.7,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: myDivider(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: Icon(
                            IconlyLight.calendar,
                            color: AppColor.main,
                            size: 30,
                          ),
                          title: Text(
                            '20/10/2022',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 14,
                              height: 3,
                              color: AppColor.main,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            IconlyLight.time_circle,
                            color: AppColor.main,
                            size: 30,
                          ),
                          title: Text(
                            ' 4:00 PM ',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 14,
                              height: 3,
                              color: AppColor.main,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.language_outlined,
                            color: AppColor.main,
                            size: 30,
                          ),
                          title: Text(
                            'غرفة عامة',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 14,
                              height: 3,
                              color: AppColor.main,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            IconlyLight.user_1,
                            color: AppColor.main,
                            size: 30,
                          ),
                          title: Text(
                            ' 45 شخص سيحضر',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 14,
                              height: 3,
                              color: AppColor.main,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            IconlyLight.user,
                            color: AppColor.main,
                            size: 30,
                          ),
                          title: Text(
                            '45 شخص مهتم',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 14,
                              height: 3,
                              color: AppColor.main,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        SizedBox()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: AppColor.white,
                    width: double.infinity,
                    padding:
                        EdgeInsetsDirectional.only(top: 20, start: 15, end: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'وصف الغرفة',
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 12,
                            height: 1.7,
                            color: AppColor.b10000d,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ',
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 11,
                            color: AppColor.b10000d,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.right,
                        ),
                          SizedBox(height: 10,),

                          poinwithtext(context,0,
                            "التركيز على الشكل على  الخارجي للنص الشكل الخارجي للنص أو شكل توضع الفقرات  ",),
                        poinwithtext(context,0,
                          "التركيز على الشكل على  الخارجي للنص الشكل الخارجي للنص أو شكل توضع الفقرات  ",),
                        poinwithtext(context,0,
                          "التركيز على الشكل على  الخارجي للنص الشكل الخارجي للنص أو شكل توضع الفقرات  ",),
                        poinwithtext(context,0,
                          "التركيز على الشكل على  الخارجي للنص الشكل الخارجي للنص أو شكل توضع الفقرات  ",),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.only(top: 5, start: 20),
                    height: 160,
                    width: 360,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            "المهتمين ً",
                            style: const TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff514D55),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Stack(children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    "assets/images/photo_female_5.jpg"),
                                radius: 14,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(right: 11.5),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/photo_female_4.jpg"),
                                    radius: 14,
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(right: 23.0),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/photo_female_6.jpg"),
                                    radius: 14,
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(right: 33.0),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/photo_female_7.jpg"),
                                    radius: 14,
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(right: 45.0),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/photo_male_7.jpg"),
                                    radius: 14,
                                  )),
                            ]),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: const Text(
                                      ' +10 في الغرفة',
                                      style: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 11,
                                        color: AppColor.grayishblue99a0aa,
                                      ),
                                      softWrap: false,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            "الحضور",
                            style: const TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff514D55),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Stack(children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    "assets/images/photo_female_5.jpg"),
                                radius: 14,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(right: 11.5),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/photo_female_4.jpg"),
                                    radius: 14,
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(right: 23.0),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/photo_female_6.jpg"),
                                    radius: 14,
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(right: 33.0),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/photo_female_7.jpg"),
                                    radius: 14,
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(right: 45.0),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/photo_male_7.jpg"),
                                    radius: 14,
                                  )),
                            ]),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: const Text(
                                      ' +10 في الغرفة',
                                      style: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 11,
                                        color: AppColor.grayishblue99a0aa,
                                      ),
                                      softWrap: false,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
