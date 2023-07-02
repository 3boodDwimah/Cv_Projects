import 'package:cv/Ui/NavBar/navbar.dart';
import 'package:cv/Ui/SingUp/singup.dart';
import 'package:cv/bloc/cubit_navbar/cubit.dart';
import 'package:cv/bloc/cubit_navbar/states.dart';
import 'package:cv/bloc/cubit_singin/cubit.dart';
import 'package:cv/bloc/cubit_singin/states.dart';
import 'package:cv/core/cache_helper.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmailVreified extends StatelessWidget {
  EmailVreified({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
        create: (BuildContext context) => SocialCubit()..getUserData(),
        child:BlocConsumer<SocialCubit,SocialStates>(
          listener: (context, state) {
          },
          builder: (context, state) {
            var model = SocialCubit.get(context).user;


            return  Scaffold(
              backgroundColor: AppColor.white,
              appBar: AppBar(
                centerTitle: true,
                leadingWidth: 90,
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: AppColor.main,
                ),
                elevation: 0,
                backgroundColor: AppColor.main,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                toolbarHeight: 88,
                flexibleSpace: SafeArea(
                  child: SvgPicture.asset(
                    'assets/images/appbarpoint.svg',

                    fit: BoxFit.cover,
                  ),
                ),
              ),
              body:
              SocialCubit.get(context).user != null ?

              SafeArea(
                child:
                    
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                      (!FirebaseAuth.instance.currentUser!.emailVerified)?
                defauContainer(text: "Send"
                    ,style: TextStyle(color: AppColor.white)

                ,width: 80,
                  height: 80,
                  background: AppColor.main,
                  onPressed: (){
        //    SocialCubit.get(context).updateEmail("aboodha221005@gmail.com");
                    FirebaseAuth.instance.currentUser!.sendEmailVerification().then((value) => {
                      ToastStates.SUCCESS
                    }).catchError((error){});

                  }
                )
             :Container(height: 20,width: 30,color: AppColor.black,)
                ],),
            )
              ):Center(child: CircularProgressIndicator(),),
            );
          },
        ) ,

      );

  }
}
