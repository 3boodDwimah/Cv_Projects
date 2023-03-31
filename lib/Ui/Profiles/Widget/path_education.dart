import 'package:cv/core/colors.dart';
import 'package:flutter/material.dart';

var states = 1 ;

Widget PathEducation() => Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child:                           Text(
                  'المسارات التعليمية',
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 13,
                    color: const Color(0xff200E32),
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Stack(
                    children: [
                      Positioned(
                          right: 10,
                          bottom: 0,
                          top: 0,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColor.main,
                          )),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: 2,
                        color: AppColor.main,
                        height:210,
                      ),
                    ],
                  ),
                  path(1)
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Stack(
                    children: [
                      Positioned(
                          right: 10,
                          bottom: 0,
                          top: 0,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColor.main,
                          )),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: 2,
                        color: AppColor.main,
                        height:210,
                      ),
                    ],
                  ),
                  path(1)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child:                           Text(
                  'الاختبارات القياسية',
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 13,
                    color: const Color(0xff200E32),
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Stack(
                    children: [
                      Positioned(
                          right: 10,
                          bottom: 0,
                          top: 0,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColor.main,
                          )),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: 2,
                        color: AppColor.main,
                        height:210,
                      ),
                    ],
                  ),
                  path(0)
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Stack(
                    children: [
                      Positioned(
                          right: 10,
                          bottom: 0,
                          top: 0,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColor.main,
                          )),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: 2,
                        color: AppColor.main,
                        height:210,
                      ),
                    ],
                  ),
                  path(0)
                ],
              ),
            ),


            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );

Widget path(final int states) =>
    Container(
      width:
      353,
      color: AppColor.white,
      child: Container(
        color: AppColor.main,
        width: double.infinity,
        child:
        Container(
            color: AppColor.white,
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                color: AppColor.white,
                width: double.infinity,
                child: Column(children: [
                  Row(
                    children: [
                      (states == 1)
                  ? Container(
decoration: BoxDecoration(
  image: DecorationImage(image:AssetImage("assets/images/Mask Group 551.png"),fit: BoxFit.fill )
),
                      width: 72,
                        height: 72,

                    )
                  : Container(),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          (states == 1)
                              ? Text(
                      'اسم المسار',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 13,
                        height: 3,
                        color: AppColor.b10000d,
                      ),
                      textAlign: TextAlign.right,
                    )
                  : Text(
                      'اختبار تصميم واجهة المستخدم',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 13,
                        height: 3,
                        color: const Color(0xff26b888),
                      ),
                      textAlign: TextAlign.right,
                    ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 200,

                            child: Text(
                  'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 11,
                    color: const Color(0xff200e32),
                  ),
                  textAlign: TextAlign.right,

              ),
                          ),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child:
                    Row(
                  mainAxisAlignment: (states == 1)
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '45  درس ',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 9.7,
                        color: const Color(0xff99a0aa),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                    Text(
                      '80 ساعة',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 9.7,
                        color: const Color(0xff99a0aa),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                    Text(
                      'نتيجة الاختبرات 100 / 80',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 9.7,
                        color: const Color(0xff99a0aa),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                    (states == 1)
                        ? Text(
                            ' التقييم العام100 / 90',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 9.7,
                              color: const Color(0xff99a0aa),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          )
                        : Container(
                            width: 20,
                          ),
                  ]),
            ),

                  SizedBox(height: 10,),

                ]
                )))
      ),
    );


//Column(
//           children: [
//             ListTile(
//               leading:
//               title: (states == 1)
//                   ? Text(
//                       'اسم المسار',
//                       style: TextStyle(
//                         fontFamily: 'Tajawal',
//                         fontSize: 13,
//                         height: 3,
//                         color: AppColor.b10000d,
//                       ),
//                       textAlign: TextAlign.right,
//                     )
//                   : Text(
//                       'اختبار تصميم واجهة المستخدم',
//                       style: TextStyle(
//                         fontFamily: 'Tajawal',
//                         fontSize: 13,
//                         height: 3,
//                         color: const Color(0xff26b888),
//                       ),
//                       textAlign: TextAlign.right,
//                     ),
//               subtitle: SingleChildScrollView(
//                 primary: false,
//                 child: Text(
//                   'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
//                   style: TextStyle(
//                     fontFamily: 'Tajawal',
//                     fontSize: 11,
//                     color: const Color(0xff200e32),
//                   ),
//                   textAlign: TextAlign.right,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 12),
//               child: Row(
//                   mainAxisAlignment: (states == 1)
//                       ? MainAxisAlignment.spaceBetween
//                       : MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       '45  درس ',
//                       style: TextStyle(
//                         fontFamily: 'Tajawal',
//                         fontSize: 9.7,
//                         color: const Color(0xff99a0aa),
//                         fontWeight: FontWeight.w500,
//                       ),
//                       softWrap: false,
//                     ),
//                     Text(
//                       '80 ساعة',
//                       style: TextStyle(
//                         fontFamily: 'Tajawal',
//                         fontSize: 9.7,
//                         color: const Color(0xff99a0aa),
//                         fontWeight: FontWeight.w500,
//                       ),
//                       softWrap: false,
//                     ),
//                     Text(
//                       'نتيجة الاختبرات 100 / 80',
//                       style: TextStyle(
//                         fontFamily: 'Tajawal',
//                         fontSize: 9.7,
//                         color: const Color(0xff99a0aa),
//                         fontWeight: FontWeight.w500,
//                       ),
//                       softWrap: false,
//                     ),
//                     (states == 1)
//                         ? Text(
//                             ' التقييم العام100 / 90',
//                             style: TextStyle(
//                               fontFamily: 'Tajawal',
//                               fontSize: 9.7,
//                               color: const Color(0xff99a0aa),
//                               fontWeight: FontWeight.w500,
//                             ),
//                             softWrap: false,
//                           )
//                         : Container(
//                             width: 20,
//                           ),
//                   ]),
//             ),
//             SizedBox(
//               height: 20,
//             )
//           ],
//         )
