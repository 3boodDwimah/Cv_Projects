

import 'package:cv/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
final bool isSender = true;

class Chats_Screen extends StatefulWidget {
  const Chats_Screen({Key? key}) : super(key: key);

  @override
  State<Chats_Screen> createState() => _Chats_ScreenState();
}

class _Chats_ScreenState extends State<Chats_Screen> {
  @override
  Widget build(BuildContext context) {
    bool stateTick = false;
    Icon? stateIcon;


    return  Scaffold(body: SafeArea(child:
    Center(
      child: Row(
        children: [

          Stack(
            children: [
              SvgPicture.asset("assets/images/Bg.svg"),

            ],
          ),
          SizedBox(width: 0.2,),
          // Image.asset("assets/images/Bg.png"),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            height: 74,
            decoration: BoxDecoration(
                color:AppColor.main.withOpacity(.28),
              borderRadius: BorderRadius.only(topLeft:Radius.circular(5),bottomLeft:Radius.circular(5))
            ),
            child: Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
          ),

        ],
      ),
    ))
    );
  }
}
