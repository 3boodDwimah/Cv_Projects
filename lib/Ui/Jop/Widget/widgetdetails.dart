import 'package:cv/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

Widget jobInfo(BuildContext context) =>
    SingleChildScrollView(


      child: Container(
        color: AppColor.white,

        padding: EdgeInsets.only(top: 10),
        margin: EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 1.4,
        child: ListView(
          physics: BouncingScrollPhysics(),

          children: [
            ListTile(
              leading: Icon(
                IconlyLight.calendar,
                color: AppColor.main,
                size: 30,
              ),
              title: Text(
                'وقت النشر',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 13,
                  height: 1.7,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.right,
              ),
              subtitle: Text(
                'منذ ساعة و 5 دقائق',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 11,
                  height: 2.1,
                  color: const Color(0xff514d55),
                ),
                textAlign: TextAlign.right,
              ),
            ),
            ListTile(
              leading: Icon(
                IconlyLight.work,
                color: AppColor.main,
                size: 30,
              ),
              title: Text(
                'نوع الوظيفة',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 13,
                  height: 1.7,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.right,
              ),
              subtitle: Text(
                'دوام كامل',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 11,
                  height: 2.1,
                  color: const Color(0xff514d55),
                ),
                textAlign: TextAlign.right,
              ),
            ),
            ListTile(
              leading: Icon(
                IconlyLight.ticket_star,
                color: AppColor.main,
                size: 30,
              ),
              title: Text(
                'الراتب',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 13,
                  height: 1.7,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.right,
              ),
              subtitle: Text(
                '1500 - 3000 \$',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 11,
                  height: 2.1,
                  color: const Color(0xff514d55),
                ),
                textAlign: TextAlign.right,
              ),
            ),
            ListTile(
              leading: Icon(
                IconlyLight.ticket_star,
                color: AppColor.main,
                size: 30,
              ),
              title: Text(
                'المعدل',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 13,
                  height: 1.7,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.right,
              ),
              subtitle: Text(
                '30- 50 \$ / الساعة',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 11,
                  height: 2.1,
                  color: const Color(0xff514d55),
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
                ' الساعات',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 13,
                  height: 1.7,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.right,
              ),
              subtitle: Text(
                '50/ الأسبوع',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 11,
                  height: 2.1,
                  color: const Color(0xff514d55),
                ),
                textAlign: TextAlign.right,
              ),
            ),
            ListTile(
              leading: Icon(
                IconlyLight.star,
                color: AppColor.main,
                size: 30,
              ),
              title: Text(
                'مستوى الخبرة',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 13,
                  height: 1.7,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.right,
              ),
              subtitle: Text(
                'متوسط',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 11,
                  height: 2.1,
                  color: const Color(0xff514d55),
                ),
                textAlign: TextAlign.right,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.school_outlined,
                color: AppColor.main,
                size: 30,
              ),
              title: Text(
                'مستوى التعليم',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 13,
                  height: 1.7,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.right,
              ),
              subtitle: Text(
                'بكالوريس',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 11,
                  height: 2.1,
                  color: const Color(0xff514d55),
                ),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              height: 70,
            )
          ],
        ),
      ),
    );
/////////////////////////////////////////////////////////////////////////
Widget jobDescription(BuildContext context) =>
    SafeArea(
        child:
        SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: <Widget>[
            Container(
              height: 120,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
              height: 190,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              color: AppColor.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, top: 10),
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
                    height: 140,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.only(top: 0),
                      itemCount: 5,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(top: 8.0),
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
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              color: AppColor.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, top: 10),
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
                    height: 140,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.only(top: 0),
                      itemCount: 5,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: poinwithtext(context,1,
                            "التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));

Widget poinwithtext(
  BuildContext context,
  final int row,
final String text,
) =>
    Container(
      child: Row(

          mainAxisAlignment: row == 1? MainAxisAlignment.start:MainAxisAlignment.start

          ,
          crossAxisAlignment: row == 1? CrossAxisAlignment.center:CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(top:
              row == 1? 0.0:5),
              child: Container(
                width:
                row == 1?
                10:6,
                height: row == 1?
                10:6,
                decoration: BoxDecoration(
                    color: AppColor.main,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Container(
              height: 30,
              width:
              row == 0?
              MediaQuery.of(context).size.width / 1.3
              :MediaQuery.of(context).size.width / 1.2
              ,
              child: Padding(
                padding: const EdgeInsets.only(right: 7.0),
                child:

                Text(
                  maxLines:
                  row==0?1:
                  2,
                  text,
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 11,
                    height: 1.4,
                    color: const Color(0xff514d55),
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ]),
    );
