import 'package:cv/Ui/Education/course_details.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

Widget coursesDetails(BuildContext context) => Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        color: AppColor.backgroundColorF3,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            color: AppColor.white,
            width: double.infinity,
            margin: EdgeInsetsDirectional.only(start: 20, end: 20),
            padding: EdgeInsetsDirectional.only(top: 20, start: 15, end: 15),
            // height: MediaQuery.of(context).size.height /
            //     1.50,
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'تفاصيل الدورة التدربية',
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
                    'تاريخ النشر',
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
                    '2/12/2021',
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
                    ' المدة ',
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
                    '4 ساعات و 25 دقيقة',
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
                    IconlyLight.user_1,
                    color: AppColor.main,
                    size: 30,
                  ),
                  title: Text(
                    'عدد الطلاب',
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
                    '80 طالب',
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
                    IconlyLight.folder,
                    color: AppColor.main,
                    size: 30,
                  ),
                  title: Text(
                    'عدد الدروس',
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
                    '10 دروس',
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
                    IconlyLight.paper,
                    color: AppColor.main,
                    size: 30,
                  ),
                  title: Text(
                    ' الشهادة',
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
                    'نعم',
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
                    Icons.language_outlined,
                    color: AppColor.main,
                    size: 30,
                  ),
                  title: Text(
                    'اللغة',
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
                    'الإنجليزية',
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
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
Widget coursesDescription(BuildContext context) => Container(
  width: double.infinity,
  color: AppColor.backgroundColorF3,
  child: Container(
    margin: EdgeInsets.symmetric(horizontal: 15),
    width: double.infinity,

    child: SingleChildScrollView(
        physics:   BouncingScrollPhysics(),

        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: 10, horizontal: 10),
              color: AppColor.white,
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    'نظرة عامة',
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
                      height: 1.34,
                      color: const Color(0xff514d55),
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'ماذا سوف تتعلم',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 12,
                      height: 2,
                      color: const Color(0xff10000d),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics:
                      NeverScrollableScrollPhysics(),
                      padding:
                      EdgeInsets.only(top: 0),
                      itemCount: 5,
                      itemBuilder: (context, index) =>
                          Padding(
                            padding:
                            const EdgeInsets.only(
                                top: 8.0),
                            child: truewithtext(context,
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

              color: AppColor.white,
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20.0, top: 10),
                    child: Text(
                      'أسئلة عامة',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 13,
                        color:
                        const Color(0xff10000d),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: ListView.builder(
                      physics:
                      BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) =>
                          Padding(
                            padding:
                            const EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                Text(
                                  'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 13,
                                    height: 1.8,
                                    color: const Color(
                                        0xff10000d),
                                    fontWeight:
                                    FontWeight.w500,
                                  ),
                                  textAlign:
                                  TextAlign.right,
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء.هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 12,
                                    color: const Color(
                                        0xff99A0AA),
                                    fontWeight:
                                    FontWeight.w500,
                                  ),
                                  textAlign:
                                  TextAlign.right,
                                ),
                              ],
                            ),
                          ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        )),
  ),
);
Widget coursesLectures(BuildContext context) => SingleChildScrollView(
  child: Container(
    margin: EdgeInsets.symmetric(
        horizontal: 15, vertical: 10),
    child: Column(
      children: [
        Container(

          padding: EdgeInsets.symmetric(
              horizontal: 20, vertical: 12),
          height: 550,
          color: AppColor.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                    alignment:
                    AlignmentDirectional
                        .topStart,
                    child: Text("الدرس الأول")),
                SizedBox(
                  height: 15,
                ),
                myDivider(),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                      crossAxisAlignment:
                      CrossAxisAlignment
                          .center,
                      children: [
                        Container(
                          height: 16,
                          width: 1,
                          color: AppColor
                              .linkWaterD0D6E0,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: AppColor
                                      .linkWaterD0D6E0),
                              borderRadius:
                              BorderRadius
                                  .circular(
                                  40)),
                          child: Icon(
                            IconlyLight.video,
                            size: 30,
                            color:
                            AppColor.main,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                      const EdgeInsetsDirectional
                          .only(
                          top: 20.0,
                          start: 15),
                      child: Text("اسم الدرس "),
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                      crossAxisAlignment:
                      CrossAxisAlignment
                          .center,
                      children: [
                        Container(
                          height: 22,
                          width: 1,
                          color: AppColor
                              .linkWaterD0D6E0,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: AppColor
                                      .linkWaterD0D6E0),
                              borderRadius:
                              BorderRadius
                                  .circular(
                                  40)),
                          child: Icon(
                            IconlyLight.video,
                            size: 30,
                            color:
                            AppColor.main,
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 1,
                          color: AppColor
                              .linkWaterD0D6E0,
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                      const EdgeInsetsDirectional
                          .only(
                          bottom: 15.0,
                          start: 15),
                      child: Text("اسم الدرس "),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin:
                          EdgeInsetsDirectional
                              .only(
                              start:
                              19.5),
                          height: 20,
                          width: 01,
                          color: AppColor
                              .linkWaterD0D6E0,
                        ),
                        Row(
                          children: [
                            Container(
                              margin:
                              EdgeInsetsDirectional
                                  .only(
                                  start:
                                  20),
                              width: 50,
                              height: 01,
                              color: AppColor
                                  .linkWaterD0D6E0,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: AppColor
                                          .linkWaterD0D6E0),
                                  borderRadius:
                                  BorderRadius
                                      .circular(
                                      40)),
                              child: Icon(
                                Icons
                                    .question_mark_rounded,
                                size: 30,
                                color: AppColor
                                    .main,
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional
                                  .only(
                                  bottom:
                                  0.0,
                                  start:
                                  15),
                              child: Text(
                                  "اختبار قصير"),
                            ),
                          ],
                        ),
                        Container(
                          margin:
                          const EdgeInsetsDirectional
                              .only(
                              top: 10.0,
                              start: 19.5),
                          height: 55,
                          width: 1,
                          color: AppColor
                              .linkWaterD0D6E0,
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          margin:
                          EdgeInsetsDirectional
                              .only(
                              start:
                              19.5),
                          height: 20,
                          width: 01,
                          color: AppColor
                              .linkWaterD0D6E0,
                        ),
                        Row(
                          children: [
                            Container(
                              margin:
                              EdgeInsetsDirectional
                                  .only(
                                  start:
                                  20),
                              width: 50,
                              height: 01,
                              color: AppColor
                                  .linkWaterD0D6E0,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: AppColor
                                          .linkWaterD0D6E0),
                                  borderRadius:
                                  BorderRadius
                                      .circular(
                                      40)),
                              child: Icon(
                                Icons
                                    .language_outlined,
                                size: 28,
                                color: AppColor
                                    .main,
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional
                                  .only(
                                  bottom:
                                  0.0,
                                  start:
                                  15),
                              child: Text(
                                  " مصادر الدرس"),
                            ),
                          ],
                        ),
                        Container(
                          margin:
                          const EdgeInsetsDirectional
                              .only(
                              top: 10.0,
                              start: 19.5),
                          height: 35,
                          width: 1,
                          color: AppColor
                              .linkWaterD0D6E0,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                      crossAxisAlignment:
                      CrossAxisAlignment
                          .center,
                      children: [
                        Container(
                          height: 16,
                          width: 1,
                          color: AppColor
                              .linkWaterD0D6E0,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: AppColor
                                      .linkWaterD0D6E0),
                              borderRadius:
                              BorderRadius
                                  .circular(
                                  40)),
                          child: Icon(
                            IconlyLight.video,
                            size: 30,
                            color:
                            AppColor.main,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                      const EdgeInsetsDirectional
                          .only(
                          top: 20.0,
                          start: 15),
                      child: Text("اسم الدرس "),
                    )
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin:
                          EdgeInsetsDirectional
                              .only(
                              start:
                              19.5),
                          height: 20,
                          width: 01,
                          color: AppColor
                              .linkWaterD0D6E0,
                        ),
                        Row(
                          children: [
                            Container(
                              margin:
                              EdgeInsetsDirectional
                                  .only(
                                  start:
                                  20),
                              width: 50,
                              height: 01,
                              color: AppColor
                                  .linkWaterD0D6E0,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: AppColor
                                          .linkWaterD0D6E0),
                                  borderRadius:
                                  BorderRadius
                                      .circular(
                                      40)),
                              child: Icon(
                                Icons
                                    .question_mark_rounded,
                                size: 30,
                                color: AppColor
                                    .main,
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional
                                  .only(
                                  bottom:
                                  0.0,
                                  start:
                                  15),
                              child: Text(
                                  "اختبار قصير"),
                            ),
                          ],
                        ),
                        Container(
                          margin:
                          const EdgeInsetsDirectional
                              .only(
                              top: 10.0,
                              start: 19.5),
                          height: 55,
                          width: 1,
                          color: AppColor
                              .linkWaterD0D6E0,
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          margin:
                          EdgeInsetsDirectional
                              .only(
                              start:
                              19.5),
                          height: 20,
                          width: 01,
                          color: AppColor
                              .linkWaterD0D6E0,
                        ),
                        Row(
                          children: [
                            Container(
                              margin:
                              EdgeInsetsDirectional
                                  .only(
                                  start:
                                  20),
                              width: 50,
                              height: 01,
                              color: AppColor
                                  .linkWaterD0D6E0,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: AppColor
                                          .linkWaterD0D6E0),
                                  borderRadius:
                                  BorderRadius
                                      .circular(
                                      40)),
                              child: Icon(
                                Icons
                                    .language_outlined,
                                size: 28,
                                color: AppColor
                                    .main,
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional
                                  .only(
                                  bottom:
                                  0.0,
                                  start:
                                  15),
                              child: Text(
                                  " مصادر الدرس"),
                            ),
                          ],
                        ),
                        Container(
                          margin:
                          const EdgeInsetsDirectional
                              .only(
                              top: 10.0,
                              start: 19.5),
                          height: 35,
                          width: 1,
                          color: AppColor
                              .linkWaterD0D6E0,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 15,),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: 15, vertical: 12),
          decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(6)
          ),
          height: 42,
          width: double.infinity,
          child: Text("الدرس الثاني",
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 13,
              color: const Color(
                  0xff10000D),
              fontWeight:
              FontWeight.w500,
            ),
            textAlign:
            TextAlign.right,
          ),
        ),
        SizedBox(height:
        10,),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: 15, vertical: 12),
          decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(6)
          ),
          height: 42,
          width: double.infinity,
          child: Text("الدرس الثالث",
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 13,
              color: const Color(
                  0xff10000D),
              fontWeight:
              FontWeight.w500,
            ),
            textAlign:
            TextAlign.right,
          ),
        ),

      ],
    ),
  ),
);
