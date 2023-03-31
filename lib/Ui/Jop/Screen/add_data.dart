import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

/////////////////////راتب ////////////////
class Add_Data extends StatefulWidget {
  const Add_Data({Key? key}) : super(key: key);

  @override
  State<Add_Data> createState() => _Add_DataState();
}

class _Add_DataState extends State<Add_Data> {
  var name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              "المسمى الوظيفي",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 9,
                height: 2,
                color: const Color(0xff10000d),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 10,
            ),
            defaultFormField(
                color: Color(0xffF3F4F8),
                controller: name,
                type: TextInputType.none,
                hint: ""),
            SizedBox(
              height: 10,
            ),
            Text(
              "التخصص",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 9,
                height: 2,
                color: const Color(0xff10000d),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 10,
            ),
            defaultFormField(
                color: Color(0xffF3F4F8),
                controller: name,
                hint: "تكنولوجيا المعلومات",
                type: TextInputType.none),
            SizedBox(
              height: 10,
            ),
            Text(
              "حدد المكان",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 9,
                height: 2,
                color: const Color(0xff10000d),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 10,
            ),
            defaultFormField(
                color: Color(0xffF3F4F8),
                controller: name,
                prefix: Icon(
                  IconlyLight.location,
                  size: 20,
                ),
                type: TextInputType.none),
            SizedBox(
              height: 10,
            ),
            Text(
              " تاريخ النشر",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 9,
                height: 2,
                color: const Color(0xff10000d),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 10,
            ),
            defaultFormField(
                color: Color(0xffF3F4F8),
                controller: name,
                hint: " حديثاَ",
                type: TextInputType.none),
            SizedBox(
              height: 10,
            ),
            Text(
              "  مستوى التعليم",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 9,
                height: 2,
                color: const Color(0xff10000d),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 10,
            ),
            defaultFormField(
                color: Color(0xffF3F4F8),
                controller: name,
                hint: " حديثاَ",
                type: TextInputType.none),
            SizedBox(
              height: 10,
            ),
            Text(
              " مستوى الخبرة",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 9,
                height: 2,
                color: const Color(0xff10000d),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 10,
            ),
            defaultFormField(
                color: Color(0xffF3F4F8),
                controller: name,
                hint: " خبير",
                type: TextInputType.none),
            SizedBox(
              height: 10,
            ),
            Text(
              " نوع الوظيفة",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 9,
                height: 2,
                color: const Color(0xff10000d),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
            Container(
              height: 38,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsetsDirectional.only(start: 5),
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 72,
                    height: 30,
                    decoration: BoxDecoration(
                        color: AppColor.snowFC,
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      "دوام جزئي",
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        color: const Color(0xff10000d),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 72,
                    height: 30,
                    decoration: BoxDecoration(
                        color: AppColor.snowFC,
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      "دوام كلي",
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        color: const Color(0xff10000d),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 101,
                    height: 30,
                    decoration: BoxDecoration(
                        color: AppColor.main,
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      "وظيفة عن بعد",
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                        color: AppColor.snowFC,
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      "عمل عن بعد",
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        color: const Color(0xff10000d),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 55,
                    height: 30,
                    decoration: BoxDecoration(
                        color: AppColor.snowFC,
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      "عقد",
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        color: const Color(0xff10000d),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 1.8,
              color: AppColor.main,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      "إلغاء",
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        color: AppColor.main,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    width: 85,
                    height: 32,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: AppColor.main,
                        ),
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(8))),
                SizedBox(
                  width: 7,
                ),
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      "بحث",
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    width: 60,
                    height: 32,
                    decoration: BoxDecoration(
                        color: AppColor.main,
                        borderRadius: BorderRadius.circular(8))),
              ],
            ),
          ],
        ),
        height: 750,
        width: double.infinity,
      ),
    );
  }
}
