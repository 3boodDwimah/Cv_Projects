import 'package:cv/Ui/Groups/Screen/group.dart';
import 'package:cv/Ui/Home/Wdgets/corporate_updates.dart';
import 'package:cv/Ui/ITEM_SAVED/item_saved_screen.dart';
import 'package:cv/Ui/Notification/Widget/image.dart';
import 'package:cv/Ui/Notification/drower.dart';
import 'package:cv/Ui/Profiles/profilescreen.dart';
import 'package:cv/Ui/Room/voice_screen.dart';
import 'package:cv/Ui/Search/search_home.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:cv/core/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class PublicationsScreen extends StatefulWidget {
  const PublicationsScreen({Key? key}) : super(key: key);

  @override
  State<PublicationsScreen> createState() => _PublicationsScreenState();
}

class _PublicationsScreenState extends State<PublicationsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.backgroundColorF3,
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          text: "مجموعة التصميم",
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
              SvgPicture.asset(
                "assets/images/iconmes.svg",
                width: 28,
                height: 28,
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchHome()));
                  },

                  child: Icon(IconlyLight.search))
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
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        toolbarHeight: 55,
        flexibleSpace: SafeArea(
          child: SvgPicture.asset(
            'assets/images/appBar0.svg',
            fit: BoxFit.fill,
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


      body:SafeArea(
        child: Stack(
          children: [
            Positioned(

                child: Container(
                    padding: EdgeInsetsDirectional.only(start: 17,top: 40),
                    child: Text("كل المنشورات",
                      style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: Color(0xff514D55),
                    ),
        softWrap: false,
      ),
                    )),
            Container(
              padding: EdgeInsets.only(top: 70),
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15.0,left: 15,right: 15),
                    child: postWidget(context,0),
                  );
                },),
            ),
          ],
        ),
      ) ,
    );
  }
}
