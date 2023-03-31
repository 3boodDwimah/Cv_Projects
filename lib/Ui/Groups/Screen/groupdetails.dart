import 'package:cv/Ui/Groups/Widget/groupdetails.dart';
import 'package:cv/Ui/Groups/Widget/member.dart';
import 'package:cv/Ui/Groups/Widget/user_tools.dart';
import 'package:cv/Ui/Home/Wdgets/corporate_updates.dart';
import 'package:cv/Ui/Search/search_home.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:cv/core/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class GroupDetails extends StatefulWidget {
  const GroupDetails({Key? key}) : super(key: key);

  @override
  State<GroupDetails> createState() => _GroupDetailsState();
}

class _GroupDetailsState extends State<GroupDetails> {
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColorF3,
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsetsDirectional.only(bottom: 30.0, end: 00),
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 10.0),
                child: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage("assets/images/Mask Group 55.png")),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 10.0),
                child: CustomText(
                  text: "اسم المجوعة",
                  fontFamily: "Tajawal",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  colors: Colors.white,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 5.0),
                child: Text("مجموعة  خاصة",
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 10.0),
                child: Text("120 عضو",
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ),
        leadingWidth: 120,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColor.main,
        ),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 115.0),
          child: Container(
            child: Row(
              children: [
                SizedBox(
                  width: 13,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(IconlyLight.arrow_right_2)),
                SizedBox(
                  width: 6,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchHome()));
                    },
                    child: Icon(IconlyLight.search)),
              ],
            ),
          ),
        ),
        backgroundColor: AppColor.main,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        toolbarHeight: 210,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: SvgPicture.asset(
              'assets/images/svg2.svg',
              height: 210,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 8,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
            ),
            Expanded(
              child: DefaultTabController(
                  length: 9,
                  child: Column(
                    children: [
                      TabBar(
                          isScrollable: true,
                          indicatorPadding:
                              const EdgeInsetsDirectional.only(start: 10),
                          indicatorWeight: 1,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorColor: AppColor.main,
                          tabs: [
                            Tab(
                              child: textWidget("حول المجموعة"),
                            ),
                            Tab(
                              child: textWidget("النقاش"),
                            ),
                            Tab(
                              child: textWidget("أدوات المستخدمين"),
                            ),
                            Tab(
                              child: textWidget("التحديثات المميزة"),
                            ),
                            Tab(
                              child: textWidget('الأعضاء'),
                            ),
                            Tab(
                              child: textWidget(
                                'الملفات',
                              ),
                            ),
                            Tab(
                              child: textWidget(
                                'الغرف',
                              ),
                            ),
                            Tab(
                              child: textWidget(
                                'المناسبات',
                              ),
                            ),
                            Tab(
                              child: textWidget(
                                'الاحصائيات',
                              ),
                            ),
                          ]),
                      Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            infoGroup(context),
                            aboutTheGroup(context),
                            const UserTools(),
                            discussion(context),
                            member(context),
                            const Files(),
                            room(context),
                            Container(
                              color: AppColor.black,
                            ),
                            statistics(context),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
