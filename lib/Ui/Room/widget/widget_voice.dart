import 'package:cv/Ui/Education/course_details.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';


Widget activeTitle(BuildContext context,final String title) =>

    Align(
      alignment:
      AlignmentDirectional.topStart,
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Tajawal',
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Color(0xff514D55),
        ),
      ),
    )

;
Widget activeRoom(BuildContext context,final int online) =>

    Container(
      height:
      online == 0 ?255:220
      ,
      child: ListView.builder(


        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding:
            const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15),
            width: 225,
            decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius:
                BorderRadius.circular(
                    4)),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                const Text(
                  "اسم الغرفة",
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 12,
                    fontWeight:
                    FontWeight.w500,
                    color:
                    Color(0xff514d55),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                online == 0 ?

                Row(
                  children: [
                    const Icon(
                      IconlyLight.calendar,
                      color: AppColor.main,
                    ),
                     Text(

                        "PM 4.00 \t 27 /8/2022",
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 9,
                          color: const Color(
                              0xff99A0AA),
                          fontWeight:
                          FontWeight.w400,
                        )),
                  ],
                ):SizedBox(),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.",
                  style: const TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 10,
                    fontWeight:
                    FontWeight.w400,
                    color: const Color(
                        0xff514d55),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Stack(children: [
                          CircleAvatar(
                            backgroundImage:
                            AssetImage(
                                "assets/images/photo_female_5.jpg"),
                            radius: 14,
                          ),
                          Padding(
                              padding: EdgeInsets
                                  .only(
                                  right:
                                  11.5),
                              child:
                              CircleAvatar(
                                backgroundImage:
                                AssetImage(
                                    "assets/images/photo_female_4.jpg"),
                                radius: 14,
                              )),
                          Padding(
                              padding: EdgeInsets
                                  .only(
                                  right:
                                  23.0),
                              child:
                              CircleAvatar(
                                backgroundImage:
                                AssetImage(
                                    "assets/images/photo_female_6.jpg"),
                                radius: 14,
                              )),
                          Padding(
                              padding: EdgeInsets
                                  .only(
                                  right:
                                  33.0),
                              child:
                              CircleAvatar(
                                backgroundImage:
                                AssetImage(
                                    "assets/images/photo_female_7.jpg"),
                                radius: 14,
                              )),
                          Padding(
                              padding: EdgeInsets
                                  .only(
                                  right:
                                  45.0),
                              child:
                              CircleAvatar(
                                backgroundImage:
                                AssetImage(
                                    "assets/images/photo_male_7.jpg"),
                                radius: 14,
                              )),
                        ]),
                        Column(
                          mainAxisAlignment:
                          MainAxisAlignment
                              .start,
                          children: [
                            Align(
                              alignment:
                              Alignment
                                  .topRight,
                              child:
                              Container(
                                padding: const EdgeInsets
                                    .only(
                                    right:
                                    5),
                                child:
                                const Text(
                                  ' +10 في الغرفة',
                                  style:
                                  TextStyle(
                                    fontFamily:
                                    'Tajawal',
                                    fontSize:
                                    11,
                                    color: AppColor
                                        .grayishblue99a0aa,
                                  ),
                                  softWrap:
                                  false,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                defauContainer(
                  style: const TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 12,
                    fontWeight:
                    FontWeight.w500,
                    color: AppColor.white,
                  ),
                  height: 35,
                  text: "انضم الآن",
                  borderRadius: 5,
                )
              ],
            ),
          );
        },
      ),
    )

;
