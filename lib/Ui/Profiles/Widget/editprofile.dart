import 'package:cv/Ui/Groups/Screen/group.dart';
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

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

var nameController = TextEditingController();

String? selectedValue;
List<String> items = [
  'أول ',
  'تاني',
  'Item3',
  'Item4',
];

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsetsDirectional.only(
            bottom: 50.0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              CustomText(
                text: "تعديل الملف الشخصي",
                fontFamily: "Cairo",
                fontWeight: FontWeight.w400,
                fontSize: 13,
                colors: Colors.white,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 15.0),
                child: Stack(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 40,
                        child: SvgPicture.asset(
                          "assets/images/Group 17643.svg",
                          height: 60,
                          width: 60,
                        )),
                    Positioned(
                        top: 23,
                        child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.0,
                                  color: AppColor.main,
                                ),
                                borderRadius: BorderRadius.circular(30),
                                color: AppColor.white),
                            child: Icon(
                              IconlyLight.camera,
                              color: AppColor.main,
                              size: 18,
                            )))
                  ],
                ),
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
          padding: const EdgeInsets.only(bottom: 65.0),
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
                  width: 7,
                ),
                SvgPicture.asset(
                  "assets/images/iconmes.svg",
                  width: 28,
                  height: 28,
                ),
                SizedBox(
                  width: 12,
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
        actions: [
          Container(
              padding: EdgeInsetsDirectional.only(end: 10,bottom: 80),
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
        toolbarHeight: 154,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: SvgPicture.asset(
              'assets/images/appBar0.svg',
              height: 154,
              fit: BoxFit.contain,
            ),
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
                        child: textWidget("المعلومات الأساسية"),
                      ),
                      Tab(
                        child: textWidget("الخبرة والتعليم"),
                      ),
                    ]),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              color: AppColor.white,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional.topStart,
                                    child: Text(
                                      'المعلومات الأساسية',
                                      style: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.b10000d,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  myDivider(),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  defaultFormField(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.linkWaterD0D6E0,
                                      ),
                                      hint: "الاسم الأول",
                                      color: AppColor.white,
                                      controller: nameController,
                                      type: TextInputType.name),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  defaultFormField(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.linkWaterD0D6E0,
                                      ),
                                      hint: "الاسم الأخير",
                                      color: AppColor.white,
                                      controller: nameController,
                                      type: TextInputType.name),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  defaultFormField(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.linkWaterD0D6E0,
                                      ),
                                      hint: 'البريد الإلكتروني',
                                      color: AppColor.white,
                                      controller: nameController,
                                      type: TextInputType.name),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 48,
                                        height: 48,
                                        //    child: ,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        width: 288,
                                        child: defaultFormField(
                                            hintStyle: TextStyle(
                                              fontFamily: 'Tajawal',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.linkWaterD0D6E0,
                                            ),
                                            hint: "رقم الموبايل",
                                            color: AppColor.white,
                                            controller: nameController,
                                            type: TextInputType.name),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  defaultFormField(
                                      hint: "المسمى الوظيفي",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.linkWaterD0D6E0,
                                      ),
                                      color: AppColor.white,
                                      controller: nameController,
                                      type: TextInputType.name),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsetsDirectional.only(
                                        start: 10, end: 10, top: 7, bottom: 7),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 0.25,
                                        color: Color(0xff707070),
                                      ),
                                      color: AppColor.white,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    height: 50,
                                    child: DropdownButton(
                                      icon: Icon(
                                        IconlyLight.arrow_down_2,
                                        size: 20,
                                        color: AppColor.grayishblue99a0aa,
                                      ),
                                      focusColor: Colors.white,
                                      iconEnabledColor: Colors.black,
                                      dropdownColor: Colors.white,
                                      alignment: Alignment.centerLeft,
                                      isExpanded: true,
                                      underline: Divider(
                                        thickness: 0,
                                        color: Colors.white,
                                      ),
                                      hint: Container(
                                        width: double.infinity,
                                        child: Text(
                                          'الدولة ',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      items: items
                                          .map((item) =>
                                              DropdownMenuItem<String>(
                                                value: item,
                                                child: Container(
                                                  color: Colors.white,
                                                  child: Text(
                                                    item,
                                                    textDirection:
                                                        TextDirection.rtl,
                                                    style: const TextStyle(
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                          .toList(),
                                      value: selectedValue,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedValue = value as String;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsetsDirectional.only(
                                        start: 10, end: 10, top: 7, bottom: 7),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 0.25,
                                        color: Color(0xff707070),
                                      ),
                                      color: AppColor.white,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    height: 50,
                                    child: DropdownButton(
                                      icon: Icon(
                                        IconlyLight.arrow_down_2,
                                        size: 20,
                                        color: AppColor.grayishblue99a0aa,
                                      ),
                                      focusColor: Colors.white,
                                      iconEnabledColor: Colors.black,
                                      dropdownColor: Colors.white,
                                      alignment: Alignment.centerLeft,
                                      isExpanded: true,
                                      underline: Divider(
                                        thickness: 0,
                                        color: Colors.white,
                                      ),
                                      hint: Container(
                                        width: double.infinity,
                                        child: Text(
                                          'المدينة ',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      items: items
                                          .map((item) =>
                                              DropdownMenuItem<String>(
                                                value: item,
                                                child: Container(
                                                  color: Colors.white,
                                                  child: Text(
                                                    item,
                                                    textDirection:
                                                        TextDirection.rtl,
                                                    style: const TextStyle(
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                              ))
                                          .toList(),
                                      value: selectedValue,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedValue = value as String;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3.0),
                                      border: Border.all(
                                          width: 0.25,
                                          color: const Color(0xff707070)),
                                      color: AppColor.white,
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: 114,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff26b888),
                                            borderRadius:
                                                BorderRadius.circular(3.0),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'يعمل بدوام جزئي',
                                                style: TextStyle(
                                                  fontFamily: 'Tajawal',
                                                  fontSize: 10,
                                                  color:
                                                      const Color(0xffffffff),
                                                ),
                                                textAlign: TextAlign.right,
                                              ),
                                              SizedBox(
                                                width: 7,
                                              ),
                                              Icon(IconlyLight.close_square,
                                                  color: AppColor.white),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 114,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff26b888),
                                            borderRadius:
                                                BorderRadius.circular(3.0),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'يبحث عن عمل ',
                                                style: TextStyle(
                                                  fontFamily: 'Tajawal',
                                                  fontSize: 10,
                                                  color:
                                                      const Color(0xffffffff),
                                                ),
                                                textAlign: TextAlign.right,
                                              ),
                                              SizedBox(
                                                width: 7,
                                              ),
                                              Icon(
                                                IconlyLight.close_square,
                                                color: AppColor.white,
                                              )
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 12),
                                          child: Icon(
                                            IconlyLight.arrow_down_2,
                                            size: 20,
                                            color: AppColor.grayishblue99a0aa,
                                          ),
                                        ),
                                      ],
                                    ),
                                    height: 50,
                                    width: double.infinity,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  defaultFormField(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.linkWaterD0D6E0,
                                      ),
                                      hint: "رابط الملف الشخصي ",
                                      color: AppColor.white,
                                      controller: nameController,
                                      type: TextInputType.name),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              color: AppColor.white,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional.topStart,
                                    child: Text(
                                      'المهارات',
                                      style: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.b10000d,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  myDivider(),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional.centerStart,
                                        child: Text(
                                          'المهارات الشخصية',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 14,
                                            color: AppColor.main,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 165,
                                            height: 48,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'العمل تحت الضغط',
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColor
                                                        .grayishblue99a0aa,
                                                  ),
                                                  textAlign: TextAlign.right,
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Icon(
                                                  IconlyLight.arrow_down_2,
                                                  size: 20,
                                                  color: AppColor
                                                      .grayishblue99a0aa,
                                                )
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xffffffff),
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                              border: Border.all(
                                                  width: 0.25,
                                                  color:
                                                      const Color(0xff707070)),
                                            ),
                                          ),
                                          Container(
                                            width: 84,
                                            height: 48,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'متوسط',
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColor
                                                        .grayishblue99a0aa,
                                                  ),
                                                  textAlign: TextAlign.right,
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Icon(
                                                  IconlyLight.arrow_down_2,
                                                  size: 20,
                                                  color: AppColor
                                                      .grayishblue99a0aa,
                                                )
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xffffffff),
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                              border: Border.all(
                                                  width: 0.25,
                                                  color:
                                                      const Color(0xff707070)),
                                            ),
                                          ),
                                          Container(
                                            width: 48,
                                            height: 48,
                                            child: Icon(
                                              Icons.close,
                                              color: AppColor.white,
                                              size: 16,
                                            ),
                                            decoration: BoxDecoration(
                                              color: AppColor.main,
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 165,
                                            height: 48,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'العمل تحت الضغط',
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColor
                                                        .grayishblue99a0aa,
                                                  ),
                                                  textAlign: TextAlign.right,
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Icon(
                                                  IconlyLight.arrow_down_2,
                                                  size: 20,
                                                  color: AppColor
                                                      .grayishblue99a0aa,
                                                )
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xffffffff),
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                              border: Border.all(
                                                  width: 0.25,
                                                  color:
                                                      const Color(0xff707070)),
                                            ),
                                          ),
                                          Container(
                                            width: 84,
                                            height: 48,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'متوسط',
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColor
                                                        .grayishblue99a0aa,
                                                  ),
                                                  textAlign: TextAlign.right,
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Icon(
                                                  IconlyLight.arrow_down_2,
                                                  size: 20,
                                                  color: AppColor
                                                      .grayishblue99a0aa,
                                                )
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xffffffff),
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                              border: Border.all(
                                                  width: 0.25,
                                                  color:
                                                      const Color(0xff707070)),
                                            ),
                                          ),
                                          Container(
                                            width: 48,
                                            height: 48,
                                            child: Icon(
                                              IconlyLight.plus,
                                              color: AppColor.white,
                                              size: 24,
                                            ),
                                            decoration: BoxDecoration(
                                              color: AppColor.main,
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional.centerStart,
                                        child: Text(
                                          'المهارات التقنية',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 14,
                                            color: AppColor.main,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 165,
                                            height: 48,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'العمل تحت الضغط',
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColor
                                                        .grayishblue99a0aa,
                                                  ),
                                                  textAlign: TextAlign.right,
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Icon(
                                                  IconlyLight.arrow_down_2,
                                                  size: 20,
                                                  color: AppColor
                                                      .grayishblue99a0aa,
                                                )
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xffffffff),
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                              border: Border.all(
                                                  width: 0.25,
                                                  color:
                                                      const Color(0xff707070)),
                                            ),
                                          ),
                                          Container(
                                            width: 84,
                                            height: 48,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'متوسط',
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColor
                                                        .grayishblue99a0aa,
                                                  ),
                                                  textAlign: TextAlign.right,
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Icon(
                                                  IconlyLight.arrow_down_2,
                                                  size: 20,
                                                  color: AppColor
                                                      .grayishblue99a0aa,
                                                )
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xffffffff),
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                              border: Border.all(
                                                  width: 0.25,
                                                  color:
                                                      const Color(0xff707070)),
                                            ),
                                          ),
                                          Container(
                                            width: 48,
                                            height: 48,
                                            child: Icon(
                                              Icons.close,
                                              color: AppColor.white,
                                              size: 16,
                                            ),
                                            decoration: BoxDecoration(
                                              color: AppColor.main,
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 165,
                                            height: 48,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'العمل تحت الضغط',
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColor
                                                        .grayishblue99a0aa,
                                                  ),
                                                  textAlign: TextAlign.right,
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Icon(
                                                  IconlyLight.arrow_down_2,
                                                  size: 20,
                                                  color: AppColor
                                                      .grayishblue99a0aa,
                                                )
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xffffffff),
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                              border: Border.all(
                                                  width: 0.25,
                                                  color:
                                                      const Color(0xff707070)),
                                            ),
                                          ),
                                          Container(
                                            width: 84,
                                            height: 48,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'متوسط',
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColor
                                                        .grayishblue99a0aa,
                                                  ),
                                                  textAlign: TextAlign.right,
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Icon(
                                                  IconlyLight.arrow_down_2,
                                                  size: 20,
                                                  color: AppColor
                                                      .grayishblue99a0aa,
                                                )
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xffffffff),
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                              border: Border.all(
                                                  width: 0.25,
                                                  color:
                                                      const Color(0xff707070)),
                                            ),
                                          ),
                                          Container(
                                            width: 48,
                                            height: 48,
                                            child: Icon(
                                              IconlyLight.plus,
                                              color: AppColor.white,
                                              size: 24,
                                            ),
                                            decoration: BoxDecoration(
                                              color: AppColor.main,
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                        height: 30,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              color: AppColor.white,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional.topStart,
                                    child: Text(
                                      'اللغات',
                                      style: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.b10000d,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  myDivider(),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional.centerStart,
                                        child: Text(
                                          'المهارات الشخصية',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 14,
                                            color: AppColor.main,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 165,
                                            height: 48,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'العربية',
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColor
                                                        .grayishblue99a0aa,
                                                  ),
                                                  textAlign: TextAlign.right,
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Icon(
                                                  IconlyLight.arrow_down_2,
                                                  size: 20,
                                                  color: AppColor
                                                      .grayishblue99a0aa,
                                                )
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xffffffff),
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                              border: Border.all(
                                                  width: 0.25,
                                                  color:
                                                      const Color(0xff707070)),
                                            ),
                                          ),
                                          Container(
                                            width: 84,
                                            height: 48,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'متوسط',
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColor
                                                        .grayishblue99a0aa,
                                                  ),
                                                  textAlign: TextAlign.right,
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Icon(
                                                  IconlyLight.arrow_down_2,
                                                  size: 20,
                                                  color: AppColor
                                                      .grayishblue99a0aa,
                                                )
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xffffffff),
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                              border: Border.all(
                                                  width: 0.25,
                                                  color:
                                                      const Color(0xff707070)),
                                            ),
                                          ),
                                          Container(
                                            width: 48,
                                            height: 48,
                                            child: Icon(
                                              IconlyLight.plus,
                                              color: AppColor.white,
                                              size: 24,
                                            ),
                                            decoration: BoxDecoration(
                                              color: AppColor.main,
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 165,
                                            height: 48,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'الإنجليزية',
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColor
                                                        .grayishblue99a0aa,
                                                  ),
                                                  textAlign: TextAlign.right,
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Icon(
                                                  IconlyLight.arrow_down_2,
                                                  size: 20,
                                                  color: AppColor
                                                      .grayishblue99a0aa,
                                                )
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xffffffff),
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                              border: Border.all(
                                                  width: 0.25,
                                                  color:
                                                      const Color(0xff707070)),
                                            ),
                                          ),
                                          Container(
                                            width: 84,
                                            height: 48,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'متوسط',
                                                  style: TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColor
                                                        .grayishblue99a0aa,
                                                  ),
                                                  textAlign: TextAlign.right,
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Icon(
                                                  IconlyLight.arrow_down_2,
                                                  size: 20,
                                                  color: AppColor
                                                      .grayishblue99a0aa,
                                                )
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xffffffff),
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                              border: Border.all(
                                                  width: 0.25,
                                                  color:
                                                      const Color(0xff707070)),
                                            ),
                                          ),
                                          Container(
                                            width: 48,
                                            height: 48,
                                            child: Icon(
                                              IconlyLight.plus,
                                              color: AppColor.white,
                                              size: 24,
                                            ),
                                            decoration: BoxDecoration(
                                              color: AppColor.main,
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              child: defauContainer(
                                text: "حفظ التغييرات",
                                borderRadius: 3,
                                height: 38,
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              color: AppColor.white,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional.topStart,
                                    child: Text(
                                      'الخبرة',
                                      style: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.b10000d,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  myDivider(),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  defaultFormField(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.linkWaterD0D6E0,
                                      ),
                                      hint: "المسمى الوظيفي",
                                      color: AppColor.white,
                                      controller: nameController,
                                      type: TextInputType.name),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  defaultFormField(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.linkWaterD0D6E0,
                                      ),
                                      hint: "اسم الشركة",
                                      color: AppColor.white,
                                      controller: nameController,
                                      type: TextInputType.name),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        width: 140,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3.0),
                                          border: Border.all(
                                              width: 0.25,
                                              color: const Color(0xff707070)),
                                          color: AppColor.white,
                                        ),
                                        height: 48,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'الخبرة',
                                              style: TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: AppColor.linkWaterD0D6E0,
                                              ),
                                            ),
                                            Icon(IconlyLight.arrow_down_2,
                                                size: 18,
                                                color:
                                                    AppColor.grayishblue99a0aa),
                                          ],
                                        ),
                                      ),
                                      CustomText(
                                        text: "إلى",
                                        fontSize: 18,
                                        colors: AppColor.linkWaterD0D6E0,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        width: 140,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3.0),
                                          border: Border.all(
                                              width: 0.25,
                                              color: const Color(0xff707070)),
                                          color: AppColor.white,
                                        ),
                                        height: 48,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '',
                                              style: TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: AppColor.linkWaterD0D6E0,
                                              ),
                                            ),
                                            Icon(IconlyLight.arrow_down_2,
                                                size: 18,
                                                color:
                                                    AppColor.grayishblue99a0aa),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  defaultFormField(
                                      MaxLines: 6,
                                      hintStyle: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.linkWaterD0D6E0,
                                      ),
                                      hint: 'الوصف الوظيفي',
                                      color: AppColor.white,
                                      controller: nameController,
                                      type: TextInputType.name),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          height: 24,
                                          width: 24,
                                          color: AppColor.main),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        child: Text(
                                          'ما زلت في هذه الوظيفة',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 12,
                                            color: const Color(0xff200e32),
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Spacer(),
                                      Container(
                                        width: 152,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff26b888),
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                        ),
                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'أضف خبرة جديدة',
                                              style: TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 14,
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              softWrap: false,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        width: 100,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: const Color(0xfff2f2f3),
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'حذف ',
                                            style: TextStyle(
                                              fontFamily: 'Tajawal',
                                              fontSize: 14,
                                              color: const Color(0xff000000),
                                              fontWeight: FontWeight.w500,
                                            ),
                                            softWrap: false,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              color: AppColor.white,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional.topStart,
                                    child: Text(
                                      'التعليم',
                                      style: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.b10000d,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  myDivider(),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  defaultFormField(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.linkWaterD0D6E0,
                                      ),
                                      hint: "الدرجة التعليمية",
                                      color: AppColor.white,
                                      controller: nameController,
                                      type: TextInputType.name),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  defaultFormField(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.linkWaterD0D6E0,
                                      ),
                                      hint: "اسم الجامعة",
                                      color: AppColor.white,
                                      controller: nameController,
                                      type: TextInputType.name),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3.0),
                                          border: Border.all(
                                              width: 0.25,
                                              color: const Color(0xff707070)),
                                          color: AppColor.white,
                                        ),
                                        height: 48,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'سنوات الداراسة',
                                              style: TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 13.5,
                                                fontWeight: FontWeight.w400,
                                                color: AppColor.linkWaterD0D6E0,
                                              ),
                                            ),
                                            Icon(IconlyLight.arrow_down_2,
                                                size: 17,
                                                color:
                                                    AppColor.grayishblue99a0aa),
                                          ],
                                        ),
                                      ),
                                      CustomText(
                                        text: "إلى",
                                        fontSize: 18,
                                        colors: AppColor.linkWaterD0D6E0,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15),
                                        width: 140,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3.0),
                                          border: Border.all(
                                              width: 0.25,
                                              color: const Color(0xff707070)),
                                          color: AppColor.white,
                                        ),
                                        height: 48,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '',
                                              style: TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: AppColor.linkWaterD0D6E0,
                                              ),
                                            ),
                                            Icon(IconlyLight.arrow_down_2,
                                                size: 17,
                                                color:
                                                    AppColor.grayishblue99a0aa),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          height: 24,
                                          width: 24,
                                          color: AppColor.main),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        child: Text(
                                          'ما زلت طالب',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 12,
                                            color: const Color(0xff200e32),
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Spacer(),
                                      Container(
                                        width: 152,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff26b888),
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                        ),
                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'أضف مؤهل جديد',
                                              style: TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 14,
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              softWrap: false,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        width: 100,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: const Color(0xfff2f2f3),
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'حذف ',
                                            style: TextStyle(
                                              fontFamily: 'Tajawal',
                                              fontSize: 14,
                                              color: const Color(0xff000000),
                                              fontWeight: FontWeight.w500,
                                            ),
                                            softWrap: false,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              child: defauContainer(
                                text: "حفظ التغييرات",
                                borderRadius: 3,
                                height: 38,
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
