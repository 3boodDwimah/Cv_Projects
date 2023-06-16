

import 'package:cv/bloc/cubit_navbar/cubit.dart';
import 'package:cv/bloc/cubit_navbar/states.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

class UserData extends StatelessWidget {
   UserData({Key? key}) : super(key: key);

  var firstController = TextEditingController();
  var lastController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var jobTitleController = TextEditingController();
  var cityController = TextEditingController();
  var countryController = TextEditingController();
  var statsController = TextEditingController();
  var urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialStates>(
        listener: (context, state) {},
    builder: (context, state) {
    var userModel = SocialCubit.get(context).user;
    var profileImage = SocialCubit.get(context).profileImage;

    firstController.text = userModel!.firstname;
    lastController.text = userModel.lastName;
    cityController.text = userModel.city;
    countryController.text = userModel.country;
    phoneController.text = userModel.phone;
    urlController.text = userModel.url;
    jobTitleController.text = userModel.jopTitle;
    emailController.text = userModel.email;



    return
      SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: AppColor.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'المعلومات الأساسية',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.b10000d,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  myDivider(),
                  SizedBox(
                    height: 20,
                  ),
                  defaultFormField(

                      hintStyle: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      hint: "الاسم الأول",
                      color: AppColor.white,
                      controller: firstController,
                      type: TextInputType.name),
                  SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                      hintStyle: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      hint: "الاسم الأخير",
                      color: AppColor.white,
                      controller: lastController,
                      type: TextInputType.name),
                  SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                      hintStyle: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      hint: 'البريد الإلكتروني',
                      color: AppColor.white,
                      controller: emailController,
                      type: TextInputType.name),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        //    child: ,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 288,
                        child: defaultFormField(
                            hintStyle: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.linkWaterD0D6E0,
                            ),
                            hint: "رقم الموبايل",
                            color: AppColor.white,
                            controller: phoneController,
                            type: TextInputType.name),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                      hint: "المسمى الوظيفي",
                      hintStyle: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      color: AppColor.white,
                      controller: jobTitleController,
                      type: TextInputType.name),
                  SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                      hint: " الدولة",
                      hintStyle: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      color: AppColor.white,
                      controller: countryController,
                      type: TextInputType.name),

                  SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                      hint: "المدينة",
                      hintStyle: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      color: AppColor.white,
                      controller: cityController,
                      type: TextInputType.name),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      border: Border.all(
                          width: 0.25,
                          color: const Color(0xff707070)),
                      color: AppColor.white,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 114,
                          decoration: BoxDecoration(
                            color: const Color(0xff26b888),
                            borderRadius:
                            BorderRadius.circular(3.0),
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: [
                              Text(
                                'يعمل بدوام جزئي',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 10,
                                  color:
                                  const Color(0xffffffff),
                                ),
                                textAlign: TextAlign.right,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Icon(IconlyLight.close_square,
                                  color: AppColor.white),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 114,
                          decoration: BoxDecoration(
                            color: const Color(0xff26b888),
                            borderRadius:
                            BorderRadius.circular(3.0),
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: [
                              Text(
                                'يبحث عن عمل ',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 10,
                                  color:
                                  const Color(0xffffffff),
                                ),
                                textAlign: TextAlign.right,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Icon(
                                IconlyLight.close_square,
                                color: AppColor.white,
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Icon(
                            IconlyLight.arrow_down_2,
                            size: 20,
                            color: AppColor.grayishblue99a0aa,
                          ),
                        ),
                      ],
                    ),
                    height: 50,
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                      hintStyle: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      hint: "رابط الملف الشخصي ",
                      color: AppColor.white,
                      controller: urlController,
                      type: TextInputType.name),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: AppColor.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'المهارات',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.b10000d,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  myDivider(),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment:
                        AlignmentDirectional.centerStart,
                        child: Text(
                          'المهارات الشخصية',
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 14,
                            color: AppColor.main,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 165,
                            height: 48,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Text(
                                  'العمل تحت الضغط',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor
                                        .grayishblue99a0aa,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  IconlyLight.arrow_down_2,
                                  size: 20,
                                  color: AppColor
                                      .grayishblue99a0aa,
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius:
                              BorderRadius.circular(3.0),
                              border: Border.all(
                                  width: 0.25,
                                  color:
                                  const Color(0xff707070)),
                            ),
                          ),
                          Container(
                            width: 84,
                            height: 48,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Text(
                                  'متوسط',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor
                                        .grayishblue99a0aa,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  IconlyLight.arrow_down_2,
                                  size: 20,
                                  color: AppColor
                                      .grayishblue99a0aa,
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius:
                              BorderRadius.circular(3.0),
                              border: Border.all(
                                  width: 0.25,
                                  color:
                                  const Color(0xff707070)),
                            ),
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            child: Icon(
                              Icons.close,
                              color: AppColor.white,
                              size: 16,
                            ),
                            decoration: BoxDecoration(
                              color: AppColor.main,
                              borderRadius:
                              BorderRadius.circular(3.0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 165,
                            height: 48,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Text(
                                  'العمل تحت الضغط',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor
                                        .grayishblue99a0aa,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  IconlyLight.arrow_down_2,
                                  size: 20,
                                  color: AppColor
                                      .grayishblue99a0aa,
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius:
                              BorderRadius.circular(3.0),
                              border: Border.all(
                                  width: 0.25,
                                  color:
                                  const Color(0xff707070)),
                            ),
                          ),
                          Container(
                            width: 84,
                            height: 48,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Text(
                                  'متوسط',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor
                                        .grayishblue99a0aa,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  IconlyLight.arrow_down_2,
                                  size: 20,
                                  color: AppColor
                                      .grayishblue99a0aa,
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius:
                              BorderRadius.circular(3.0),
                              border: Border.all(
                                  width: 0.25,
                                  color:
                                  const Color(0xff707070)),
                            ),
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            child: Icon(
                              IconlyLight.plus,
                              color: AppColor.white,
                              size: 24,
                            ),
                            decoration: BoxDecoration(
                              color: AppColor.main,
                              borderRadius:
                              BorderRadius.circular(3.0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment:
                        AlignmentDirectional.centerStart,
                        child: Text(
                          'المهارات التقنية',
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 14,
                            color: AppColor.main,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 165,
                            height: 48,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Text(
                                  'العمل تحت الضغط',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor
                                        .grayishblue99a0aa,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  IconlyLight.arrow_down_2,
                                  size: 20,
                                  color: AppColor
                                      .grayishblue99a0aa,
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius:
                              BorderRadius.circular(3.0),
                              border: Border.all(
                                  width: 0.25,
                                  color:
                                  const Color(0xff707070)),
                            ),
                          ),
                          Container(
                            width: 84,
                            height: 48,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Text(
                                  'متوسط',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor
                                        .grayishblue99a0aa,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  IconlyLight.arrow_down_2,
                                  size: 20,
                                  color: AppColor
                                      .grayishblue99a0aa,
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius:
                              BorderRadius.circular(3.0),
                              border: Border.all(
                                  width: 0.25,
                                  color:
                                  const Color(0xff707070)),
                            ),
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            child: Icon(
                              Icons.close,
                              color: AppColor.white,
                              size: 16,
                            ),
                            decoration: BoxDecoration(
                              color: AppColor.main,
                              borderRadius:
                              BorderRadius.circular(3.0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 165,
                            height: 48,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Text(
                                  'العمل تحت الضغط',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor
                                        .grayishblue99a0aa,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  IconlyLight.arrow_down_2,
                                  size: 20,
                                  color: AppColor
                                      .grayishblue99a0aa,
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius:
                              BorderRadius.circular(3.0),
                              border: Border.all(
                                  width: 0.25,
                                  color:
                                  const Color(0xff707070)),
                            ),
                          ),
                          Container(
                            width: 84,
                            height: 48,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Text(
                                  'متوسط',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor
                                        .grayishblue99a0aa,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  IconlyLight.arrow_down_2,
                                  size: 20,
                                  color: AppColor
                                      .grayishblue99a0aa,
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius:
                              BorderRadius.circular(3.0),
                              border: Border.all(
                                  width: 0.25,
                                  color:
                                  const Color(0xff707070)),
                            ),
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            child: Icon(
                              IconlyLight.plus,
                              color: AppColor.white,
                              size: 24,
                            ),
                            decoration: BoxDecoration(
                              color: AppColor.main,
                              borderRadius:
                              BorderRadius.circular(3.0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: AppColor.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'اللغات',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.b10000d,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  myDivider(),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment:
                        AlignmentDirectional.centerStart,
                        child: Text(
                          'المهارات الشخصية',
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 14,
                            color: AppColor.main,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 165,
                            height: 48,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Text(
                                  'العربية',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor
                                        .grayishblue99a0aa,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  IconlyLight.arrow_down_2,
                                  size: 20,
                                  color: AppColor
                                      .grayishblue99a0aa,
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius:
                              BorderRadius.circular(3.0),
                              border: Border.all(
                                  width: 0.25,
                                  color:
                                  const Color(0xff707070)),
                            ),
                          ),
                          Container(
                            width: 84,
                            height: 48,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Text(
                                  'متوسط',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor
                                        .grayishblue99a0aa,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  IconlyLight.arrow_down_2,
                                  size: 20,
                                  color: AppColor
                                      .grayishblue99a0aa,
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius:
                              BorderRadius.circular(3.0),
                              border: Border.all(
                                  width: 0.25,
                                  color:
                                  const Color(0xff707070)),
                            ),
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            child: Icon(
                              IconlyLight.plus,
                              color: AppColor.white,
                              size: 24,
                            ),
                            decoration: BoxDecoration(
                              color: AppColor.main,
                              borderRadius:
                              BorderRadius.circular(3.0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 165,
                            height: 48,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Text(
                                  'الإنجليزية',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor
                                        .grayishblue99a0aa,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  IconlyLight.arrow_down_2,
                                  size: 20,
                                  color: AppColor
                                      .grayishblue99a0aa,
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius:
                              BorderRadius.circular(3.0),
                              border: Border.all(
                                  width: 0.25,
                                  color:
                                  const Color(0xff707070)),
                            ),
                          ),
                          Container(
                            width: 84,
                            height: 48,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Text(
                                  'متوسط',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor
                                        .grayishblue99a0aa,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  IconlyLight.arrow_down_2,
                                  size: 20,
                                  color: AppColor
                                      .grayishblue99a0aa,
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius:
                              BorderRadius.circular(3.0),
                              border: Border.all(
                                  width: 0.25,
                                  color:
                                  const Color(0xff707070)),
                            ),
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            child: Icon(
                              IconlyLight.plus,
                              color: AppColor.white,
                              size: 24,
                            ),
                            decoration: BoxDecoration(
                              color: AppColor.main,
                              borderRadius:
                              BorderRadius.circular(3.0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              child:ListView.builder(itemBuilder: (contex,index){
                return  Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: defauContainer(
                    onPressed: (){
                      SocialCubit.get(context).updateUser(
                          firstname: firstController.text,
                          lastName: lastController.text,
                          city: cityController.text,
                          country: countryController.text,
                          phone: phoneController.text,
                          jopTitle: jobTitleController.text,
                          url: urlController.text
                      );
                      // if(  CvPostCubit.get(context).postsList[index].values.single.postId == UId )
                      //   CvPostCubit.get(context).updatePost(firstname: firstController.text, lastName: lastController.text );
                      // print(
                      //
                      //     CvPostCubit.get(context).postsList[index].values.single.postId);
                      // print(CacheHelper.sharedPreferences!.getString('PostId'));
                      // print("******************************************");
                      // print("3");

                    },
                    text: "حفظ التغييرات",
                    borderRadius: 3,
                    height: 38,
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.white,
                    ),
                  ),
                );

              }) ,),
            SizedBox(
              height: 30,
            ),

          ],
        ),
      )
      ;
  }
    );}
}

