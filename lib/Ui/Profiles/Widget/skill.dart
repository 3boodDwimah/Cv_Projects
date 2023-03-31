


import 'package:cv/core/colors.dart';
import 'package:flutter/material.dart';

Widget skill()=>
    SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child:                           Text(
                'التعليم',
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
                      height: 140,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  height: 107,
                  width: 323,
                  color: AppColor.white,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'دبلوم في تصميم تجربة المستخدم',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 13,
                          color: const Color(0xff200E32),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 8,),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'جامعة الإسراء ',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 12,
                              color: const Color(0xff200E32),
                            ),
                            textAlign: TextAlign.right,
                          ),
                          SizedBox(width: 32,),
                          Text(
                            'غزة - فلسطين',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 12,
                              color: const Color(0xff200E32),
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                      SizedBox(height: 11,),

                      Text(
                        '2022  - 2020 ',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: AppColor.grayishblue99a0aa,
                        ),
                        textAlign: TextAlign.right,
                      ),

                    ],
                  ),
                ),
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
                      height: 130,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  height: 107,
                  width: 323,
                  color: AppColor.white,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'دبلوم في تصميم تجربة المستخدم',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 13,
                          color: const Color(0xff200E32),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 8,),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'جامعة الإسراء ',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 12,
                              color: const Color(0xff200E32),
                            ),
                            textAlign: TextAlign.right,
                          ),
                          SizedBox(width: 32,),
                          Text(
                            'غزة - فلسطين',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 12,
                              color: const Color(0xff200E32),
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                      SizedBox(height: 11,),

                      Text(
                        '2022  - 2020 ',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: AppColor.grayishblue99a0aa,
                        ),
                        textAlign: TextAlign.right,
                      ),

                    ],
                  ),
                ),
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
                      height: 130,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  height: 107,
                  width: 323,
                  color: AppColor.white,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'دبلوم في تصميم تجربة المستخدم',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 13,
                          color: const Color(0xff200E32),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 8,),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'جامعة الإسراء ',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 12,
                              color: const Color(0xff200E32),
                            ),
                            textAlign: TextAlign.right,
                          ),
                          SizedBox(width: 32,),
                          Text(
                            'غزة - فلسطين',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 12,
                              color: const Color(0xff200E32),
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                      SizedBox(height: 11,),

                      Text(
                        '2022  - 2020 ',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: AppColor.grayishblue99a0aa,
                        ),
                        textAlign: TextAlign.right,
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child:                           Text(
                'الخبرة',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 13,
                  color: const Color(0xff200E32),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          SizedBox(height: 25,),

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
                      height: 340,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  width: 323,
                  color: AppColor.white,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'مصمم تجربة المستخدم',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff200E32),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 8,),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'جامعة الإسراء ',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 12,
                              color: const Color(0xff200E32),
                            ),
                            textAlign: TextAlign.right,
                          ),
                          SizedBox(width: 32,),
                          Text(
                            'غزة - فلسطين',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 12,
                              color: const Color(0xff200E32),
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                      SizedBox(height: 11,),

                      Text(
                        '2022  - 2020 ',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: AppColor.grayishblue99a0aa,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 20,),
                      Text(
                        'المهام',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff200E32),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 13,),
                      Text(
                        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff200E32),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 12,),
                      Text(
                        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff200E32),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 12,),Text(
                        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff200E32),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 10,),

                    ],
                  ),
                ),
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
                      height: 355,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  width: 323,
                  color: AppColor.white,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'مصمم تجربة المستخدم',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff200E32),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 8,),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'جامعة الإسراء ',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 12,
                              color: const Color(0xff200E32),
                            ),
                            textAlign: TextAlign.right,
                          ),
                          SizedBox(width: 32,),
                          Text(
                            'غزة - فلسطين',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 12,
                              color: const Color(0xff200E32),
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                      SizedBox(height: 11,),

                      Text(
                        '2022  - 2020 ',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: AppColor.grayishblue99a0aa,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 20,),
                      Text(
                        'المهام',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff200E32),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 13,),
                      Text(
                        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff200E32),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 12,),
                      Text(
                        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff200E32),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 12,),Text(
                        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff200E32),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 10,),

                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,)



        ],
      ),
    );
