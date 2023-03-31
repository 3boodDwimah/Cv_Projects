import 'package:cv/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class OptionsScreen11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 13,vertical: 13),
                  decoration: BoxDecoration(
                    color: AppColor.white,
borderRadius: BorderRadius.circular(5)
                  ),
                  height: 138,
                  width: 285,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("الترجمة التلقائية",
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Color(0xff000000),
                  ),
                  softWrap: false,
                ),
                      SizedBox(height: 9,),
                      Text("00:1  - 00:20", style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff1D9BD8),
                      ),
                  softWrap: false,
                ),
                      SizedBox(height: 5,),

                      Container(
                        width: 240,
                        height: 60,
                        child: Text("هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها." ,
                          style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color(0xff200E32),
                        ),
          ),
                      ),
                    ],
                  ),
                ),
                Spacer(),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    CircleAvatar(
                      backgroundColor: AppColor.white,
                      radius: 18,
                      child: IconButton(
                        onPressed: () {},
                         icon: SvgPicture.asset("assets/images/notes.svg",
                           height: 30),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),   CircleAvatar(
                      backgroundColor: AppColor.white,
                      radius: 19,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          IconlyLight.chat,
                          color: AppColor.main,
                          size: 23,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),

                    CircleAvatar(
                      backgroundColor: AppColor.white,
                      radius: 19,
                      child: IconButton(
                        onPressed: () {},
                          icon: Icon(Icons.insert_link_sharp,color: AppColor.main,size: 23,),
                     //   icon: SvgPicture.asset("assets/images/notes.svg",
                          //  color: AppColor.main, height: 30),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
