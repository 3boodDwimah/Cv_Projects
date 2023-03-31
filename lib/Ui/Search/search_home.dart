import 'package:cv/Ui/Groups/Screen/group.dart';
import 'package:cv/Ui/Home/Wdgets/follow.dart';
import 'package:cv/Ui/ITEM_SAVED/item_saved_screen.dart';
import 'package:cv/Ui/Notification/Widget/image.dart';
import 'package:cv/Ui/Notification/drower.dart';
import 'package:cv/Ui/Profiles/profilescreen.dart';
import 'package:cv/Ui/Room/voice_screen.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:cv/core/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class SearchHome extends StatefulWidget {
  const SearchHome({Key? key}) : super(key: key);

  @override
  State<SearchHome> createState() => _SearchHomeState();
}

class _SearchHomeState extends State<SearchHome> {
  var searchhomeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColorF3,
      appBar: AppBar(

        centerTitle: true,
        title: CustomText(
          text: "ابحث عن شي ما ",
          fontFamily: "Cairo",
          fontWeight: FontWeight.w400,
          fontSize: 13,
          colors: Colors.white,
        ),
        leadingWidth: 90,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColor.main,
        ),
        elevation: 0,
        leading: Container(
          child: Row(
            children: [
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(IconlyLight.arrow_right_2)),
              SizedBox(
                width: 8,
              ),
              SvgPicture.asset(
                "assets/images/iconmes.svg",
                width: 28,
                height: 28,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        actions: [
          Container(
              padding: EdgeInsetsDirectional.only(end: 10),
              child:     Builder(
                  builder: (context) => IconButton(
                      icon: SvgPicture.asset(
                        "assets/images/iocnmune.svg",
                        width: 26,
                        height: 26,
                      ),
                      onPressed: () => Scaffold.of(context).openDrawer())))
        ],
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
      drawer: Drawer(
        elevation: 0,
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      height: 130,
                      child: SvgPicture.asset(
                        "assets/images/Drawer.svg",
                        width: double.infinity,
                        fit: BoxFit.contain,
                      )),
                  Positioned(
                    bottom: 30,
                    right: 20,
                    child: Text(
                      'القائمة ',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
              Positioned(
                child: ListTile(
                  leading: Images(
                    "assets/images/Group 17643.svg",
                  ),
                  title: Text("أحمد محمد "),
                  subtitle: Text(
                    "مصمم واجهات مستخدم",
                    style: TextStyle(height: 0.9),
                  ),
                  trailing: GestureDetector(
                    onTap: (){
                      navigateTo(context, Profile());
                    },
                    child: Container(
                      height: 30,
                      child: Icon(
                        IconlyLight.arrow_left_2,
                        color: AppColor.black,
                      ),
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color(0xffF2F2F3),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 11,),
              myDivider(),
              SizedBox(height: 11,),

              GestureDetector(
                  onTap: (){
                    navigateTo(context, item());
                  },
                  child: drawer("العناصر المحفوظة", IconlyLight.bookmark)),
              SizedBox(
                height: 11,
              ),
              drawer("مركز المعلومات", IconlyLight.info_circle),
              SizedBox(
                height: 11,
              ),
              drawer("الحاضنات", IconlyLight.folder),
              SizedBox(
                height: 11,
              ),
              GestureDetector(
                  onTap: (){
                    navigateTo(context,Group ());
                  },
                  child: drawer("المجموعات", IconlyLight.user_1)),
              SizedBox(
                height: 11,
              ),
              GestureDetector(
                  onTap: (){
                    navigateTo(context, VoiceRoom());
                  },
                  child: drawer("الغرف الصوتية", IconlyLight.voice_2)),
              SizedBox(
                height: 11,
              ),
              drawer("غرف الفيديو", IconlyLight.video),
              SizedBox(
                height: 11,
              ),
              drawer("المناسبات", IconlyLight.calendar),
              SizedBox(
                height: 11,
              ),
              drawer("المساعدة والدعم", IconlyLight.user),
              SizedBox(
                height: 11,
              ),
              drawer("الإعدادات والخصوصية", IconlyLight.setting),
              SizedBox(
                height: 11,
              ),
              drawer("تسجيل الخروج", IconlyLight.logout),
            ],
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Column(children: [
              SizedBox(
                height: 20,
              ),

                  Container(
                    child: defaultFormFieldWithOut(
                        width: 0,
                        controller: searchhomeController,
                        type: TextInputType.text,
                        color: AppColor.bagroundColorF8,
                        hint: "ابحث عن شي ما,اشخاص,منشورك ",
                        hintStyle: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 9,
                          color: const Color(0xff99A0AA),
                        )),

              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  "أخر ما تم البحث عنه",
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 12,
                    color: const Color(0xff514D55),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 130,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            "وريم ابسوم لوريم ابسوم",
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 11,
                              color: const Color(0xff99a0aa),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.close,color: AppColor.grayishblue99a0aa,size: 18,)
                        ],
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  "هاشتاجات مقترحة",
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 12,
                    color: const Color(0xff514D55),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 140,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7 / 0.23,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return
                      Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xffD5DFEB),
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        "# ابسوم لوريم ",
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 12,
                          color: AppColor.main,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  "مجموعات مقترحة",
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 12,
                    color: const Color(0xff514D55),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),SizedBox(height: 10,),
              Container(
                height: 150,
                padding: EdgeInsets.all(00),
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: follow(),
                    );
                  },
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
