import 'package:cv/core/colors.dart';
import 'package:flutter/material.dart';

var a = 1;
var i = a;
var textController = TextEditingController();

// Widget postWidget(BuildContext context, final int state , PostModel postModel, index) {
//
//   return BlocConsumer<CvPostCubit, CvPostStates>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         var cubit = CvPostCubit.get(context).postImage;
//
//
//         return
//           SingleChildScrollView(
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
//                         const CircleAvatar(
//                           backgroundImage: AssetImage(
//                               "assets/images/logocomp.jpg"),
//                           radius: 20,
//                         ),
//                         const SizedBox(
//                           width: 5,
//                         ),
//                         Column(
//                           children:  <Widget>[
//                             SizedBox(
//                               height: 20,
//                             ),
//                             Text(
//                             "${postModel.firstname}" "${postModel.lastName}" ,
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
//                               child: Text("${postModel.dateTime}",
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
//                                     return
//                                       Container(
//                                           height: 230,
//                                           width: double.infinity,
//                                           decoration: BoxDecoration(
//                                             color: AppColor.white,
//                                             borderRadius: BorderRadius.only(
//                                               topLeft: Radius.circular(20.0),
//                                               topRight: Radius.circular(20.0),
//                                             ),
//                                             boxShadow: [
//                                               BoxShadow(
//                                                 color: const Color(0x3dc5c5c5),
//                                                 offset: Offset(0, -2),
//                                                 blurRadius: 10,
//                                               ),
//                                             ],
//                                           ),
//                                           child: Padding(
//                                               padding: EdgeInsets.fromLTRB(
//                                                   34.0, 20.0, 34.0, 00.0),
//                                               child: SizedBox.expand(
//                                                 child: Column(
//                                                   children: [
//                                                     bottomsheet("حفظ المنشور",
//                                                         IconlyLight.bookmark),
//                                                     bottomsheet(
//                                                         "إلغاء متابعة اسم الشركة",
//                                                         IconlyLight.profile),
//                                                     bottomsheet("إخفاء المنشور",
//                                                         IconlyLight
//                                                             .close_square),
//                                                     bottomsheet(
//                                                         "تشغيل الإشعارات لهذا الحساب",
//                                                         IconlyLight
//                                                             .notification),
//                                                   ],
//                                                 ),
//                                               )));
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
//                       heightFactor: 2,
//                       alignment: Alignment.centerRight,
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.pushReplacement(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => PublicationsScreen()));
//                         },
//                         child: const Text(
//                           'مجموعة التصميم',
//                           style: TextStyle(
//                             fontFamily: 'Tajawal',
//                             fontSize: 12,
//                             fontWeight: FontWeight.w400,
//                             color: AppColor.main,
//                           ),
//                           softWrap: false,
//                         ),
//                       ),
//                     ),
//                      Text("${postModel.text}",
//                       style: TextStyle(
//                         fontFamily: 'Tajawal',
//                         fontSize: 11,
//                         color: AppColor.mulledWine55,
//                       ),
//                       textAlign: TextAlign.right,
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
//                         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                             crossAxisCount: 4, childAspectRatio: .7 / .20),
//                         itemCount: i,
//                         itemBuilder: (context, index) {
//                           return GestureDetector(
//                             onTap: () {},
//                             child: const Padding(
//                               padding: EdgeInsets.all(5.0),
//                               child: Text(
//                                 '# لوريم_ابسوم',
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
//                     Stack(
//                       children: [
//                         SizedBox(
//                           height: 175,
//                           child: ListView(
//                             scrollDirection: Axis.horizontal,
//                             children: [
//                               Stack(
//                                 alignment: Alignment.center,
//                                 children: [
//                                   Image.asset('assets/images/post1.png'),
//                                 ],
//                               ),
//                               const SizedBox(
//                                 width: 15,
//                               ),
//                               Stack(
//                                 alignment: Alignment.center,
//                                 children: [
//                                   Image.asset('assets/images/post2.png'),
//                                 ],
//                               ),
//                               const SizedBox(
//                                 width: 15,
//                               ),
//                               Stack(
//                                 alignment: Alignment.center,
//                                 children: [
//                                   Image.asset(
//                                     'assets/images/post3.png',
//                                     width: 100,
//                                   ),
//                                   const Text(
//                                     "3+",
//                                     style: TextStyle(
//                                         fontSize: 20, color: AppColor.white),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         Positioned(
//                           right: 00,
//                           bottom: 0,
//                           child: Row(
//                             children: [
//                               CircleAvatar(
//                                 backgroundColor: AppColor.white,
//                                 radius: 18,
//                                 child: IconButton(
//                                   onPressed: () {},
//                                   icon: const Icon(
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
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       children: [
//                         Stack(children: [
//                           CircleAvatar(
//                             backgroundImage: AssetImage(
//                                 "assets/images/photo_female_5.jpg"),
//
//                             radius: 14,
//                           ),
//                           Padding(
//                               padding: EdgeInsets.only(right: 11.5),
//                               child: CircleAvatar(
//                                 backgroundImage: AssetImage(
//                                     "assets/images/photo_female_4.jpg"),
//
//                                 radius: 14,
//                               )),
//                           Padding(
//                               padding: EdgeInsets.only(right: 23.0),
//                               child: CircleAvatar(
//                                 backgroundImage: AssetImage(
//                                     "assets/images/photo_female_6.jpg"),
//
//                                 radius: 14,
//                               )),
//                           Padding(
//                               padding: EdgeInsets.only(right: 33.0),
//                               child: CircleAvatar(
//                                 backgroundImage: AssetImage(
//                                     "assets/images/photo_female_7.jpg"),
//
//                                 radius: 14,
//                               )),
//                           Padding(
//                               padding: EdgeInsets.only(right: 45.0),
//
//                               child: CircleAvatar(
//                                 backgroundImage: AssetImage(
//                                     "assets/images/photo_male_7.jpg"),
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
//                               children: const [
//                                 Padding(
//                                   padding: EdgeInsets.only(top: 8.0),
//                                   child: Text(
//                                     '1539',
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
//                                     '169',
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
//                                     '931',
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
//         //}
//       });
//
// }

Widget Comments() {
  return
    Column(
    children: [
      const SizedBox(
        height: 10,
      ),
      const Divider(
        color: AppColor.main,
      ),
      const SizedBox(
        height: 10,
      ),
      const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'الأراء',
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 12,
              color: AppColor.mulledWine55,
            ),
            textAlign: TextAlign.right,
          )),
      const SizedBox(
        height: 15,
      ),
      Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/photo_female_7.jpg"),
            radius: 12,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: const <Widget>[
              Text(
                'أميرة  محمد',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 10,
                  color: AppColor.mulledWine55,
                ),
                softWrap: false,
              ),
              Text(
                'منذ 2 دقائق',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 8,
                  fontWeight: FontWeight.w700,
                  color: AppColor.mulledWine55
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.more_horiz_outlined,
            color: AppColor.grayishblue99a0aa,
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 18.0, right: 28),
        child: SingleChildScrollView(
          primary: false,
          child: Text(
            'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 11,
              color: AppColor.b10000d,
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Padding(
        padding: const EdgeInsets.only(right: 28.0),
        child: Row(
          children: const [
            Icon(
              Icons.cached_sharp,
              color: AppColor.main,
              size: 21,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'تحميل المزيد من الأراء',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 12,
                color: AppColor.main,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      TextFormField(
          autocorrect: true,
          controller: textController,
          decoration: InputDecoration(
            disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: AppColor.linkWaterD0D6E0)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: AppColor.linkWaterD0D6E0)),
            filled: true,
            fillColor: AppColor.white,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
            hintText: 'اكتب تعليقك',
            prefixIcon: const Padding(
              padding: EdgeInsets.all(9.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/photo_female_6.jpg"),
                radius: 7,
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: AppColor.linkWaterD0D6E0,
                ),
                borderRadius: BorderRadius.circular(8.0)),
          )),
      const SizedBox(
        height: 20,
      )
    ],
  );
}
Color colo = AppColor.p200E32; //200E32
Widget bottomsheet(final String txet1, IconData? widget,) =>
    Column(children: [
      Row(
        children: [
          Icon(widget,color:colo,),
          SizedBox(
            width: 10,
          ),
          Text(
            txet1,
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 12,
              color: AppColor.black,
            ),
            textAlign: TextAlign.right,
          ),
        ],
      ),
      SizedBox(
        height: 8,
      ),
      Divider(
        color: AppColor.linkWaterD0D6E0,
      )
    ]);

Color colos = AppColor.main;
Widget bottomsheetm(final String txet1, IconData? widget,) =>
    Column(children: [
      Row(
        children: [
          Icon(widget,color:colos,),
          SizedBox(
            width: 10,
          ),
          Text(
            txet1,
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 12,
              color: AppColor.black,
            ),
            textAlign: TextAlign.right,
          ),
        ],
      ),
      SizedBox(
        height: 8,
      ),
      Divider(
        color: AppColor.linkWaterD0D6E0,
      )
    ]);
