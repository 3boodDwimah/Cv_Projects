import 'package:cv/Ui/Home/Wdgets/corporate_updates.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:cv/core/string.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

Widget leaflets(BuildContext context) => SingleChildScrollView(
  physics: BouncingScrollPhysics(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),

        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              color: AppColor.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "أضف ",
                            hintStyle: TextStyle(
                              fontFamily: "Tajawal",
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColor.mulledWine55,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: AppColor.main)),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1,
                                color: AppColor.main,
                              ),
                            ))),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/photo_female_6.jpg"),
                    ),
                    title: Container(
                      alignment: AlignmentDirectional.centerStart,
                      width: 400,
                      child: CustomText(
                        text: "انشر تحديثك الآن",
                        fontFamily: "Cairo",
                        fontSize: 11,
                        colors: AppColor.mulledWine55,
                      ),
                    ),
                    trailing: Icon(
                      IconlyLight.arrow_left,
                      color: AppColor.mulledWine55,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: CustomText(
                text: "الفيديوهات التعريفية",
                fontSize: 13,
                colors: AppColor.b10000d,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 146,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset("assets/images/video.png"),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              height: MediaQuery.of(context).size.height / 1.5,
              width: double.infinity,
              child: Expanded(
                child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        TabBar(
                            isScrollable: true,
                            padding: EdgeInsetsDirectional.only(end: 150),
                            indicatorPadding: EdgeInsetsDirectional.only(end: 0),
                            indicatorWeight: 1,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: AppColor.main,
                            tabs: [
                              Tab(
                                child: textWidget("تحديثات العمل "),
                              ),
                              Tab(
                                child: textWidget("المنشورات العامة"),
                              ),
                            ]),
                        Expanded(
                          child: TabBarView(
                            children: <Widget>[
                              SingleChildScrollView(
                                physics: AlwaysScrollableScrollPhysics(),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    // postWidget(context, 1),
                                    // SizedBox(
                                    //   height: 20,
                                    // ),
                                    //
                                    // postWidget(context, 0),
                                    // SizedBox(
                                    //   height: 20,
                                    // ),
                                    //
                                    // postWidget(context, 0),
                                    // SizedBox(
                                    //   height: 20,
                                    // ),

                                     SizedBox(height: 40,),
                                  ],
                                ),
                              ),
                              Container(
                                color: AppColor.main,
                                width: 10,
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
