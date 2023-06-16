import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class LecturesScreen extends StatefulWidget {
  const LecturesScreen({Key? key}) : super(key: key);

  @override
  State<LecturesScreen> createState() => _LecturesScreenState();
}

class _LecturesScreenState extends State<LecturesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 16,
                        width: 1,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: AppColor.linkWaterD0D6E0),
                            borderRadius: BorderRadius.circular(40)),
                        child: Icon(
                          IconlyLight.video,
                          size: 30,
                          color: AppColor.main,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        top: 20.0, start: 15),
                    child: Text("اسم الدرس "),
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 22,
                        width: 1,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: AppColor.linkWaterD0D6E0),
                            borderRadius: BorderRadius.circular(40)),
                        child: Icon(
                          IconlyLight.video,
                          size: 30,
                          color: AppColor.main,
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 1,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        bottom: 15.0, start: 15),
                    child: Text("اسم الدرس "),
                  ),
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsetsDirectional.only(start: 19.5),
                        height: 20,
                        width: 01,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsetsDirectional.only(start: 20),
                            width: 50,
                            height: 01,
                            color: AppColor.linkWaterD0D6E0,
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: AppColor.linkWaterD0D6E0),
                                borderRadius: BorderRadius.circular(40)),
                            child: SvgPicture.asset('assets/images/quastion.svg')
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                bottom: 0.0, start: 15),
                            child: Text("اختبار قصير"),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsetsDirectional.only(
                            top: 10.0, start: 19.5),
                        height: 55,
                        width: 1,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsetsDirectional.only(start: 19.5),
                        height: 20,
                        width: 01,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsetsDirectional.only(start: 20),
                            width: 50,
                            height: 01,
                            color: AppColor.linkWaterD0D6E0,
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: AppColor.linkWaterD0D6E0),
                                borderRadius: BorderRadius.circular(40)),
                              child: SvgPicture.asset('assets/images/wrod.svg')
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                bottom: 0.0, start: 15),
                            child: Text(" مصادر الدرس"),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsetsDirectional.only(
                            top: 10.0, start: 19.5),
                        height: 35,
                        width: 1,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 16,
                        width: 1,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: AppColor.linkWaterD0D6E0),
                            borderRadius: BorderRadius.circular(40)),
                        child: Icon(
                          IconlyLight.video,
                          size: 30,
                          color: AppColor.main,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        top: 20.0, start: 15),
                    child: Text("اسم الدرس "),
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 16,
                        width: 1,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: AppColor.linkWaterD0D6E0),
                            borderRadius: BorderRadius.circular(40)),
                        child: Icon(
                          IconlyLight.video,
                          size: 30,
                          color: AppColor.main,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        top: 20.0, start: 15),
                    child: Text("اسم الدرس "),
                  )
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsetsDirectional.only(start: 19.5),
                        height: 20,
                        width: 01,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsetsDirectional.only(start: 20),
                            width: 50,
                            height: 01,
                            color: AppColor.linkWaterD0D6E0,
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: AppColor.linkWaterD0D6E0),
                                borderRadius: BorderRadius.circular(40)),
                              child: SvgPicture.asset('assets/images/quastion.svg')
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                bottom: 0.0, start: 15),
                            child: Text("اختبار قصير"),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsetsDirectional.only(
                            top: 10.0, start: 19.5),
                        height: 55,
                        width: 1,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsetsDirectional.only(start: 19.5),
                        height: 20,
                        width: 01,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsetsDirectional.only(start: 20),
                            width: 50,
                            height: 01,
                            color: AppColor.linkWaterD0D6E0,
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: AppColor.linkWaterD0D6E0),
                                borderRadius: BorderRadius.circular(40)),
                              child: SvgPicture.asset('assets/images/wrod.svg')
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                bottom: 0.0, start: 15),
                            child: Text(" مصادر الدرس"),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsetsDirectional.only(
                            top: 10.0, start: 19.5),
                        height: 35,
                        width: 1,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 16,
                        width: 1,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: AppColor.linkWaterD0D6E0),
                            borderRadius: BorderRadius.circular(40)),
                        child: Icon(
                          IconlyLight.video,
                          size: 30,
                          color: AppColor.main,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        top: 20.0, start: 15),
                    child: Text("اسم الدرس "),
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 16,
                        width: 1,
                        color: AppColor.linkWaterD0D6E0,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: AppColor.linkWaterD0D6E0),
                            borderRadius: BorderRadius.circular(40)),
                        child: Icon(
                          IconlyLight.video,
                          size: 30,
                          color: AppColor.main,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        top: 20.0, start: 15),
                    child: Text("اسم الدرس "),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
