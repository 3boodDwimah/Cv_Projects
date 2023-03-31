import 'package:cv/Ui/SingIn/singin.dart';
import 'package:cv/Ui/SingUp/singup.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class Onborading extends StatefulWidget {
  const Onborading({Key? key}) : super(key: key);

  @override
  State<Onborading> createState() => _OnboradingState();
}

class _OnboradingState extends State<Onborading> {
  int Dot = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          leadingWidth: 90,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColor.main,
          ),
          elevation: 0,
          backgroundColor: AppColor.main,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          toolbarHeight: 88,
          flexibleSpace: SafeArea(
            child: SvgPicture.asset(
              'assets/images/appbarpoint.svg',

              fit: BoxFit.cover,
            ),
          ),
        ),
        body: SafeArea(
            child: Stack(children: [
          PageView.builder(
              onPageChanged: (int index) {
                setState(() {
                  Dot = index;
                });
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: Column(children: [
                      SizedBox(
                        height: 70,
                      ),
                      Center(
                          child: Container(
                        child: Image.asset(
                          (Dot == 0)
                              ? ("assets/images/onborading1.png")
                              : (Dot == 1)
                                  ? ("assets/images/onborading2.png")
                                  : ("assets/images/onborading3.png"),
                        ),
                      )),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Column(children: [
                          Container(
                              child: Text(
                            (Dot == 0)
                                ? ("ابحث عن الوظيفة التي تناسبك")
                                : (Dot == 1)
                                    ? ("قم بتعئبة سيرتك الذاتية")
                                    : ("طور مهاراتك"),
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 16,
                              color: AppColor.b10000d,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          )),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              child: Text(
                            (Dot == 0)
                                ? (" ابحث عن الوظيفة التي تناسب وقتك ومهاراتك وقم بالتقديم \n لها بدون جهد")
                                : (Dot == 1)
                                    ? ("قم بإضافة بياناتك ومهاراتك مع ميزة انه يمكنك التعريف\n عن نفسك عن طريق فيديو")
                                    : ("من خلال المسارات التعليمة الموجود في التطبيق يمكنك \nتطوير مهاراتك زيادة فرصتك بالتوظيف"),
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 13,
                              color: AppColor.mulledWine55,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          )),
                        ]),
                      ),
                    ]));
              }),
          Positioned(
              bottom: 00,
              right: 25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                          height: (Dot == 0)
                              ? 8.9
                              : (Dot == 1)
                                  ? 8.9
                                  : 0,
                          width: (Dot == 0)
                              ? 30.9
                              : (Dot == 1)
                                  ? 8.9
                                  : 0,
                          decoration: BoxDecoration(
                              color: (Dot == 0)
                                  ? AppColor.main
                                  : (Dot == 1)
                                      ? AppColor.linkWaterD0D6E0
                                      : AppColor.linkWaterD0D6E0,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)))),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        height: (Dot == 0)
                            ? 8.9
                            : (Dot == 1)
                                ? 8.9
                                : 0,
                        width: (Dot == 0)
                            ? 8.9
                            : (Dot == 1)
                                ? 30.9
                                : 0,
                        decoration: BoxDecoration(
                            color: (Dot == 0)
                                ? AppColor.linkWaterD0D6E0
                                : (Dot == 1)
                                    ? AppColor.main
                                    : AppColor.linkWaterD0D6E0,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                          height: (Dot == 0)
                              ? 8.9
                              : (Dot == 1)
                                  ? 8.9
                                  : 0,
                          width: (Dot == 0)
                              ? 8.0
                              : (Dot == 1)
                                  ? 8.9
                                  : 0,
                          decoration: BoxDecoration(
                            color: (Dot == 0)
                                ? AppColor.linkWaterD0D6E0
                                : (Dot == 1)
                                    ? AppColor.linkWaterD0D6E0
                                    : AppColor.main,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              )),
          Positioned(
            bottom: 30,
            left: 20,
            child: (Dot == 0 || Dot == 1)
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        Dot = Dot + 1;
                        print(Dot);
                      });
                      if (Dot == 3) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => SingUP()),
                        );
                      }
                    },
                    child: Container(
                      width: 45,
                      height: 40,
                      decoration: BoxDecoration(
                          color: AppColor.main,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        IconlyLight.arrow_left,
                        color: AppColor.white,
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => SingIn()),
                        );
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 48,
                      child: defauContainer(
                        margin: EdgeInsetsDirectional.only(start: 40),
                        height: 48,
                        text: "إبدأ الآن ",
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 15,
                          color: AppColor.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
          ),
        ])));
  }
}
