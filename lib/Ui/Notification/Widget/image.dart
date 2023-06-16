import 'package:cv/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget Images(
  String Images,
) {
  return Stack(children: [
    Container(
      height: 56,
      width: 56,
      child: Padding(
          padding: EdgeInsets.all(2.5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(Images),
          )),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(width: 2.5, color: AppColor.main),
      ),
    ),
    Positioned(
      left: 5,
      top: 0,
      child: Container(
        height: 11,
        width: 9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    Positioned(
      right: 5,
      bottom: 0,
      child: Container(
        height: 11,
        width: 9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    )
  ]);
}

Widget Imagepro(
  String Images,
) {
  return Stack(children: [
    Container(
      height: 55,
      width: 55,
      padding: EdgeInsets.all(2),
      child: CircleAvatar(backgroundImage: NetworkImage(Images)),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(width: 2.5, color: AppColor.white),
      ),
    ),
    Positioned(
      left: 5,
      top: 0,
      child: Container(
        height: 11,
        width: 9,
        decoration: BoxDecoration(
          color: AppColor.main,
          borderRadius: BorderRadius.circular(020),
        ),
      ),
    ),
    Positioned(
      right: 5,
      bottom: 0,
      child: Container(
        height: 11,
        width: 9,
        decoration: BoxDecoration(
          color: AppColor.main,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    )
  ]);
}

//
// ////////////////// حذف
// Widget Imagess(  String Images,
//     ) {
//   return Stack(children: [
//     Container(
//       height: 60,
//       width: 60,
//       child:
//       Padding(
//         padding: const EdgeInsets.all(2),
//         child:   CircleAvatar(backgroundImage: AssetImage(Images)),
//       )        ,
//       decoration: BoxDecoration(
//         color: Colors.transparent,
//         borderRadius: BorderRadius.circular(50),
//         border: Border.all(width: 2.5, color: AppColor.main),
//       ),
//     ),
//     Positioned(
//       left: 5,
//       top: 0,
//       child: Container(
//         height: 12,
//         width: 10,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     ),
//     Positioned(
//       right: 5,
//       bottom: 0,
//       child: Container(
//         height: 12,
//         width: 10,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     )
//   ]);
// }
//
