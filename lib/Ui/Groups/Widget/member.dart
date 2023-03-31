import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';

var nameController = TextEditingController();

Widget member(BuildContext context) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
             const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/1.5,                  child: defaultFormFieldWithOut(
                      width: 0,
                      controller: nameController,
                      type: TextInputType.text,
                      color: AppColor.bagroundColorF8,
                      hint: " ابحث عن عضو ",
                      hintStyle:  const TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                        color: AppColor.grayishblue99a0aa,
                      )),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColor.main),
                  padding:  const EdgeInsets.symmetric(horizontal: 10),
                  child:  const Text(
                    "إضافة أعضاء",
                    style:   TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 12,
                      color: AppColor.white,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                 const SizedBox(
                  height: 25,
                ),
                const Align(
                  alignment: AlignmentDirectional.topStart,
                  child:  Text(
                    "المشرفون",
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColor.mulledWine55,
                    ),
                  ),
                ),
                 const SizedBox(
                  height: 10,
                ),
                dataMember(),
                 const SizedBox(
                  height: 10,
                ),
                dataMember(),
                 const SizedBox(
                  height: 10,
                ),
                dataMember(),
                 const SizedBox(
                  height: 10,
                ),
              ],
            ),
            Column(
              children: [
                 const SizedBox(
                  height: 25,
                ),
                 const Align(
                  alignment: AlignmentDirectional.topStart,
                  child:  Text(
                    "الأعضاء المميزون",
                    style:  TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColor.mulledWine55,
                    ),
                  ),
                ),
                 const SizedBox(
                  height: 10,
                ),
                dataMember(),
                 const SizedBox(
                  height: 10,
                ),
                dataMember(),
                 const SizedBox(
                  height: 10,
                ),
                dataMember(),
                 const SizedBox(
                  height: 10,
                ),
              ],
            ),
            Column(
              children: [
                 const SizedBox(
                  height: 25,
                ),
                const Align(
                  alignment: AlignmentDirectional.topStart,
                  child:  Text(
                    "كل الأعضاء",
                    style:   TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColor.mulledWine55,
                    ),
                  ),
                ),
                 const SizedBox(
                  height: 10,
                ),
                dataMember(),
                 const SizedBox(
                  height: 10,
                ),
                dataMember(),
                 const SizedBox(
                  height: 10,
                ),
                dataMember(),
                 const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );

Widget dataMember() {
  return Container(
    height: 57,
    padding: const EdgeInsets.symmetric(horizontal: 5),
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage("assets/images/photo_male_1.jpg"),
          radius: 23,
        ),
        SizedBox(
          width: 220,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
               SizedBox(
                height: 9,
              ),
               Text(
                "اسم الشخص",
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: AppColor.b10000d,
                ),
                textAlign: TextAlign.right,
              ),
               SizedBox(
                height: 5,
              ),
              Text(
                "UX UI Designer",
                style:  TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColor.p200E32,
                ),
              ),
               SizedBox(
                height: .5,
              ),
               Text(
                "تم الطلب 12/10/2021",
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColor.grayishblue99a0aa,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppColor.bagroundColorF8),
          child: const Icon(
            Icons.more_horiz_outlined,
            color:  AppColor.mulledWine55,
            size: 20,
          ),
        ),
      ],
    ),
  );
}
