import 'package:cv/Ui/Groups/Screen/group.dart';
import 'package:cv/Ui/Home/Screen/addpost.dart';
import 'package:cv/Ui/Home/Story/app_data/story_data.dart';
import 'package:cv/Ui/Home/Story/helper/constant.dart';
import 'package:cv/Ui/Home/Story/page_animations/page_routes_animation.dart';
import 'package:cv/Ui/Home/Story/view/story_feed/story_feed_view.dart';
import 'package:cv/Ui/Home/Wdgets/corporate_updates.dart';
import 'package:cv/Ui/Home/Wdgets/follow.dart';
import 'package:cv/Ui/ITEM_SAVED/item_saved.dart';
import 'package:cv/Ui/ITEM_SAVED/item_saved_screen.dart';
import 'package:cv/Ui/Notification/Widget/image.dart';
import 'package:cv/Ui/Notification/drower.dart';
import 'package:cv/Ui/Profiles/profilescreen.dart';
import 'package:cv/Ui/Room/room_details.dart';
import 'package:cv/Ui/Room/voice_screen.dart';
import 'package:cv/Ui/Search/search_home.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:cv/core/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';
import 'package:rect_getter/rect_getter.dart';
import '../Story/view/home_view/widgets/user_story_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

List<String> items = [
  "تحديثات الشركات",
  "المنشورات العامة",
  " اكتشف الجديد",
];

int current = 0;

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  GlobalKey<RectGetterState> reactGetterkey = RectGetter.createGlobalKey();
  Rect? rect;
  AnimationController? storyAnimationController;
  Animation? storycolorAnimation;

  @override
  void initState() {
    super.initState();
    storyAnimationController =
        AnimationController(vsync: this, duration: animationDuration);
    storycolorAnimation = ColorTween(begin: Colors.black12, end: Colors.black)
        .animate(storyAnimationController!);
    storyAnimationController!.addListener(() {
      setState(() {});
    });
  }

  void onStoryItemTap(reactpoint, index) {
    setState(() => rect = reactpoint);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() =>
          rect = rect!.inflate(1.3 * MediaQuery.of(context).size.longestSide));
      storyAnimationController!.forward();
      Future.delayed(animationDuration, () {
        Navigator.of(context)
            .push(
              FadeRouteBuilder(
                page: StoryFeedView(
                    stories: stories, herotagString: 'index$index'),
              ),
            )
            .then((value) => setState(() => rect = null));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          floatingActionButton: GestureDetector(
            onTap: (){
              navigateTo(context, AddPost());
            },
            child: Container(width: 46,height: 46,decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(45)),color: AppColor.main
            ),
            child: Icon(Icons.add,color: AppColor.white,),
            ),
          ),
          backgroundColor: AppColor.backgroundColorF3,
          appBar: AppBar(
            centerTitle: true,
            title: CustomText(
              text: "الرئيسية",
              fontFamily: "Cairo",
              fontWeight: FontWeight.w400,
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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

          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsetsDirectional.only(start: 15),
                  child: CustomText(
                    text: "القصص",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Stack(
                  children: [
                    Container(
                      height: 70,
                      margin: EdgeInsetsDirectional.only(start: 70),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        itemBuilder: (context, index) {
                          return UserStoryItem(
                            setRectPoint: (rectpoint) {
                              print(rect);
                              setState(() {
                                rect = rectpoint;
                              });
                              onStoryItemTap(rect, index);
                            },
                            index: index,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 6),
                      child: Stack(children: [
                        CircleAvatar(radius: 28,
                            backgroundImage: AssetImage("assets/images/photo_female_6.jpg"),
                            backgroundColor: Colors.black),
                        Positioned(
                          left: 0,
                          bottom: 0,
                          child: CircleAvatar(
                            child: Center(
                                child: Icon(
                              Icons.add,
                              size: 16,
                              color: AppColor.white,
                            )),
                            radius: 8,
                            backgroundColor: AppColor.main,
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: SafeArea(
                          child: Column(
                            children: [
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
                                              duration: const Duration(
                                                  milliseconds: 300),
                                              margin:
                                                  const EdgeInsetsDirectional
                                                      .only(start: 15),
                                              padding:
                                                  const EdgeInsetsDirectional
                                                          .only(
                                                      top: 2,
                                                      bottom: 2,
                                                      start: 13,
                                                      end: 13),
                                              height: 30,
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
                                                      fontWeight:
                                                          FontWeight.w400,
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
                              current == 0
                                  ?
                              Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Column(
                                        children: [
                                          postWidget(context, 1),
                                          SizedBox(height: 15),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                'شركات مقترحة',
                                                style: TextStyle(
                                                  fontFamily: 'Tajawal',
                                                  fontSize: 12,
                                                  color:
                                                      AppColor.b10000d,
                                                ),
                                                textAlign: TextAlign.right,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10),

                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            height: 140,
                                            child: ListView.builder(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10),
                                                itemCount: 3,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemBuilder: (context, index) =>
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 10),
                                                      child: follow(),
                                                    )),
                                          ),
                                          SizedBox(height: 15),

                                          postWidget(context, 0),
                                        ],
                                      ),
                                    )
                                  : Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 15),
                                child: Column(
                                  children: [
                                    postWidget(context, 1),
                                    SizedBox(height: 15),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'شركات مقترحة',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 12,
                                            color:
                                            AppColor.b10000d,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),

                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: 10),
                                      height: 140,
                                      child: ListView.builder(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          itemCount: 3,
                                          scrollDirection:
                                          Axis.horizontal,
                                          itemBuilder: (context, index) =>
                                              Padding(
                                                padding: const EdgeInsets
                                                    .symmetric(
                                                    horizontal: 10),
                                                child: follow(),
                                              )),
                                    ),
                                    SizedBox(height: 15),

                                    postWidget(context, 0),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(height: 10),
          // postWidget(context),
        ),
      ],
    );
  }

  Widget rippleAnimation() {
    if (rect == null) {
      return const Offstage();
    }
    return AnimatedPositioned(
      left: rect!.left,
      right: MediaQuery.of(context).size.width - rect!.right,
      top: rect!.top,
      bottom: MediaQuery.of(context).size.height - rect!.bottom,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: storycolorAnimation!.value,
        ),
      ),
      duration: animationDuration,
    );
  }
}
