import 'package:cv/Ui/Groups/Screen/groupdetails.dart';
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

class Group extends StatefulWidget {
  const Group({Key? key}) : super(key: key);

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> {
  var groupController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: CustomText(
          text: "المجموعات",
          fontFamily: "Cairo",
          fontWeight: FontWeight.w600,
          fontSize: 15,
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

      backgroundColor: AppColor.backgroundColorF3,
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

        child:
        SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(

            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                            Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child:
                      defaultFormFieldWithOut(
                          width: 0,
                          controller: groupController,
                          type: TextInputType.text,
                          color: AppColor.bagroundColorF8,
                          hint: "ابحث عن وظيفة",
                          hintStyle: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 9,
                            color: AppColor.grayishblue99a0aa,
                          )),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      child: Icon(
                        IconlyLight.filter_2,
                        color: AppColor.white,
                      ),
                      decoration: BoxDecoration(
                          color: AppColor.main,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),

                SizedBox(
                  height: 30,
                ),

                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'مجموعاتك',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff10000d),
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height/1.6,
                  child: GridView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1/1.4,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20),
                      itemBuilder: (ctx, i) {
                        return GestureDetector(
                          onTap: (){
                          },
                          child: Container(
                            width: 165,
                            decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Container(
                                  width: 165,
                                  height: 112,
                                  child: Image.asset("assets/images/course.png"),
                                  decoration: BoxDecoration(
                                      color: AppColor.main,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  width: 165,
                                  height: 116,
                                  decoration: BoxDecoration(
                                      color: AppColor.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'اسم المجموعة',
                                        style: TextStyle(
                                          fontFamily: 'Tajawal',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff10000d),
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        '200 عضو',
                                        style: TextStyle(
                                          fontFamily: 'Tajawal',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff99A0AA),
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      defauContainer(
                                          text: "مغادرة المجموعة",
                                          style: TextStyle(color: AppColor.white))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(height: 30,)
              ],
            ),

          ),
        ),
      ),
    );
  }
}
