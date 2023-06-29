import 'package:cv/Ui/BusinessOwners/widget/jobDescription.dart';
import 'package:cv/Ui/BusinessOwners/widget/jobInformation.dart';
import 'package:cv/Ui/Groups/Screen/group.dart';
import 'package:cv/Ui/ITEM_SAVED/item_saved_screen.dart';
import 'package:cv/Ui/Notification/Widget/image.dart';
import 'package:cv/Ui/Notification/drower.dart';
import 'package:cv/Ui/Profiles/Widget/edit/post_skill.dart';
import 'package:cv/Ui/Profiles/Widget/edit/userdata.dart';
import 'package:cv/Ui/Profiles/profilescreen.dart';
import 'package:cv/Ui/Room/voice_screen.dart';
import 'package:cv/Ui/Search/search_home.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:cv/core/string.dart';
import 'package:cv/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

import '../../../../bloc/cubit_navbar/cubit.dart';

class AddNewJop extends StatefulWidget {
  const AddNewJop({Key? key}) : super(key: key);

  @override
  State<AddNewJop> createState() => _AddNewJopState();
}

String? selectedValue;
List<String> items = [
  'أول ',
  'تاني',
  'Item3',
  'Item4',
];

class _AddNewJopState extends State<AddNewJop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
      CustomText(
            text: "أضف وظيفة",
            fontFamily: "Cairo",
            fontWeight: FontWeight.w400,
            fontSize: 15,
            colors: Colors.white,
          ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(
              backgroundColor: AppColor.white,
              radius: 16,

            ),
          ),

        ],


        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColor.main,
            systemNavigationBarColor: AppColor.black,
            systemNavigationBarDividerColor: AppColor.white),
        elevation: 0,
        backgroundColor: AppColor.main,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
        toolbarHeight: 88,
        flexibleSpace: SafeArea(
          child: SvgPicture.asset(
            'assets/images/appbarpoint.svg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      backgroundColor: AppColor.backgroundColorF3,
      body: SafeArea(
        child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(
                    isScrollable: true,
                    indicatorPadding: EdgeInsetsDirectional.only(start: 00),
                    padding: EdgeInsetsDirectional.only(end: 150, top: 5),
                    indicatorWeight: 1,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: AppColor.main,
                    tabs: [
                      Tab(
                        child: textWidget("معلومات الوظيفة"),
                      ),
                      Tab(
                        child: textWidget("الوصف الوظيفي"),
                      ),
                    ]),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      JopInformation(),
                      JobDescription()
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
