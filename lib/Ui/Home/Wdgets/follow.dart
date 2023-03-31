import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget follow() {
  return
    Container(
    width: 112,
    height: 138,
    decoration: BoxDecoration(
      color: const Color(0xffffffff),
      borderRadius: BorderRadius.circular(6.0),
    ),
    child: Column(children: [
      SizedBox(height: 15),
      CircleAvatar(radius: 15,
      backgroundImage: AssetImage("assets/images/logocomp.jpg"),
      ),
      SizedBox(height: 10),


      Text(
        'اسم الشركة',
        style: TextStyle(
          fontFamily: 'Tajawal',
          fontSize: 10,
          color: const Color(0xff10000d),
          fontWeight: FontWeight.w500,
        ),
        softWrap: false,
      ),
      SizedBox(height: 6),

      Text(
        'UX UI Designer',
        style: TextStyle(
          fontFamily: 'Tajawal',
          fontSize: 6,
          color: const Color(0xff99a0aa),
          fontWeight: FontWeight.w500,
        ),
        softWrap: false,
      ),
      SizedBox(height: 6),

      Text(
        '20 موظف',
        style: TextStyle(
          fontFamily: 'Tajawal',
          fontSize: 8,
          color: const Color(0xff99a0aa),
          fontWeight: FontWeight.w500,
        ),
        softWrap: false,
      ),
      SizedBox(height: 6),

      Container(
        alignment: Alignment.center,
        height: 17,
        width: 87,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          border: Border.all(width: 1.0, color: const Color(0xe326b888)),
        ),child:  Text(
        'متابعة',
        style: TextStyle(
          fontFamily: 'Tajawal',
          fontSize: 7,
          color: const Color(0xff26b888),
        ),
        softWrap: false,
      ),
      )
    ]),
  );
}

//Stack(
//     children: <Widget>[
//       Container(
//         height: 220,
//         width: 300,
//         decoration: BoxDecoration(
//           color: const Color(0xffffffff),
//           borderRadius: BorderRadius.circular(6.0),
//         ),
//       ),
//       Align(
//         alignment: Alignment(-0.037, -0.081),
//         child: SizedBox(
//           width: 46.0,
//           height: 14.0,
//           child: Text(
//             'اسم الشركة',
//             style: TextStyle(
//               fontFamily: 'Tajawal',
//               fontSize: 10,
//               color: const Color(0xff10000d),
//               fontWeight: FontWeight.w500,
//             ),
//             softWrap: false,
//           ),
//         ),
//       ),
//       Align(
//         alignment: Alignment(0.104, 0.165),
//         child: SizedBox(
//           width: 54.0,
//           height: 11.0,
//           child: Text(
//             'UX UI Designer',
//             style: TextStyle(
//               fontFamily: 'Tajawal',
//               fontSize: 8,
//               color: const Color(0xff99a0aa),
//               fontWeight: FontWeight.w500,
//             ),
//             softWrap: false,
//           ),
//         ),
//       ),
//       Align(
//         alignment: Alignment(0.051, 0.386),
//         child: SizedBox(
//           width: 34.0,
//           height: 11.0,
//           child: Text(
//             '20 موظف',
//             style: TextStyle(
//               fontFamily: 'Tajawal',
//               fontSize: 8,
//               color: const Color(0xff99a0aa),
//               fontWeight: FontWeight.w500,
//             ),
//             softWrap: false,
//           ),
//         ),
//       ),
//
//          Stack(
//           children: <Widget>[
//             Stack(
//               children: <Widget>[
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(3.0),
//                     border:
//                     Border.all(width: 1.0, color: const Color(0xe326b888)),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment(0.014, 0.111),
//                   child: SizedBox(
//                     width: 16.0,
//                     height: 8.0,
//                     child: Text(
//                       'متابعة',
//                       style: TextStyle(
//                         fontFamily: 'Tajawal',
//                         fontSize: 6,
//                         color: const Color(0xff26b888),
//                       ),
//                       softWrap: false,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//
//     Stack(
//           children: <Widget>[
//             Container(
//               height: 20,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: const AssetImage(''),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               margin: EdgeInsets.fromLTRB(-4.7, -3.0, -1.4, -3.2),
//             ),
//             SizedBox.expand(
//                 child: SvgPicture.string(
//                   '<svg viewBox="0.0 0.0 40.0 40.0" ><path  d="M 20 0 C 31.04569625854492 0 40 8.954304695129395 40 20 C 40 31.04569435119629 31.04569625854492 40 20 40 C 8.954303741455078 40 0 31.04569435119629 0 20 C 0 8.954304695129395 8.954303741455078 0 20 0 Z" fill="#f2f2f3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
//                   allowDrawingOutsideViewBox: true,
//                   fit: BoxFit.fill,
//                 )),
//           ],
//         ),
//Stack(
//     children: <Widget>[
//       Stack(
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(3.0),
//               border: Border.all(width: 1.0, color: const Color(0xe326b888)),
//             ),
//           ),
//           Align(
//             alignment: Alignment(0.014, 0.111),
//             child: SizedBox(
//               width: 16.0,
//               height: 8.0,
//               child: Text(
//                 'متابعة',
//                 style: TextStyle(
//                   fontFamily: 'Tajawal',
//                   fontSize: 6,
//                   color: const Color(0xff26b888),
//                 ),
//                 softWrap: false,
//               ),
//             ),
//           ),
//         ],
//       ),
//     ],
//   )
//
//     ],
//   )
