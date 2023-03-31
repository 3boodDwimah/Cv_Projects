import 'package:cv/Ui/Home/Wdgets/corporate_updates.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:cv/core/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  var textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        centerTitle: true,
        title:   CustomText(
          text: "إنشاء منشور",
          fontFamily: "Tajawal",
          fontWeight: FontWeight.w400,
          fontSize: 13,
          colors: Colors.white,
        ),
        actions: [Container(
          alignment: AlignmentDirectional.center,
          margin: EdgeInsetsDirectional.only(end: 15,top: 8,bottom: 8),
          width: 70,height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            color: AppColor.white,

          ),
          child:  CustomText(
            text: "نشر",
            fontFamily: "Tajawal",
            fontWeight: FontWeight.w400,
            fontSize: 13,
            colors: AppColor.main,
          ),
        )],
        leadingWidth: 90,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.close,size: 34,color: AppColor.white,)),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColor.main,
        ),
        elevation: 0,
        backgroundColor: AppColor.main,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),


      ),

      body: SafeArea(
        child: Column(
          children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
          height: 413,width: double.infinity,
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 18),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColor.p200E32,
                      child: Icon(IconlyLight.user_1, size: 18),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'أحمد محمد ',
                          style: TextStyle(
                              fontSize: 12,
                              color: AppColor.black,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 8,
                        ),

                        Row(
                          children: [
                            Text('المتابعين',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: AppColor.black,
                                    fontFamily: 'Tajawal',
                                    fontWeight: FontWeight.w400)),

                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              IconlyLight.arrow_down_2,
                              size: 13,
                              color: AppColor.main,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          defaultFormFieldWithOut(controller: textController,
          color: AppColor.white,
            MaxLines: 10,
            hint: "ما الذي ترغب في نشره   ؟",
            hintStyle:
             TextStyle(
              fontSize: 9,
              color: AppColor.black,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w400)),


      ],),
        ),
            Positioned(
              bottom: 0,
              child: Container(
                  height: 270,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x3dc5c5c5),
                        offset: Offset(0, -2),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(34.0, 20.0, 34.0, 00.0),
                      child: SizedBox.expand(
                        child: Column(
                          children: [
                            bottomsheet(
                                "أضف صورة أو عدة صور", IconlyLight.folder),
                            bottomsheet("أضف فيديو", IconlyLight.video),
                            bottomsheet("قم بالإشارة إلى أصدقاء أو شركات",
                                IconlyLight.user),
                            bottomsheet("أنشى مناسبة", IconlyLight.calendar),
                            bottomsheet(
                                "شارك بحصولك على وظيفة", IconlyLight.work),
                          ],
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
