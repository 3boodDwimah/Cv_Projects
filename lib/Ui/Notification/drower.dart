import 'package:cv/Ui/Notification/Widget/image.dart';
import 'package:cv/Ui/Profiles/profilescreen.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

//
//   Widget Drawers(BuildContext context) {
//     return
//       Drawer(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                       height: 130,
//                       child: SvgPicture.asset(
//                         "assets/images/Drawer.svg",
//                         width: double.infinity,
//                         fit: BoxFit.contain,
//                       )),
//                   Positioned(
//                     bottom: 30,
//                     right: 20,
//                     child: Text(
//                       'القائمة ',
//                       style: TextStyle(
//                         fontFamily: 'Cairo',
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600,
//                         color: const Color(0xffffffff),
//                       ),
//                       textAlign: TextAlign.right,
//                     ),
//                   ),
//                 ],
//               ),
//               Positioned(
//                 child: ListTile(
//                   leading: Images(
//                     "assets/images/Group 17643.svg",
//                   ),
//                   title: Text("أحمد محمد "),
//                   subtitle: Text(
//                     "مصمم واجهات مستخدم",
//                     style: TextStyle(height: 0.9),
//                   ),
//                   trailing: GestureDetector(
//                     onTap: (){
//                       navigateAndFinish(context, Profile());
//                     },
//                     child: Container(
//                       height: 30,
//                       child: Icon(
//                         IconlyLight.arrow_left_2,
//                         color: AppColor.black,
//                       ),
//                       width: 30,
//                       decoration: BoxDecoration(
//                           color: Color(0xffF2F2F3),
//                           borderRadius: BorderRadius.circular(8)),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 11,),
//               myDivider(),
//               SizedBox(height: 11,),
//
//               drawer("العناصر المحفوظة", IconlyLight.bookmark),
//               SizedBox(
//                 height: 11,
//               ),
//               drawer("مركز المعلومات", IconlyLight.info_circle),
//               SizedBox(
//                 height: 11,
//               ),
//               drawer("الحاضنات", IconlyLight.folder),
//               SizedBox(
//                 height: 11,
//               ),
//               drawer("المجموعات", IconlyLight.user_1),
//               SizedBox(
//                 height: 11,
//               ),
//               drawer("الغرف الصوتية", IconlyLight.voice_2),
//               SizedBox(
//                 height: 11,
//               ),
//               drawer("غرف الفيديو", IconlyLight.video),
//               SizedBox(
//                 height: 11,
//               ),
//               drawer("المناسبات", IconlyLight.calendar),
//               SizedBox(
//                 height: 11,
//               ),
//               drawer("المساعدة والدعم", IconlyLight.user),
//               SizedBox(
//                 height: 11,
//               ),
//               drawer("الإعدادات والخصوصية", IconlyLight.setting),
//               SizedBox(
//                 height: 11,
//               ),
//               drawer("تسجيل الخروج", IconlyLight.logout),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//
Widget drawer(final String text, IconData? icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Column(
      children: [
        Row(
          children: [
            Icon(icon),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: const Color(0xff10000d),
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
        SizedBox(
          height: 17,
        ),
        myDivider()
      ],
    ),
  );
}
