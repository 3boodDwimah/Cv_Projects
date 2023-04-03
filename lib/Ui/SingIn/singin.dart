import 'package:cv/Ui/NavBar/navbar.dart';
import 'package:cv/Ui/SingUp/singup.dart';
import 'package:cv/bloc/cubit_login/cubit.dart';
import 'package:cv/bloc/cubit_singin/cubit.dart';
import 'package:cv/bloc/cubit_singin/states.dart';
import 'package:cv/core/cache_helper.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingIn extends StatelessWidget {
  SingIn({Key? key}) : super(key: key);

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var password = true;

  @override
  Widget build(BuildContext context) {
    return
    BlocProvider(
    create: (BuildContext context) => CvSingInCubit(),
child:BlocConsumer<CvSingInCubit,CvSingInStates>(
  listener: (context, state) {
    if (state is CvSingInErrorState) {
      showToast(text: state.error, state: ToastStates.ERROR);
    }
    if (state is CvSingInSuccessState) {
      CacheHelper.saveData(key: 'uid', value: state.uid).then((value) {
        navigateAndFinish(context, NavBarLayout());
      });
    }
  },
  builder: (context, state) {
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    'SkillFull',
                    style: TextStyle(
                      fontFamily: 'Houstone',
                      fontSize: 35,
                      color: const Color(0xff26b888),
                      letterSpacing: 0.35000000000000003,
                      height: 0.6514286041259766,
                    ),
                    textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    " مرحبا بعودتك",
                    style: TextStyle(
                        fontSize: 20,
                        color: AppColor.p200E32,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "تسجيل الدخول إلى حسابك",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff99A0AA),
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  defaultFormField(
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      hint: "ادخل البريد الإلكتروني أو اسم المستخدم",
                      hintStyle: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff99A0AA))),
                  SizedBox(
                    height: 25,
                  ),
                  defaultFormField(
                      controller: passwordController,
                      type: TextInputType.visiblePassword,
                      hint: "ادخل كلمة المرور ",
                      hintStyle: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff99A0AA))),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "هل نسيت كلمة المرور؟",
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 14,
                        color: AppColor.mulledWine55,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  defauContainer(
                    onPressed: (){
                      if (formKey.currentState!.validate()) {
                        CvSingInCubit.get(context).userLogin(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                      }
                    //  navigateAndFinish(context, NavBarLayout());
                    },
                    height: 52,
                    text: "تسجيل دخول",
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 15,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ليس لديك حساب؟ ',
                        style: TextStyle(
                            fontSize: 15,
                            color: AppColor.p200E32,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w400),
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SingUP()));
                        },
                        child: Text(
                          'إنشاء حساب جديد',
                          style: TextStyle(
                              fontSize: 15,
                              color: AppColor.main,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      // )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  },
) ,

    );

  }
}
//Text(
//                           'إبدأ الآن',
//                           style: TextStyle(
//                             fontFamily: 'Tajawal',
//                             fontSize: 14,
//                             color: const Color(0xffffffff),
//                             fontWeight: FontWeight.w500,
//                           ),
//                           softWrap: false,
//                         )
