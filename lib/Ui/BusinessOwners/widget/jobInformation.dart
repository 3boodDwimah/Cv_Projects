import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:cv/core/string.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class JopInformation extends StatelessWidget {
  JopInformation({Key? key}) : super(key: key);

  var typeJopController = TextEditingController();
  var  countryController= TextEditingController();
  var permanenceTypeController = TextEditingController();
  var phoneController = TextEditingController();
  var numberHourController = TextEditingController();
  var rangInHourController = TextEditingController();
  var salaryController = TextEditingController();
  var educationLevelController = TextEditingController();
  var skillLevelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // return BlocConsumer<SocialCubit, SocialStates>(
    //     listener: (context, state) {},
    //     builder: (context, state) {
    //

    return SingleChildScrollView(
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
                Container(
                    padding: EdgeInsets.only(right: 5),
                    width: MediaQuery.of(context).size.width,
                    child: CustomText(
                      text: "نوع الوظيفة",
                      fontSize: 14,
                      textAlign: TextAlign.start,
                    )),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                    hintStyle: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.linkWaterD0D6E0,
                    ),
                    hint: "دوام كامل",
                    color: AppColor.white,
                    controller: typeJopController,
                    type: TextInputType.name),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.only(right: 5),
                    width: MediaQuery.of(context).size.width,
                    child: CustomText(
                      text: "الدولة",
                      fontSize: 14,
                      textAlign: TextAlign.start,
                    )),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                    hintStyle: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.linkWaterD0D6E0,
                    ),
                    hint: "الإمارات العربية المتحدة",
                    color: AppColor.white,
                    controller: countryController,
                    type: TextInputType.name),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.only(right: 5),
                    width: MediaQuery.of(context).size.width,
                    child: CustomText(
                      text: "نوع الدوام",
                      fontSize: 14,
                      textAlign: TextAlign.start,
                    )),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                    hintStyle: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.linkWaterD0D6E0,
                    ),
                    hint: 'عن بعد',
                    color: AppColor.white,
                    controller: permanenceTypeController,
                    type: TextInputType.name),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.only(right: 5),
                    width: MediaQuery.of(context).size.width,
                    child: CustomText(
                      text: "عدد الساعات / الأسبوع",
                      fontSize: 14,
                      textAlign: TextAlign.start,
                    )),
                SizedBox(
                  height: 10,
                ),

                defaultFormField(
                    hint: "50",
                    hintStyle: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.linkWaterD0D6E0,
                    ),
                    color: AppColor.white,
                    controller: numberHourController,
                    type: TextInputType.name),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.only(right: 5),
                    width: MediaQuery.of(context).size.width,
                    child: CustomText(
                      text: "معدل الساعة / \$ ",
                      fontSize: 14,
                      textAlign: TextAlign.start,
                    )),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                    hint: "20",
                    hintStyle: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.linkWaterD0D6E0,
                    ),
                    color: AppColor.white,
                    controller: rangInHourController,
                    type: TextInputType.name),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.only(right: 5),
                    width: MediaQuery.of(context).size.width,
                    child: CustomText(
                      text: "الراتب",
                      fontSize: 14,
                      textAlign: TextAlign.start,
                    )),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                    hint: "800 - 1000 \$",
                    hintStyle: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.linkWaterD0D6E0,
                    ),
                    color: AppColor.white,
                    controller: salaryController,
                    type: TextInputType.name),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.only(right: 5),
                    width: MediaQuery.of(context).size.width,
                    child: CustomText(
                      text: "مستوى التعليم",
                      fontSize: 14,
                      textAlign: TextAlign.start,
                    )),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                    hintStyle: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.linkWaterD0D6E0,
                    ),
                    hint: "بكالوريس",
                    color: AppColor.white,
                    controller: educationLevelController,
                    type: TextInputType.name),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.only(right: 5),
                    width: MediaQuery.of(context).size.width,
                    child: CustomText(
                      text: "مستوى الخبرة",
                      fontSize: 14,
                      textAlign: TextAlign.start,
                    )),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                    hintStyle: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.linkWaterD0D6E0,
                    ),
                    hint: "متوسط (3- 4 سنوات)",
                    color: AppColor.white,
                    controller: skillLevelController,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: defauContainer(
                text: "التالي",
                borderRadius: 5,
                style: TextStyle(color: AppColor.white,fontSize: 14,fontFamily: 'Tajawal'),
                height: 38,
                width: MediaQuery.of(context).size.width),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
//  );}
}
