


import 'package:cv/Ui/SingIn/singin.dart';
import 'package:cv/core/cache_helper.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';

class Chos extends StatelessWidget {

  const Chos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Center(
        child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          GestureDetector(onTap: (){
            CacheHelper.saveData(key: 'fi', value: 2);
            navigateTo(context, SingIn());
          },
          child: Container(
            alignment: Alignment.center,
            child:Text("User") ,height: 80,width: 110,color: AppColor.linkWaterD0D6E0,),
          ),
          SizedBox(height: 20,),
          // GestureDetector(onTap: (){
          //   CacheHelper.saveData(key: 'fi', value: 2);
          //   navigateTo(context, SingIn());
          //
          // },
          // child: Container(
          //   alignment: Alignment.center,
          //
          //   child:Text("Business Owner") ,height: 80,width: 110,color: AppColor.main,),
          // ),

        ]),
      )
      ),
    );
  }
}
