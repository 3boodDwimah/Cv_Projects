import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';

Widget jopsed(BuildContext context) => SingleChildScrollView(
  child: Column(
    children: [
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            'الوظائف',
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
                  height: 220,
                ),
              ],
            ),
            skil(context)
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
                  height: 220,
                ),
              ],
            ),
            skil(context)
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
    ],
  ),
);

Widget skil(BuildContext context) =>
    Container(
      width: MediaQuery.of(context).size.width/1.2,
      color: AppColor.white,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          color: AppColor.white,
          width: double.infinity,
          child: Column(children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Mask Group 55.png")
                    )
                  ),
                  width: 72,
                  height: 83,

                ),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'A company',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: AppColor.b10000d,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      primary: false,
                      child: Text(
                        "وظيفة مصمم واجهات المستخدم",
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 11,
                          color: const Color(0xff200e32),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 200,
                      child: SingleChildScrollView(
                        primary: false,
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 11,
                              color: const Color(0xff200e32),
                            ),
                            children: [
                              TextSpan(
                                text:
                                'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء  .... ',
                              ),
                              TextSpan(
                                text: 'عرض المزيد\n',
                                style: TextStyle(
                                  color: const Color(0xff26b888),
                                ),
                              ),
                            ],
                          ),
                          textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),   
                  ],
                ),

              ],
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'وظيفة عن بعد',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 10,
                        color: const Color(0xff99a0aa),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                    Text(
                      'الرياض',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 10,
                        color: const Color(0xff99a0aa),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                    Text(
                      '500\$ شهرياً',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 10,
                        color: const Color(0xff99a0aa),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                    Text(
                      '6 شهور',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 10,
                        color: const Color(0xff99a0aa),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    )
                  ]),

            ),
            SizedBox(height: 10,),
            defauContainer(
              height: 38,
              borderRadius: 4,
              text: "معلق", style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 14,
              color: AppColor.white,
            ),)

          ]
))  );
