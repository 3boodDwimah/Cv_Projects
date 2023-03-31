import 'package:cv/Ui/Profiles/Widget/editprofile.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:cv/core/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

Widget profilePersona(BuildContext context) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              color: AppColor.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "الحالة",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  myDivider(),
                  SizedBox(
                    height: 15,
                  ),
                  Wrap(
                    spacing: 2,
                    runSpacing: 10,
                    runAlignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    alignment: WrapAlignment.start,
                    children: [
                      Container(
                        height: 35,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xffD5DFEB),
                        ),
                        child: CustomText(
                          text: "يبحث عن عمل عن بعد",
                          fontSize: 11,
                          colors: AppColor.main,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 35,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xffD5DFEB),
                        ),
                        child: Text(
                          "يبحث عن عمل",
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 11,
                            color: AppColor.main,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 35,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xffD5DFEB),
                        ),
                        child: Text(
                          "يعمل بدوام جزئي",
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 11,
                            color: AppColor.main,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 55,
              color: AppColor.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "أضف ملف شخصي بلغة أخرى",
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    colors: AppColor.b10000d,
                  ),
                  Icon(IconlyLight.arrow_left_2)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              color: AppColor.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "أكتما ل الملف الشخصي ",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  myDivider(),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: "متوسط",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Cairo",
                        colors: AppColor.main,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      CustomText(
                        text: "50%",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo",
                        colors: AppColor.main,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 26,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColor.linkWaterD0D6E0),
                    child: Row(
                      children: [
                        Container(
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColor.main))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  defauContainer(
                      text: "أكمل ملفك الشخصي",
                      height: 35,
                      width: 156,
                      padding: EdgeInsets.only(top: 5),
                      borderRadius: 3,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Tajawal",
                        color: AppColor.white,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              color: AppColor.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "تقييم الملف الشخصي ",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  myDivider(),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text:
                        "يتم تقييم الملف الشخصي بناء على الفيديوهات التعريفية واكمال المعلومات الأساسية ",
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Tajawal",
                    colors: AppColor.p200E32,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                          color: AppColor.main,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          CustomText(
                            text: "4.5",
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            colors: AppColor.white,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: RatingBar.builder(
                              itemSize: 24,
                              unratedColor: AppColor.white,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 1.0),
                              itemBuilder: (context, _) => Icon(
                                IconlyBroken.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          CustomText(
                            text: "بناءً على 50 تقييم",
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            colors: AppColor.white,
                          )
                        ],
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CustomText(
                        text: "الفيديو التعريفي",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        colors: AppColor.p200E32,
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 1.4,
                            height: 26,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColor.linkWaterD0D6E0),
                            child: Row(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width/1.7,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColor.main))
                              ],
                            ),
                          ),
                          CustomText(
                            text: "%80",
                            colors: AppColor.p200E32,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: "Cairo",
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      CustomText(
                        text: "اكتمال الملف الشخصي",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        colors: AppColor.p200E32,
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 1.4,
                            height: 26,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColor.linkWaterD0D6E0),
                            child: Row(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width/1.7,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColor.main))
                              ],
                            ),
                          ),
                          CustomText(
                            text: "%80",
                            colors: AppColor.p200E32,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: "Cairo",
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      CustomText(
                        text: "اكتمال الملف الشخصي",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        colors: AppColor.p200E32,
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 1.4,
                            height: 26,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColor.linkWaterD0D6E0),
                            child: Row(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width/1.7,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColor.main))
                              ],
                            ),
                          ),
                          CustomText(
                            text: "%80",
                            colors: AppColor.p200E32,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: "Cairo",
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      CustomText(
                        text: "الخبرة بمجال العمل",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        colors: AppColor.p200E32,
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 1.4,
                            height: 26,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColor.linkWaterD0D6E0),
                            child: Row(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width/1.7,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColor.main))
                              ],
                            ),
                          ),
                          CustomText(
                            text: "%80",
                            colors: AppColor.p200E32,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: "Cairo",
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              color: AppColor.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: " الملف الشخصي ",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      GestureDetector(
                          onTap: (){
                            navigateTo(context, EditProfile());

                          },
                          child: SvgPicture.asset("assets/images/pan.svg"))
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  myDivider(),
                  SizedBox(
                    height: 15,
                  ),
                  CustomText(
                    text: "المهارات الشخصية",
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    colors: AppColor.main,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "العمل تحت الضغط",
                        fontSize: 11,
                        fontFamily: "Cairo",
                        colors: AppColor.p200E32,
                      ),
                      CustomText(
                        text: "متوسط",
                        fontSize: 11,
                        fontFamily: "Cairo",
                        colors: AppColor.p200E32,
                      ),
                      CustomText(
                        text: "50%",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo",
                        colors: AppColor.main,
                      ),
                      SizedBox(
                        width: 50,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "العمل تحت الضغط",
                        fontSize: 11,
                        fontFamily: "Cairo",
                        colors: AppColor.p200E32,
                      ),
                      CustomText(
                        text: "متوسط",
                        fontSize: 11,
                        fontFamily: "Cairo",
                        colors: AppColor.p200E32,
                      ),
                      CustomText(
                        text: "50%",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo",
                        colors: AppColor.main,
                      ),
                      SizedBox(
                        width: 50,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  myDivider(),
                  SizedBox(
                    height: 15,
                  ),

                  CustomText(
                    text: "المهارات التقنية",
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    colors: AppColor.main,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "العمل تحت الضغط",
                        fontSize: 11,
                        fontFamily: "Cairo",
                        colors: AppColor.p200E32,
                      ),
                      CustomText(
                        text: "متوسط",
                        fontSize: 11,
                        fontFamily: "Cairo",
                        colors: AppColor.p200E32,
                      ),
                      CustomText(
                        text: "50%",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo",
                        colors: AppColor.main,
                      ),
                      SizedBox(
                        width: 50,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "العمل تحت الضغط",
                        fontSize: 11,
                        fontFamily: "Cairo",
                        colors: AppColor.p200E32,
                      ),
                      CustomText(
                        text: "متوسط",
                        fontSize: 11,
                        fontFamily: "Cairo",
                        colors: AppColor.p200E32,
                      ),
                      CustomText(
                        text: "50%",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo",
                        colors: AppColor.main,
                      ),
                      SizedBox(
                        width: 50,
                      )
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              color: AppColor.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "الشهادات والجوائز",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      GestureDetector(
                          onTap: (){
                            navigateTo(context, EditProfile());

                          },
                          child: SvgPicture.asset("assets/images/pan.svg"))
                    ],
                  ),
                  SizedBox(height: 15,),

                  myDivider(),
                  SizedBox(height: 15,),


                  CustomText(text: "شهادة الموظف المثالي",
                  fontSize: 12,
                    fontWeight: FontWeight.w500,

                  ),
                  SizedBox(height: 7,),
                  CustomText(text: "شركة  A   - 2022",
                    fontSize: 10,
                    fontFamily: "Cairo",
                    colors: AppColor.mulledWine55,

                  ),
                  SizedBox(height: 15,),
                  CustomText(text: "شهادة الموظف المثالي",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,

                  ),
                  SizedBox(height: 7,),
                  CustomText(text: "شركة  A   - 2022",
                    fontSize: 10,
                    fontFamily: "Cairo",
                    colors: AppColor.mulledWine55,

                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              color: AppColor.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "اللغات",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      GestureDetector(
                          onTap: (){
                            navigateTo(context, EditProfile());
                          },
                          child: SvgPicture.asset("assets/images/pan.svg"))
                    ],
                  ),
                  SizedBox(height: 15,),

                  myDivider(),
                  SizedBox(height: 15,),


                  CustomText(text: "العربية",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,

                  ),
                  SizedBox(height: 7,),
                  CustomText(text: "محترف",
                    fontSize: 10,
                    fontFamily: "Cairo",
                    colors: AppColor.mulledWine55,

                  ),
                  SizedBox(height: 15,),
                  CustomText(text: "الإنجليزية",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,

                  ),
                  SizedBox(height: 7,),
                  CustomText(text: "متوسط",
                    fontSize: 10,
                    fontFamily: "Cairo",
                    colors: AppColor.mulledWine55,

                  ),

                ],
              ),
            ),

            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
