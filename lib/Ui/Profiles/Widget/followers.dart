

import 'package:cv/Ui/Home/Wdgets/follow.dart';
import 'package:cv/Ui/Notification/Widget/image.dart';
import 'package:cv/core/colors.dart';
import 'package:flutter/material.dart';

Widget aaaa()=>

    Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Column(children: [

        SizedBox(height:10 ),
        Imagess("assets/images/photo_male_7.jpg"),
        SizedBox(height: 10),


        Text(
          'أمير محمد',
          style: TextStyle(
            fontFamily: 'Tajawal',
            fontSize: 13,
            color: const Color(0xff10000d),
            fontWeight: FontWeight.w500,
          ),
          softWrap: false,
        ),
        SizedBox(height: 3),

        Text(
          'UX UI Designer',
          style: TextStyle(
            fontFamily: 'Tajawal',
            fontSize: 12,
            color: const Color(0xff99a0aa),
            fontWeight: FontWeight.w500,
          ),
          softWrap: false,
        ),
        SizedBox(height: 1),

        Text(
          'Israa University ',
          style: TextStyle(
            fontFamily: 'Tajawal',
            fontSize: 12,
            color: const Color(0xff99a0aa),
            fontWeight: FontWeight.w500,
          ),
          softWrap: false,
        ),
        SizedBox(height: 9),

        Container(
          alignment: Alignment.center,
          width: 119,
          height: 26,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.0),
            border: Border.all(width: 1.0, color: const Color(0xe326b888)),
          ),child:  Text(
          'إلغاء المتابعة',
          style: TextStyle(
            fontFamily: 'Tajawal',
            fontSize: 9,
            fontWeight: FontWeight.w400,

            color: const Color(0xff26b888),
          ),
          softWrap: false,
        ),
        ),
      ],


      ),
    );
