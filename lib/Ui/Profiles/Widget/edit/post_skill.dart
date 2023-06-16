import 'package:cv/bloc/cubit_profile/cubit.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:cv/core/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

import '../../../../bloc/cubit_profile/states.dart';

class PostSkill extends StatelessWidget {
  var nameCompanyController = TextEditingController();
  var desTitleController = TextEditingController();
  var jobTitleController = TextEditingController();
  var universityNameController = TextEditingController();
  var dgreyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      BlocConsumer<EditProfileCubit, EditProfileStates>(
        listener: (context, state) {
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  color: AppColor.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          'الخبرة',
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
                          hint: "المسمى الوظيفي",
                          color: AppColor.white,
                          controller: jobTitleController,
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
                          hint: "اسم الشركة",
                          color: AppColor.white,
                          controller: nameCompanyController,
                          type: TextInputType.name),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              border: Border.all(
                                  width: 0.25, color: const Color(0xff707070)),
                              color: AppColor.white,
                            ),
                            height: 48,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'الخبرة',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.linkWaterD0D6E0,
                                  ),
                                ),
                                Icon(IconlyLight.arrow_down_2,
                                    size: 18,
                                    color: AppColor.grayishblue99a0aa),
                              ],
                            ),
                          ),
                          CustomText(
                            text: "إلى",
                            fontSize: 18,
                            colors: AppColor.linkWaterD0D6E0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              border: Border.all(
                                  width: 0.25, color: const Color(0xff707070)),
                              color: AppColor.white,
                            ),
                            height: 48,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.linkWaterD0D6E0,
                                  ),
                                ),
                                Icon(IconlyLight.arrow_down_2,
                                    size: 18,
                                    color: AppColor.grayishblue99a0aa),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      defaultFormField(
                          MaxLines: 6,
                          hintStyle: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.linkWaterD0D6E0,
                          ),
                          hint: 'الوصف الوظيفي',
                          color: AppColor.white,
                          controller: desTitleController,
                          type: TextInputType.name),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                              height: 24, width: 24, color: AppColor.main),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Text(
                              'ما زلت في هذه الوظيفة',
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 12,
                                color: const Color(0xff200e32),
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Spacer(),
                          Container(
                            width: 152,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xff26b888),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'أضف خبرة جديدة',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 14,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  softWrap: false,
                                )),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xfff2f2f3),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'حذف ',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                ),
                                softWrap: false,
                              ),
                            ),
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
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  color: AppColor.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          'التعليم',
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
                          hint: "الدرجة التعليمية",
                          color: AppColor.white,
                          controller: dgreyController,
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
                          hint: "اسم الجامعة",
                          color: AppColor.white,
                          controller: universityNameController,
                          type: TextInputType.name),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              border: Border.all(
                                  width: 0.25, color: const Color(0xff707070)),
                              color: AppColor.white,
                            ),
                            height: 48,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'سنوات الداراسة',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.linkWaterD0D6E0,
                                  ),
                                ),
                                Icon(IconlyLight.arrow_down_2,
                                    size: 17,
                                    color: AppColor.grayishblue99a0aa),
                              ],
                            ),
                          ),
                          CustomText(
                            text: "إلى",
                            fontSize: 18,
                            colors: AppColor.linkWaterD0D6E0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              border: Border.all(
                                  width: 0.25, color: const Color(0xff707070)),
                              color: AppColor.white,
                            ),
                            height: 48,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.linkWaterD0D6E0,
                                  ),
                                ),
                                Icon(IconlyLight.arrow_down_2,
                                    size: 17,
                                    color: AppColor.grayishblue99a0aa),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                              height: 24, width: 24, color: AppColor.main),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Text(
                              'ما زلت طالب',
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 12,
                                color: const Color(0xff200e32),
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Spacer(),
                          Container(
                            width: 152,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xff26b888),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'أضف مؤهل جديد',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 14,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  softWrap: false,
                                )),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xfff2f2f3),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'حذف ',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                ),
                                softWrap: false,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: defauContainer(
                    onPressed: () {
                      EditProfileCubit.get(context).createExperience(
                        desTitle: desTitleController.text,
                          jopTitle: jobTitleController.text,
                          companyName:nameCompanyController.text ,
                          time: "tisssssssssssme");
                      EditProfileCubit.get(context).createEducation(
                        degree:dgreyController.text ,
                          universityName: universityNameController.text,

                          time: "tisssssssssssme");
EditProfileCubit.get(context).createFollowers(
    followersImage: "followersImage", followersName: "followersName", followersID: "followersID", time: "time");
print("object");
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
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          );
        });
  }
}
