
import 'package:cv/Ui/Education/course_details.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

Widget listOfCourses(BuildContext context) =>
  Container(
    width: double.infinity,
    decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(15)),
    child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 182,

          decoration: BoxDecoration(
              image: const DecorationImage(
                image:  AssetImage("assets/images/course.jpeg"),
                fit: BoxFit.cover,
              ),
              color: AppColor.main,
              borderRadius: BorderRadius.circular(15)),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: AlignmentDirectional.topStart,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                height: 27,
                width: 92,
                child:   Text(
                  "للمبتدئين",
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColor.main,
                  ),
                  textAlign: TextAlign.right,
                ),
                decoration: BoxDecoration(
                    color: const Color(0xffF2FAF7),
                    borderRadius: BorderRadius.circular(3)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 11,
                    ),
                    const Text(
                      'مقدمة في برمجة المواقع',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff10000d),
                      ),
                      textAlign: TextAlign.right,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      maxLines: 3,
                      ' هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.   هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff99A0AA),
                      ),
                      textAlign: TextAlign.right,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              IconlyLight.folder,
                              size: 18,
                              color: AppColor.main,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(top: 5.0),
                              child: Text("10 دروس"),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              IconlyLight.user_1,
                              size: 18,
                              color: AppColor.main,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(top: 5.0),
                              child: Text("45 طالب"),
                            )
                          ],
                        ),
                        Row(
                          children: const[
                            Icon(
                              IconlyLight.time_circle,
                              size: 18,
                              color: AppColor.main,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(top: 5.0),
                              child: Text("03 ساعات"),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    defauContainer(
                        height: 40,
                        onPressed: () {
                          navigateTo(context, const CourseDetails());
                        },
                        text: "عرض المزيد",
                        style: const TextStyle(color: AppColor.white)),
                    const SizedBox(
                      height: 6,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
  );

