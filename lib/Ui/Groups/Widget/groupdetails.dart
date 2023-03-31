
import 'package:cv/Ui/Home/Wdgets/corporate_updates.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class Files extends StatefulWidget {
  const Files({Key? key}) : super(key: key);

  @override
  State<Files> createState() => _FilesState();
}

List<String> items2 = [
  "الوسائط",
  "الملفات",
];

int current2 = 0;

var nameController = TextEditingController();

class _FilesState extends State<Files> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.backgroundColorF3,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: SafeArea(
                  child: Column(children: [

                    SizedBox(
                      width: double.infinity,
                      height: 60,
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

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 262,
                                child: defaultFormFieldWithOut(
                                    width: 0,
                                    controller: nameController,
                                    type: TextInputType.text,
                                    color: AppColor.bagroundColorF8,
                                    hint: "ابحث عن صور أو اسم العضو",
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 9,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.grayishblue99a0aa,
                                    )),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: AppColor.main),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18),
                                child: const Text(
                                  "إضافة صورة",
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 12,
                                    color: AppColor.white,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/1,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: GridView(
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                              children: [
                                Image.asset("assets/images/4.png"),
                                Image.asset("assets/images/4.png"),
                                Image.asset("assets/images/4.png"),
                                Image.asset("assets/images/4.png"),
                                Image.asset("assets/images/4.png"),
                                Image.asset("assets/images/4.png"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                        : Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width/1.45,
                                child: defaultFormFieldWithOut(
                                    width: 0,
                                    controller: nameController,
                                    type: TextInputType.text,
                                    color: AppColor.bagroundColorF8,
                                    hint: " ابحث عن عضو ",
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 9,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.grayishblue99a0aa,
                                    )),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: AppColor.main),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18),
                                child: const Text(
                                  "إضافة ملف",
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 12,
                                    color: AppColor.white,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              file(),
                              file(),
                              file(),
                              file(),
                              file(),
                              file(),
                              file(),
                            ],
                          )
                        ],
                      ),
                    ),
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}

Widget file() {
  return ListTile(
    leading: SvgPicture.asset("assets/images/file.svg"),
    title: const Text("اسم الملف ",
        style: TextStyle(
          fontFamily: 'Tajawal',
          fontSize: 12,
          color: AppColor.b10000d,
          fontWeight: FontWeight.w400,
        )),
    subtitle: Row(
      children: const [
        Text("Ahmed",
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 12,
              color: AppColor.mulledWine55,
              fontWeight: FontWeight.w400,
            )),
        SizedBox(
          width: 30,
        ),
        Text("4.00 AM  27 /8/2022",
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 9,
              color: AppColor.grayishblue99a0aa,
              fontWeight: FontWeight.w400,
            )),
      ],
    ),
    trailing: const Icon(
      Icons.more_horiz_outlined,
      size: 21,
      color: AppColor.mulledWine55,
    ),
  );
}
////////////////////////
Widget infoGroup(BuildContext context) => Container(
  color: AppColor.white,
  child: Container(
    width: double.infinity,
    color: AppColor.backgroundColorF3,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 1.55,
      child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                color: AppColor.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'وصف المجموعة',
                      style:  TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        height: 2,
                        color: AppColor.b10000d,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.  هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 11,
                          height: 1.34,
                          color: AppColor.mulledWine55),
                      textAlign: TextAlign.right,
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    setting("مجموعة  خاصة", IconlyLight.lock),
                    const SizedBox(
                      height: 12,
                    ),
                    setting(
                      "مرئية",
                      Icons.remove_red_eye_outlined,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    setting("فلسطين - غزة", IconlyLight.location),
                    const SizedBox(
                      height: 12,
                    ),
                    setting(
                        "تم الإنشاء بتاريخ 20/12/2021", IconlyLight.calendar),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                color: AppColor.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 10.0, top: 10),
                      child: Text(
                        'القواعد العامة للمجموعة',
                        style:  TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 12,
                          color: AppColor.b10000d,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) =>  Padding(
                          padding: EdgeInsets.all(5.0),
                          child:  Column(
                            children: [
                              Padding(
                                padding:  EdgeInsetsDirectional.only(end:38.0),
                                child: Text(
                                  'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 11,
                                    height: 1.8,
                                    color: AppColor.mulledWine55,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(height: 3,),
                              Text(
                                'لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 11,
                                  height: 1.8,
                                  color: AppColor.mulledWine55,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          )),
    ),
  ),
);

Widget setting(
    final String text,
    final IconData icon,
    ) =>
    Row(
      children: [
        Icon(icon, color: AppColor.mulledWine55),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'Tajawal',
            fontSize: 12,
            height: 1.34,
            color: AppColor.grayishblue99a0aa,
          ),
          textAlign: TextAlign.right,
        ),
      ],
    );


//////////
Widget admin() {
  return Container(
    height: 57,

    padding: EdgeInsets.symmetric(horizontal: 5),
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/photo_male_1.jpg"),
          radius: 23,
        ),
        Container(

          width: 140,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 9,),

              Text(
                "اسم الشخص",
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff10000D),
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 5,),
              Text(
                "UX UI Designer",
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff200E32),
                ),
              ),
              SizedBox(height: .5,),
              Text(
                "تم الطلب 12/10/2021",
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff99A0AA),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 140,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColor.bagroundColorF8),
                child: Icon(
                  Icons.more_horiz_outlined,
                  color: Color(0xff514D55),
                  size: 20,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColor.bagroundColorF8),
                child: Icon(
                  Icons.close,
                  color: Color(0xff514D55),
                  size: 20,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColor.main),
                child: Icon(
                  Icons.check,
                  color: Color(0xffffffff),
                  size: 20,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
///////////////////////
Widget aboutTheGroup(BuildContext context) {
  return
  Container(
                              color: AppColor.backgroundColorF3,
                              child: SingleChildScrollView(
                                child: Container(
                                  color: AppColor.white,
                                  width: double.infinity,
                                  margin: const EdgeInsetsDirectional.only(
                                      start: 20, end: 20),
                                  padding: const EdgeInsetsDirectional.only(
                                      top: 20, start: 15, end: 15),
                                  height:
                                      MediaQuery.of(context).size.height / 1.50,
                                  child: ListView(
                                    physics: const BouncingScrollPhysics(),
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          'تفاصيل الدورة التدربية',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 13,
                                            height: 1.7,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        child: myDivider(),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          IconlyLight.calendar,
                                          color: AppColor.main,
                                          size: 30,
                                        ),
                                        title: const Text(
                                          'تاريخ النشر',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 13,
                                            height: 1.7,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        subtitle: Text(
                                          '2/12/2021',
                                          style: const TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 11,
                                            height: 2.1,
                                            color: Color(0xff514d55),
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          IconlyLight.time_circle,
                                          color: AppColor.main,
                                          size: 30,
                                        ),
                                        title: const Text(
                                          ' المدة ',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 13,
                                            height: 1.7,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        subtitle: Text(
                                          '4 ساعات و 25 دقيقة',
                                          style: const TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 11,
                                            height: 2.1,
                                            color: Color(0xff514d55),
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                      const ListTile(
                                        leading: Icon(
                                          IconlyLight.user_1,
                                          color: AppColor.main,
                                          size: 30,
                                        ),
                                        title: Text(
                                          'عدد الطلاب',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 13,
                                            height: 1.7,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        subtitle: Text(
                                          '80 طالب',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 11,
                                            height: 2.1,
                                            color: Color(0xff514d55),
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          IconlyLight.folder,
                                          color: AppColor.main,
                                          size: 30,
                                        ),
                                        title: Text(
                                          'عدد الدروس',
                                          style: const TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 13,
                                            height: 1.7,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        subtitle: Text(
                                          '10 دروس',
                                          style: const TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 11,
                                            height: 2.1,
                                            color: Color(0xff514d55),
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          IconlyLight.paper,
                                          color: AppColor.main,
                                          size: 30,
                                        ),
                                        title: const Text(
                                          ' الشهادة',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 13,
                                            height: 1.7,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        subtitle: Text(
                                          'نعم',
                                          style: const TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 11,
                                            height: 2.1,
                                            color: Color(0xff514d55),
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                      const ListTile(
                                        leading: const Icon(
                                          Icons.language_outlined,
                                          color: AppColor.main,
                                          size: 30,
                                        ),
                                        title: Text(
                                          'اللغة',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 13,
                                            height: 1.7,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        subtitle: Text(
                                          'الإنجليزية',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 11,
                                            height: 2.1,
                                            color: Color(0xff514d55),
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 00,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
}
Widget discussion(BuildContext context) {
  return
    SingleChildScrollView(
      child: Container(
        margin:
        const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            postWidget(context, 0),
            const SizedBox(
              height: 20,
            ),
            postWidget(context, 0),
          ],
        ),
      ),
    );
}
Widget statistics(BuildContext context) {
  return
    Container(
      margin:
      const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding:
            EdgeInsetsDirectional.only(start: 15.0),
            child: const Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "احصائيات هذا الاسبوع",
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff514D55),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: AlignmentDirectional.center,
            height: 101,
            width: 358,
            padding: const EdgeInsets.symmetric(
                horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: AppColor.white),
            child: ListTile(
              trailing: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(7),
                    color: AppColor.main),
                child: const Icon(
                  IconlyLight.paper,
                  color: AppColor.white,
                  size: 28,
                ),
              ),
              title: const Text("200",
                  style: const TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 16,
                    height: 2.4,
                    fontWeight: FontWeight.bold,
                    color: AppColor.main,
                  )),
              subtitle: const Text("عدد المنشورات",
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff10000D),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: AlignmentDirectional.center,
            height: 101,
            width: 358,
            padding: const EdgeInsets.symmetric(
                horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: AppColor.white),
            child: ListTile(
              trailing: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(7),
                    color: AppColor.main),
                child: const Icon(
                  IconlyLight.game,
                  color: AppColor.white,
                  size: 28,
                ),
              ),
              title: const Text("2200",
                  style: const TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 16,
                    height: 2.4,
                    fontWeight: FontWeight.bold,
                    color: AppColor.main,
                  )),
              subtitle: const Text("عدد التفاعلات",
                  style: const TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff10000D),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: AlignmentDirectional.center,
            height: 101,
            width: 358,
            padding: const EdgeInsets.symmetric(
                horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: AppColor.white),
            child: ListTile(
              trailing: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(7),
                    color: AppColor.main),
                child: const Icon(
                  IconlyLight.user_1,
                  color: AppColor.white,
                  size: 28,
                ),
              ),
              title: const Text("20",
                  style: const TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 16,
                    height: 2.4,
                    fontWeight: FontWeight.bold,
                    color: AppColor.main,
                  )),
              subtitle: const Text("أعضاء جدد",
                  style: const TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff10000D),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
}
Widget room(BuildContext context) {
  return
    SingleChildScrollView(
      child: Container(
        color: AppColor.backgroundColorF3,
        margin:
        const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context)
                          .size
                          .width /
                          1.75,
                      child: defaultFormFieldWithOut(
                          width: 0,
                          controller: nameController,
                          color:
                          AppColor.bagroundColorF8,
                          type: TextInputType.text,
                          hint: "ابحث عن غرفة ما ",
                          hintStyle: const TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff99A0AA),
                          )),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(6),
                          color: AppColor.main),
                      padding:
                      const EdgeInsets.symmetric(
                          horizontal: 18),
                      child: const Text(
                        "أنشا غرفة جديدة",
                        style: const TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 13,
                          color: AppColor.white,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Align(
                  alignment:
                  AlignmentDirectional.topStart,
                  child: Text(
                    "الغرف النشطة حالياً",
                    style: const TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff514D55),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 220,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding:
                        const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 15),
                        width: 225,
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius:
                            BorderRadius.circular(
                                4)),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "اسم الغرفة",
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 12,
                                fontWeight:
                                FontWeight.w500,
                                color:
                                Color(0xff514d55),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.",
                              style: const TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 10,
                                fontWeight:
                                FontWeight.w400,
                                color: const Color(
                                    0xff514d55),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Stack(children: [
                                      CircleAvatar(
                                        backgroundImage:
                                        AssetImage(
                                            "assets/images/photo_female_5.jpg"),
                                        radius: 14,
                                      ),
                                      Padding(
                                          padding: EdgeInsets
                                              .only(
                                              right:
                                              11.5),
                                          child:
                                          CircleAvatar(
                                            backgroundImage:
                                            AssetImage(
                                                "assets/images/photo_female_4.jpg"),
                                            radius: 14,
                                          )),
                                      Padding(
                                          padding: EdgeInsets
                                              .only(
                                              right:
                                              23.0),
                                          child:
                                          CircleAvatar(
                                            backgroundImage:
                                            AssetImage(
                                                "assets/images/photo_female_6.jpg"),
                                            radius: 14,
                                          )),
                                      Padding(
                                          padding: EdgeInsets
                                              .only(
                                              right:
                                              33.0),
                                          child:
                                          CircleAvatar(
                                            backgroundImage:
                                            AssetImage(
                                                "assets/images/photo_female_7.jpg"),
                                            radius: 14,
                                          )),
                                      Padding(
                                          padding: EdgeInsets
                                              .only(
                                              right:
                                              45.0),
                                          child:
                                          CircleAvatar(
                                            backgroundImage:
                                            AssetImage(
                                                "assets/images/photo_male_7.jpg"),
                                            radius: 14,
                                          )),
                                    ]),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .start,
                                      children: [
                                        Align(
                                          alignment:
                                          Alignment
                                              .topRight,
                                          child:
                                          Container(
                                            padding: const EdgeInsets
                                                .only(
                                                right:
                                                5),
                                            child:
                                            const Text(
                                              ' +10 في الغرفة',
                                              style:
                                              TextStyle(
                                                fontFamily:
                                                'Tajawal',
                                                fontSize:
                                                11,
                                                color: AppColor
                                                    .grayishblue99a0aa,
                                              ),
                                              softWrap:
                                              false,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            defauContainer(
                              style: const TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 12,
                                fontWeight:
                                FontWeight.w500,
                                color: AppColor.white,
                              ),
                              height: 35,
                              text: "انضم الآن",
                              borderRadius: 5,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Align(
                  alignment:
                  AlignmentDirectional.topStart,
                  child: const Text(
                    "الغرف المجدولةً",
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff514D55),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 255,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding:
                        const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 15),
                        width: 225,
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius:
                            BorderRadius.circular(
                                4)),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "اسم الغرفة",
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 12,
                                fontWeight:
                                FontWeight.w500,
                                color:
                                Color(0xff514d55),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  IconlyLight.calendar,
                                  color: AppColor.main,
                                ),
                                const Text(
                                    "PM 4.00 \t 27 /8/2022",
                                    style: TextStyle(
                                      fontFamily: 'Tajawal',
                                      fontSize: 9,
                                      color: const Color(
                                          0xff99A0AA),
                                      fontWeight:
                                      FontWeight.w400,
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.",
                              style: const TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 10,
                                fontWeight:
                                FontWeight.w400,
                                color: const Color(
                                    0xff514d55),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Stack(children: [
                                      CircleAvatar(
                                        backgroundImage:
                                        AssetImage(
                                            "assets/images/photo_female_5.jpg"),
                                        radius: 14,
                                      ),
                                      Padding(
                                          padding: EdgeInsets
                                              .only(
                                              right:
                                              11.5),
                                          child:
                                          CircleAvatar(
                                            backgroundImage:
                                            AssetImage(
                                                "assets/images/photo_female_4.jpg"),
                                            radius: 14,
                                          )),
                                      Padding(
                                          padding: EdgeInsets
                                              .only(
                                              right:
                                              23.0),
                                          child:
                                          CircleAvatar(
                                            backgroundImage:
                                            AssetImage(
                                                "assets/images/photo_female_6.jpg"),
                                            radius: 14,
                                          )),
                                      Padding(
                                          padding: EdgeInsets
                                              .only(
                                              right:
                                              33.0),
                                          child:
                                          CircleAvatar(
                                            backgroundImage:
                                            AssetImage(
                                                "assets/images/photo_female_7.jpg"),
                                            radius: 14,
                                          )),
                                      Padding(
                                          padding: EdgeInsets
                                              .only(
                                              right:
                                              45.0),
                                          child:
                                          CircleAvatar(
                                            backgroundImage:
                                            AssetImage(
                                                "assets/images/photo_male_7.jpg"),
                                            radius: 14,
                                          )),
                                    ]),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .start,
                                      children: [
                                        Align(
                                          alignment:
                                          Alignment
                                              .topRight,
                                          child:
                                          Container(
                                            padding: const EdgeInsets
                                                .only(
                                                right:
                                                5),
                                            child:
                                            const Text(
                                              ' +10 في الغرفة',
                                              style:
                                              TextStyle(
                                                fontFamily:
                                                'Tajawal',
                                                fontSize:
                                                11,
                                                color: AppColor
                                                    .grayishblue99a0aa,
                                              ),
                                              softWrap:
                                              false,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            defauContainer(
                              style: const TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 12,
                                fontWeight:
                                FontWeight.w500,
                                color: AppColor.white,
                              ),
                              height: 35,
                              text: "انضم الآن",
                              borderRadius: 5,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ],
        ),
      ),
    );
}
///////////////////

