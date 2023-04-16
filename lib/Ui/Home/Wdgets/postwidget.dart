//
// import 'package:cv/Ui/Home/Wdgets/corporate_updates.dart';
// import 'package:cv/modle/post.dart';
// import 'package:flutter/material.dart';
// import 'package:iconly/iconly.dart';
// import '../../../bloc/cubit_post/cubit.dart';
// import '../../../core/colors.dart';
//
// Widget postWidget(BuildContext context, final int state, PostModel postModel , index) {
//   return
//            SingleChildScrollView(
//             child: SafeArea(
//               child: Container(
//                 color: AppColor.white,
//                 padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
//                 child: Column(
//                   children: [
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       children: [
//                          CircleAvatar(
//                           backgroundImage:
//                           NetworkImage(postModel.image!),
//                           radius: 20,
//                         ),
//                         const SizedBox(
//                           width: 5,
//                         ),
//                         Column(
//                           children: <Widget>[
//                             SizedBox(
//                               height: 20,
//                             ),
//                             Text(
//                               "${postModel.firstname} ${postModel.lastName}",
//                               style: TextStyle(
//                                 fontFamily: 'Tajawal',
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w400,
//                                 color: AppColor.mulledWine55,
//                               ),
//                               textAlign: TextAlign.right,
//                             ),
//                             SizedBox(
//                               height: 6,
//                             ),
//                             Padding(
//                               padding: EdgeInsetsDirectional.only(start: 10),
//                               child: Text(
//                                 "${postModel.dateTime}",
//                                 style: TextStyle(
//                                   fontFamily: 'Tajawal',
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 11,
//                                   color: AppColor.grayishblue99a0aa,
//                                 ),
//                                 softWrap: false,
//                               ),
//                             ),
//                           ],
//                         ),
//                         const Spacer(),
//                         IconButton(
//                             onPressed: () {
//                               showBottomSheet(
//                                   enableDrag: true,
//                                   context: context,
//                                   builder: (BuildContext) {
//                                     return Container(
//                                         height: 230,
//                                         width: double.infinity,
//                                         decoration: BoxDecoration(
//                                           color: AppColor.white,
//                                           borderRadius: BorderRadius.only(
//                                             topLeft: Radius.circular(20.0),
//                                             topRight: Radius.circular(20.0),
//                                           ),
//                                           boxShadow: [
//                                             BoxShadow(
//                                               color: const Color(0x3dc5c5c5),
//                                               offset: Offset(0, -2),
//                                               blurRadius: 10,
//                                             ),
//                                           ],
//                                         ),
//                                         child: Padding(
//                                             padding: EdgeInsets.fromLTRB(
//                                                 34.0, 20.0, 34.0, 00.0),
//                                             child: SizedBox.expand(
//                                               child: Column(
//                                                 children: [
//                                                   bottomsheet("حفظ المنشور",
//                                                       IconlyLight.bookmark),
//                                                   bottomsheet(
//                                                       "إلغاء متابعة اسم الشركة",
//                                                       IconlyLight.profile),
//                                                   bottomsheet("إخفاء المنشور",
//                                                       IconlyLight.close_square),
//                                                   bottomsheet(
//                                                       "تشغيل الإشعارات لهذا الحساب",
//                                                       IconlyLight.notification),
//                                                 ],
//                                               ),
//                                             )));
//                                   });
//                             },
//                             icon: const Icon(
//                               Icons.more_horiz_rounded,
//                               color: AppColor.grayishblue99a0aa,
//                             ))
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Align(
//                       alignment: AlignmentDirectional.centerStart,
//                       child: Text(
//                         "${postModel.text}",
//                         style: TextStyle(
//                           fontFamily: 'Tajawal',
//                           fontSize: 11,
//                           color: AppColor.mulledWine55,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: (i > 0 && i <= 4)
//                           ? 22
//                           : (i > 4 && i <= 8)
//                           ? 40
//                           : (i > 8 && i <= 12)
//                           ? 65
//                           : 80,
//                       child: GridView.builder(
//                         physics: NeverScrollableScrollPhysics(),
//                         gridDelegate:
//                         const SliverGridDelegateWithFixedCrossAxisCount(
//                             crossAxisCount: 4, childAspectRatio: .7 / .20),
//                         itemCount: i,
//                         itemBuilder: (context, index) {
//                           return GestureDetector(
//                             onTap: () {},
//                             child: const Padding(
//                               padding: EdgeInsets.all(5.0),
//                               child: Text(
//                                 ' # لوريم_ابسوم',
//                                 style: TextStyle(
//                                   fontFamily: 'Tajawal',
//                                   fontSize: 11,
//                                   fontWeight: FontWeight.bold,
//                                   color: AppColor.main,
//                                 ),
//                                 softWrap: false,
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                     Container(
//                       height: 200.0,
//                       child: Stack(children: [
//                         if (postModel.postImage != "")
//                           Padding(
//                             padding: const EdgeInsetsDirectional.only(top: 15.0),
//                             child: Container(
//                               height: 170.0,
//
//                               width: MediaQuery.of(context).size.width / 1,
//                               // width: double.infinity,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(
//                                   4.0,
//                                 ),
//                                 image: DecorationImage(
//                                   image: NetworkImage(
//                                     '${postModel.postImage}',
//                                   ),
//                                   fit: BoxFit.fill,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         Positioned(
//                           right: 00,
//                           bottom: 0,
//                           child: Row(
//                             children: [
//                               CircleAvatar(
//                                 backgroundColor: AppColor.white,
//                                 radius: 18,
//                                 child: IconButton(
//                                   onPressed: () {
//                                     // CvPostCubit.get(context).updatePostLikes(
//                                     //     CvPostCubit.get(context)
//                                     //         .postsList[index]);
//                                   },
//
//                                   // onPressed: () {
//                                   //   print("object");
//                                   //
//                                   //
//                                   //   CvPostCubit.get(context)
//                                   //       .likePost(CvPostCubit.get(context).postsId[index]);
//                                   // },
//                                   icon:  Icon(
//
//
//                                     IconlyLight.heart,
//                                     color: Colors.red,
//                                     size: 22,
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 width: 6,
//                               ),
//                               CircleAvatar(
//                                 backgroundColor: AppColor.main,
//                                 radius: 18,
//                                 child: IconButton(
//                                   onPressed: () {},
//                                   icon: const Icon(
//                                     IconlyLight.chat,
//                                     color: AppColor.white,
//                                     size: 22,
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 width: 6,
//                               ),
//                               CircleAvatar(
//                                 backgroundColor: AppColor.main,
//                                 radius: 18,
//                                 child: IconButton(
//                                   onPressed: () {},
//                                   icon: const Icon(
//                                     Icons.share_outlined,
//                                     color: AppColor.white,
//                                     size: 20,
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 width: 6,
//                               ),
//                               CircleAvatar(
//                                 backgroundColor: AppColor.main,
//                                 radius: 18,
//                                 child: IconButton(
//                                   onPressed: () {},
//                                   icon: Icon(
//                                     color: AppColor.white,
//                                     size: 22,
//                                     Icons.insert_link_outlined,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ]),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       children: [
//                         Stack(children: [
//                           CircleAvatar(
//                             backgroundImage:
//                             AssetImage("assets/images/photo_female_5.jpg"),
//                             radius: 14,
//                           ),
//                           Padding(
//                               padding: EdgeInsets.only(right: 11.5),
//                               child: CircleAvatar(
//                                 backgroundImage: AssetImage(
//                                     "assets/images/photo_female_4.jpg"),
//                                 radius: 14,
//                               )),
//                           Padding(
//                               padding: EdgeInsets.only(right: 23.0),
//                               child: CircleAvatar(
//                                 backgroundImage: AssetImage(
//                                     "assets/images/photo_female_6.jpg"),
//                                 radius: 14,
//                               )),
//                           Padding(
//                               padding: EdgeInsets.only(right: 33.0),
//                               child: CircleAvatar(
//                                 backgroundImage: AssetImage(
//                                     "assets/images/photo_female_7.jpg"),
//                                 radius: 14,
//                               )),
//                           Padding(
//                               padding: EdgeInsets.only(right: 45.0),
//                               child: CircleAvatar(
//                                 backgroundImage:
//                                 AssetImage("assets/images/photo_male_7.jpg"),
//                                 radius: 14,
//                               )),
//                         ]),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Align(
//                               alignment: Alignment.topRight,
//                               child: Container(
//                                 padding: const EdgeInsets.only(right: 5),
//                                 child: const Text(
//                                   ' أحمد محمد\n و 5 أخرون أعجيهم ذلك',
//                                   style: TextStyle(
//                                     fontFamily: 'Tajawal',
//                                     fontSize: 9,
//                                     height: 1.5,
//                                     color: Color(0xff514d55),
//                                   ),
//                                   softWrap: false,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const Spacer(),
//                         Row(
//                           children: [
//                             Row(
//                               children:  [
//                                 Padding(
//                                   padding: EdgeInsets.only(top: 8.0),
//                                   child: Text(
//                                     '0',
//                                     style: TextStyle(
//                                       fontFamily: 'ITCHandelGothicArabic ☞',
//                                       fontSize: 12,
//                                       color: Color(0xff99a0aa),
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                     softWrap: false,
//                                   ),
//                                 ),
//                                 Icon(
//                                   IconlyLight.heart,
//                                   color: AppColor.grayishblue99a0aa,
//                                   size: 22,
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Row(
//                               children: const [
//                                 Padding(
//                                   padding: EdgeInsets.only(top: 8.0),
//                                   child: Text(
//                                     '0',
//                                     style: TextStyle(
//                                       fontFamily: 'ITCHandelGothicArabic ☞',
//                                       fontSize: 12,
//                                       color: Color(0xff99a0aa),
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                     softWrap: false,
//                                   ),
//                                 ),
//                                 Icon(
//                                   Icons.share_outlined,
//                                   color: AppColor.grayishblue99a0aa,
//                                   size: 22,
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Row(
//                               children: const [
//                                 Padding(
//                                   padding: EdgeInsets.only(top: 8.0),
//                                   child: Text(
//                                     '0',
//                                     style: TextStyle(
//                                       fontFamily: 'ITCHandelGothicArabic ☞',
//                                       fontSize: 12,
//                                       color: AppColor.grayishblue99a0aa,
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                     softWrap: false,
//                                   ),
//                                 ),
//                                 Icon(
//                                   IconlyLight.chat,
//                                   color: AppColor.grayishblue99a0aa,
//                                   size: 22,
//                                 ),
//                               ],
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                     (state == 1) ? Comments() : Container()
//                   ],
//                 ),
//               ),
//             ),
//           );
//           //}
//
// }
