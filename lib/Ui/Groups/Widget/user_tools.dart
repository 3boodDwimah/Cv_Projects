import 'package:cv/Ui/Groups/Widget/groupdetails.dart';
import 'package:cv/Ui/Home/Wdgets/corporate_updates.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';

class UserTools extends StatefulWidget {
  const UserTools({Key? key}) : super(key: key);

  @override
  State<UserTools> createState() => _UserToolsState();
}

List<String> items = [
  "طلبات العضوية",
  "المنشورات المعلقة",
  " المنشورات المجدولة",
];

int current = 0;
var nameController = TextEditingController();

class _UserToolsState extends State<UserTools> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10,),
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
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                current = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin:
                                  const EdgeInsetsDirectional.only(start: 15),
                              padding: const EdgeInsetsDirectional.only(
                                  top: 8, bottom: 8, start: 10, end: 10),
                              height: 33,
                              decoration: BoxDecoration(
                                color: current == index
                                    ? AppColor.main
                                    : AppColor.white,
                                borderRadius: current == index
                                    ? BorderRadius.circular(5)
                                    : BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                      fontFamily: 'Tajawal',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: current == index
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
              Stack(
                children: [
                  current == 0
                      ? Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width/2.3,
                                    child: defaultFormFieldWithOut(
                                        width: 0,
                                        controller: nameController,
                                        color: AppColor.bagroundColorF8,
                                        type: TextInputType.text,
                                        hint: " ابحث عن عضو ",
                                        hintStyle: const TextStyle(
                                          fontFamily: 'Cairo',
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400,
                                          color:AppColor.grayishblue99a0aa,
                                        )),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(6),
                                        color: const Color(0xffF3F4F8)),
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 10),
                                    child: const Text(
                                      "رفض الكل",
                                      style:  TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 12,
                                        color: AppColor.black,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(6),
                                        color: AppColor.main),
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 10),
                                    child: const Text(
                                      "موافقة على الكل",
                                      style:  TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 12,
                                        color: AppColor.white,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              admin(),
                              const SizedBox(
                                height: 15,
                              ),
                              admin(),
                              const SizedBox(
                                height: 15,
                              ),
                              admin(),
                              const SizedBox(
                                height: 15,
                              ),
                              admin(),
                              const SizedBox(
                                height: 15,
                              ),
                              admin(),
                              const SizedBox(
                                height: 15,
                              ),
                              admin(),
                            ],
                          ),
                        )
                      : current == 1
                          ? Container(
                              margin: const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                children: [
                                  // postWidget(context,0),
                                  // const SizedBox(
                                  //   height: 15,
                                  // ),
                                  // postWidget(context,0),
                                ],
                              ),
                            )
                          : Container(
                              margin: const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                children: [
                                  // postWidget(context,0),
                                  // const SizedBox(
                                  //   height: 15,
                                  // ),
                                  // postWidget(context,0),
                                ],
                              ),
                            )
                ],
              ),
            ])),
          ),
        ],
      ),
    );
  }
}
