import 'package:cv/Ui/Home/Wdgets/corporate_updates.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Filses extends StatefulWidget {
  const Filses({Key? key}) : super(key: key);

  @override
  State<Filses> createState() => _FilsesState();
}

List<String> items2 = [
  "الكل",
  "المنشورات",
  "الفيديوهات",
  "الريلز",
  "روابط",
];

int current2 = 0;

var nameController = TextEditingController();

class _FilsesState extends State<Filses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.backgroundColorF3,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),

            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: SafeArea(
                  child: Column(children: [
                    const SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: items2.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      current2 = index;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    margin:
                                    const EdgeInsetsDirectional.only(start: 15),
                                    padding: const EdgeInsetsDirectional.only(
                                        top: 4, bottom: 4, start: 13, end: 13),
                                    height: 33,
                                    decoration: BoxDecoration(
                                      color: current2 == index
                                          ? AppColor.main
                                          : AppColor.white,
                                      borderRadius: current2 == index
                                          ? BorderRadius.circular(5)
                                          : BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        items2[index],
                                        style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: current2 == index
                                                ? AppColor.white
                                                : AppColor.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                    current2 == 0
                        ? Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          postWidget(context,0),
                          SizedBox(height: 20,),
                          postWidget(context,0),
                          SizedBox(height: 20,),


                        ],
                      ),
                    )
                        : Container(),
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}

