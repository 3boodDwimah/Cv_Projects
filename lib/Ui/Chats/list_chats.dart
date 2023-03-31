import 'package:cv/core/colors.dart';
import 'package:cv/core/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class List_Chat extends StatefulWidget {
  const List_Chat({Key? key}) : super(key: key);

  @override
  State<List_Chat> createState() => _List_ChatState();
}

class _List_ChatState extends State<List_Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColorF3,
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          text: "الدردشات",
          fontFamily: "Cairo",
          fontWeight: FontWeight.w600,
          fontSize: 15,
          colors: Colors.white,
        ),
        leadingWidth: 90,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColor.main,
        ),
        elevation: 0,
        actions: [
          Container(
              padding: EdgeInsetsDirectional.only(end: 10),
              child: SvgPicture.asset(
                "assets/images/iocnmune.svg",
                width: 26,
                height: 26,
              ))
        ],
        backgroundColor: AppColor.main,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        toolbarHeight: 55,
        flexibleSpace: SafeArea(
          child: SvgPicture.asset(
            'assets/images/appBar0.svg',
            fit: BoxFit.fill,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          return Container(
            height: 80,
            padding: EdgeInsets.symmetric(vertical: 5),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: AppColor.white,
            child: ListTile(

              leading: CircleAvatar(
                radius: 30,
              ),
              title: Text(
                'رامي محمد',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 14,
                  color: const Color(0xff200e32),
                ),
                textAlign: TextAlign.right,
                softWrap: false,
              ),
              subtitle:Text(
                ' مرحبا أحمد !',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 12,
                  color: const Color(0xff10000d),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.right,
                softWrap: false,
              ),

              trailing: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  children: [
                    Text(
                      '3 دقائق ',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        color: const Color(0xff99a0aa),
                      ),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 6,),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: AppColor.main,
                      child: Text("4",style: TextStyle(color: AppColor.white,fontSize: 14),),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
