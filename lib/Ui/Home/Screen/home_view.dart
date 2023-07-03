import 'dart:math';

import 'package:cv/Ui/Groups/Screen/group.dart';
import 'package:cv/Ui/Home/Screen/addpost.dart';
import 'package:cv/Ui/Home/Story/app_data/story_data.dart';
import 'package:cv/Ui/Home/Story/helper/constant.dart';
import 'package:cv/Ui/Home/Story/page_animations/page_routes_animation.dart';
import 'package:cv/Ui/Home/Story/view/home_view/widgets/user_story_item.dart';
import 'package:cv/Ui/Home/Story/view/story_feed/story_feed_view.dart';
import 'package:cv/Ui/Home/Wdgets/corporate_updates.dart';
import 'package:cv/Ui/Home/Wdgets/follow.dart';
import 'package:cv/Ui/ITEM_SAVED/item_saved_screen.dart';
import 'package:cv/Ui/Notification/Widget/image.dart';
import 'package:cv/Ui/Notification/drower.dart';
import 'package:cv/Ui/Profiles/Widget/followers.dart';
import 'package:cv/Ui/Profiles/profilescreen.dart';
import 'package:cv/Ui/Room/voice_screen.dart';
import 'package:cv/Ui/Search/search_home.dart';
import 'package:cv/Ui/SingIn/singin.dart';
import 'package:cv/Ui/aaaaaaaaaa.dart';
import 'package:cv/Ui/testt.dart';
import 'package:cv/bloc/cubit_chat/cubit.dart';
import 'package:cv/bloc/cubit_post/cubit.dart';
import 'package:cv/bloc/cubit_post/states.dart';
import 'package:cv/core/cache_helper.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:cv/core/string.dart';
import 'package:cv/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:rect_getter/rect_getter.dart';
import 'package:share_plus/share_plus.dart';

import '../../../bloc/cubit_navbar/cubit.dart';
import '../../../bloc/cubit_navbar/states.dart';
import '../../../modle/user.dart';
import '../../Chats/list_chats.dart';

var uFirstName = "";

var uLastName = "";

var uImage = "";

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
  var textController = TextEditingController();
  var formKey = GlobalKey<FormState>();



  @override
  void initState() {
    ChatCubit.get(context).getUsers();

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
    return
        //(CvPostCubit.get(context).posts.length > 0)
        BlocProvider(
      create: (BuildContext context) => SocialCubit()..getUserData(),
      child: BlocConsumer<SocialCubit, SocialStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
                floatingActionButton: GestureDetector(
                  onTap: () {
                    navigateTo(context, AddPost());
                  },
                  child: Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(45)),
                        color: AppColor.main),
                    child: Icon(
                      Icons.add,
                      color: AppColor.white,
                    ),
                  ),
                ),
                backgroundColor: AppColor.backgroundColorF3,
                appBar: AppBar(
                  centerTitle: true,
                  title:
                     GestureDetector(
                      onTap: () {
                        print('${SocialCubit.get(context).user!.firstname}');
                        print('${SocialCubit.get(context).user!.firstname}');
                        navigateTo(context, aaaaaaaa());
                        print(
                            '8888888888888888888888888888888888888888888888888888888');
                      },
                      child: CustomText(
                        text: "الرئيسية",
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        colors: Colors.white,
                      ),
                    ),

                  leadingWidth: 90,
                  systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarColor: AppColor.main,
                      systemNavigationBarColor: AppColor.black,
                      systemNavigationBarDividerColor: AppColor.white),
                  elevation: 0,
                  leading: Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            navigateTo(context, List_Chat());
                          },
                          child: SvgPicture.asset(
                            "assets/images/iconmes.svg",
                            width: 28,
                            height: 28,
                          ),
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
                        child: Builder(
                            builder: (context) => IconButton(
                                icon: SvgPicture.asset(
                                  "assets/images/iocnmune.svg",
                                  width: 26,
                                  height: 26,
                                ),
                                onPressed: () =>
                                    Scaffold.of(context).openDrawer())))
                  ],
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
                        ListTile(
                          leading: Images(
                            "${SocialCubit.get(context).user?.image ?? ""}",
                          ),
                          title: Text(
                              "${SocialCubit.get(context).user?.firstname ?? "User Name"} ${SocialCubit.get(context).user?.lastName ?? ""}"),
                          subtitle: Text(
                            "مصمم واجهات مستخدم",
                            style: TextStyle(height: 0.9),
                          ),
                          trailing: GestureDetector(
                            onTap: () {
                              if (SocialCubit.get(context).user?.uId == UId) {
                                navigateAndFinish(context, Profile());
                              }
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
                        SizedBox(
                          height: 11,
                        ),
                        myDivider(),
                        SizedBox(
                          height: 11,
                        ),
                        GestureDetector(
                            onTap: () {
                              navigateTo(context, item());
                            },
                            child: drawer(
                                "العناصر المحفوظة", IconlyLight.bookmark)),
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
                            onTap: () {
                              navigateTo(context, Group());
                            },
                            child: drawer("المجموعات", IconlyLight.user_1)),
                        SizedBox(
                          height: 11,
                        ),
                        GestureDetector(
                            onTap: () {
                              navigateTo(context, VoiceRoom());
                            },
                            child:
                                drawer("الغرف الصوتية", IconlyLight.voice_2)),
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
                        GestureDetector(
                            onTap: () async {
                              void signOut(context) {
                                CacheHelper.removeData(
                                  key: 'uid',
                                ).then((value) {
                                  CacheHelper.removeData(
                                    key: 'userStats',
                                  );
                                  if (value) {
                                    navigateAndFinish(
                                      context,
                                      Chos(),
                                    );
                                  }
                                });
                              }
                              print("${CacheHelper.getData(key:'userStats')}686686886");

                              FirebaseAuth auth = FirebaseAuth.instance;
                              await auth.signOut();
                              signOut(context);
                            },
                            child: drawer("تسجيل الخروج", IconlyLight.logout)),
                      ],
                    ),
                  ),
                ),
                body: BlocConsumer<CvPostCubit, CvPostStates>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return SingleChildScrollView(
                        child: Form(
                          key: formKey,
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
                                      CircleAvatar(
                                          radius: 28,
                                          backgroundImage: AssetImage(
                                              "assets/images/photo_female_6.jpg"),
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
                                        physics:
                                            const NeverScrollableScrollPhysics(),
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
                                                    physics:
                                                        const BouncingScrollPhysics(),
                                                    itemCount: items.length,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemBuilder: (ctx, index) {
                                                      return Column(
                                                        children: [
                                                          GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                current = index;
                                                              });
                                                            },
                                                            child:
                                                                AnimatedContainer(
                                                              duration:
                                                                  const Duration(
                                                                      milliseconds:
                                                                          300),
                                                              margin:
                                                                  const EdgeInsetsDirectional
                                                                          .only(
                                                                      start: 15),
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                          .only(
                                                                      top: 2,
                                                                      bottom: 2,
                                                                      start: 13,
                                                                      end: 13),
                                                              height: 30,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: current ==
                                                                        index
                                                                    ? AppColor
                                                                        .main
                                                                    : AppColor
                                                                        .white,
                                                                borderRadius: current ==
                                                                        index
                                                                    ? BorderRadius
                                                                        .circular(
                                                                            5)
                                                                    : BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              child: Center(
                                                                child: Text(
                                                                  items[index],
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'Tajawal',
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color: current ==
                                                                              index
                                                                          ? AppColor
                                                                              .white
                                                                          : AppColor
                                                                              .black),
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
                                                  // (SocialCubit.get(context).posts.length > 0 &&
                                                  //     SocialCubit.get(context).posts != null)?
                                                  (CvPostCubit.get(context)
                                                              .postsList !=
                                                          null)
                                                      ? Container(
                                                          margin: EdgeInsets
                                                              .symmetric(
                                                                  horizontal: 15),
                                                          child: Column(
                                                            children: [
                                                              ListView.builder(
                                                                  shrinkWrap:
                                                                      true,
                                                                  physics:
                                                                      NeverScrollableScrollPhysics(),
                                                                  itemCount:
                                                                      CvPostCubit.get(
                                                                              context)
                                                                          .postsList
                                                                          .length,
                                                                  itemBuilder: (context,
                                                                          index) =>
                                                                      BlocBuilder<
                                                                          CvPostCubit,
                                                                          CvPostStates>(
                                                                        builder:
                                                                            (context,
                                                                                state) {
                                                                          return Padding(
                                                                            padding:
                                                                                EdgeInsets.only(bottom: 20),
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              child:
                                                                                  SafeArea(
                                                                                child: Container(
                                                                                  color: AppColor.white,
                                                                                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                                                                                  child: Column(
                                                                                    children: [
                                                                                      const SizedBox(
                                                                                        height: 20,
                                                                                      ),
                                                                                      Row(
                                                                                        children: [
                                                                                          CircleAvatar(
                                                                                            backgroundImage: NetworkImage(
                                                                                              CvPostCubit.get(context).postsList[index].values.single.image!,
                                                                                            ),
                                                                                            radius: 20,
                                                                                          ),
                                                                                          const SizedBox(
                                                                                            width: 5,
                                                                                          ),
                                                                                          Column(
                                                                                            children: <Widget>[
                                                                                              SizedBox(
                                                                                                height: 20,
                                                                                              ),
                                                                                              GestureDetector(
                                                                                                onTap: () {
                                                                                                  if (CvPostCubit.get(context).postsList[index].values.single.postId == SocialCubit.get(context).user?.uId) {
                                                                                                    CacheHelper.sharedPreferences!.setString("PostId", "${CvPostCubit.get(context).postsList[index].values.single.postId}");
                                                                                                    print("Post My ID ${CacheHelper.sharedPreferences!.getString('PostId')}");

                                                                                                    navigateAndFinish(context, Profile());
                                                                                                  } else {
                                                                                                    CacheHelper.sharedPreferences!.setString("PostId", "${CvPostCubit.get(context).postsList[index].values.single.postId}");
                                                                                                    print("Post You ID ${CacheHelper.sharedPreferences!.getString('PostId')}");

                                                                                                    uFirstName = CvPostCubit.get(context).postsList[index].values.single.firstname.toString();
                                                                                                    uLastName = CvPostCubit.get(context).postsList[index].values.single.lastName.toString();
                                                                                                    uImage = CvPostCubit.get(context).postsList[index].values.single.image.toString();
                                                                                                    print(uFirstName);
                                                                                                    print(uLastName);
                                                                                                    navigateAndFinish(context, Profile());
                                                                                                  }
                                                                                                },
                                                                                                child: Text(
                                                                                                  "${CvPostCubit.get(context).postsList[index].values.single.firstname!} ${CvPostCubit.get(context).postsList[index].values.single.lastName!}",
                                                                                                  style: TextStyle(
                                                                                                    fontFamily: 'Tajawal',
                                                                                                    fontSize: 12,
                                                                                                    fontWeight: FontWeight.w400,
                                                                                                    color: AppColor.mulledWine55,
                                                                                                  ),
                                                                                                  textAlign: TextAlign.right,
                                                                                                ),
                                                                                              ),
                                                                                              SizedBox(
                                                                                                height: 6,
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.only(start: 10),
                                                                                                child: Text(
                                                                                                  "${CvPostCubit.get(context).postsList[index].values.single.time!}",
                                                                                                  style: TextStyle(
                                                                                                    fontFamily: 'Tajawal',
                                                                                                    fontWeight: FontWeight.w400,
                                                                                                    fontSize: 11,
                                                                                                    color: AppColor.grayishblue99a0aa,
                                                                                                  ),
                                                                                                  softWrap: false,
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          const Spacer(),
                                                                                          IconButton(
                                                                                              onPressed: () {
                                                                                                showModalBottomSheet(
                                                                                                    isScrollControlled: true,
                                                                                                    clipBehavior: Clip.antiAlias,
                                                                                                    backgroundColor: Colors.transparent,
                                                                                                    enableDrag: true,
                                                                                                    isDismissible: true,
                                                                                                    context: context,
                                                                                                    builder: (BuildContext) {
                                                                                                      return Container(
                                                                                                          height: MediaQuery.of(context).size.height / 3.8,
                                                                                                          width: double.infinity,
                                                                                                          decoration: BoxDecoration(
                                                                                                            color: AppColor.white,
                                                                                                            borderRadius: BorderRadius.only(
                                                                                                              topLeft: Radius.circular(20.0),
                                                                                                              topRight: Radius.circular(20.0),
                                                                                                            ),
                                                                                                            boxShadow: [
                                                                                                              BoxShadow(
                                                                                                                color: const Color(0x3dc5c5c5),
                                                                                                                offset: Offset(0, -2),
                                                                                                                blurRadius: 10,
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                          child: Padding(
                                                                                                              padding: EdgeInsets.fromLTRB(34.0, 20.0, 34.0, 00.0),
                                                                                                              child: SizedBox.expand(
                                                                                                                child: Column(
                                                                                                                  children: [
                                                                                                                    GestureDetector(
                                                                                                                        onTap: () {
                                                                                                                          CvPostCubit.get(context).updatePostSave(CvPostCubit.get(context).postsList[index]);
                                                                                                                          // if (CvPostCubit.get(context).postsList[index].values.single.itemsave == false) {
                                                                                                                          //   CvPostCubit.get(context).updateItemSave(index);
                                                                                                                          //   print("add");
                                                                                                                          // } else {
                                                                                                                          //   CvPostCubit.get(context).updateRemoveItemSave(index);
                                                                                                                          //   print("Remove");
                                                                                                                          // }
                                                                                                                          Navigator.pop(context);
                                                                                                                        },
                                                                                                                        child:
                                                                                                                        CvPostCubit.get(context).postsList[index].values.single.itemsave.any((element) => element == SocialCubit.get(context).user?.uId)
                                                                                                                            ?bottomsheetm(
                                                                                                                          "تم حفظ المنشور",
                                                                                                                          IconlyBold.bookmark,
                                                                                                                        ):
                                                                                                                        bottomsheet("حفظ المنشور", IconlyLight.bookmark)
                                                                                                                             ),
                                                                                                                    bottomsheet("إلغاء متابعة اسم الشركة", IconlyLight.profile),
                                                                                                                    bottomsheet("إخفاء المنشور", IconlyLight.close_square),
                                                                                                                    bottomsheet("تشغيل الإشعارات لهذا الحساب", IconlyLight.notification),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              )));
                                                                                                    });
                                                                                              },
                                                                                              icon: const Icon(
                                                                                                Icons.more_horiz_rounded,
                                                                                                color: AppColor.grayishblue99a0aa,
                                                                                              ))
                                                                                        ],
                                                                                      ),
                                                                                      SizedBox(
                                                                                        height: 10,
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional.centerStart,
                                                                                        child: Text(
                                                                                          "${CvPostCubit.get(context).postsList[index].values.single.text!}",
                                                                                          style: TextStyle(
                                                                                            fontFamily: 'Tajawal',
                                                                                            fontSize: 11,
                                                                                            color: AppColor.mulledWine55,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      SizedBox(
                                                                                        height: (i > 0 && i <= 4)
                                                                                            ? 22
                                                                                            : (i > 4 && i <= 8)
                                                                                                ? 40
                                                                                                : (i > 8 && i <= 12)
                                                                                                    ? 65
                                                                                                    : 80,
                                                                                        child: GridView.builder(
                                                                                          physics: NeverScrollableScrollPhysics(),
                                                                                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: .7 / .20),
                                                                                          itemCount: i,
                                                                                          itemBuilder: (context, index) {
                                                                                            return GestureDetector(
                                                                                              onTap: () {},
                                                                                              child: const Padding(
                                                                                                padding: EdgeInsets.all(5.0),
                                                                                                child: Text(
                                                                                                  ' # لوريم_ابسوم',
                                                                                                  style: TextStyle(
                                                                                                    fontFamily: 'Tajawal',
                                                                                                    fontSize: 11,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    color: AppColor.main,
                                                                                                  ),
                                                                                                  softWrap: false,
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                      ),

                                                                                      (CvPostCubit.get(context).postsList[index].values.single.postImage!.isNotEmpty)
                                                                                          ? Container(
                                                                                              height: 280.0,
                                                                                              child: Stack(children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsetsDirectional.only(top: 15.0),
                                                                                                  child: Container(
                                                                                                    height: 250.0,
                                                                                                    width: MediaQuery.of(context).size.width / 1,
                                                                                                    // width: double.infinity,
                                                                                                    decoration: BoxDecoration(
                                                                                                      borderRadius: BorderRadius.circular(
                                                                                                        4.0,
                                                                                                      ),
                                                                                                      image: DecorationImage(
                                                                                                        image: NetworkImage(
                                                                                                          '${CvPostCubit.get(context).postsList[index].values.single.postImage}',
                                                                                                        ),
                                                                                                        fit: BoxFit.cover,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Positioned(
                                                                                                  right: 00,
                                                                                                  bottom: 0,
                                                                                                  child: Row(
                                                                                                    children: [
                                                                                                      CircleAvatar(
                                                                                                        backgroundColor: AppColor.white,
                                                                                                        radius: 18,
                                                                                                        child: IconButton(
                                                                                                          onPressed: () {
                                                                                                            CvPostCubit.get(context).updatePostLikes(CvPostCubit.get(context).postsList[index]);
                                                                                                          },
                                                                                                          icon: Icon(
                                                                                                            CvPostCubit.get(context).postsList[index].values.single.likes.any((element) =>
                                                                                                            element == SocialCubit.get(context).user?.uId) ? IconlyBold.heart : IconlyLight.heart,
                                                                                                            color: Colors.red,
                                                                                                            size: 24,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      const SizedBox(
                                                                                                        width: 6,
                                                                                                      ),
                                                                                                      CircleAvatar(
                                                                                                        backgroundColor: AppColor.main,
                                                                                                        radius: 18,
                                                                                                        child: IconButton(
                                                                                                          onPressed: () {

                                                                                                          },
                                                                                                          icon: const Icon(
                                                                                                            IconlyLight.chat,
                                                                                                            color: AppColor.white,
                                                                                                            size: 22,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      const SizedBox(
                                                                                                        width: 6,
                                                                                                      ),
                                                                                                      CircleAvatar(
                                                                                                        backgroundColor: AppColor.main,
                                                                                                        radius: 18,
                                                                                                        child: IconButton(
                                                                                                          onPressed: () async {
                                                                                                            if (CvPostCubit.get(context).postsList[index].values.single.postImage!.isNotEmpty) {
                                                                                                              final img = await imageFromURL(
                                                                                                                'temp',
                                                                                                                CvPostCubit.get(context).postsList[index].values.single.postImage!,
                                                                                                              );

                                                                                                              Share.shareFiles(
                                                                                                                [img!.path],
                                                                                                                text: CvPostCubit.get(context).postsList[index].values.single.text,
                                                                                                              ).whenComplete(() {
                                                                                                                CvPostCubit.get(context).updatePostShares(CvPostCubit.get(context).postsList[index]);
                                                                                                              });
                                                                                                            } else {
                                                                                                              Share.share(
                                                                                                                CvPostCubit.get(context).postsList[index].values.single.text!,
                                                                                                              ).whenComplete(() {
                                                                                                                CvPostCubit.get(context).updatePostShares(CvPostCubit.get(context).postsList[index]);
                                                                                                              });
                                                                                                            }
                                                                                                          },
                                                                                                          icon: const Icon(
                                                                                                            Icons.share_outlined,
                                                                                                            color: AppColor.white,
                                                                                                            size: 20,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      const SizedBox(
                                                                                                        width: 6,
                                                                                                      ),
                                                                                                      CircleAvatar(
                                                                                                        backgroundColor: AppColor.main,
                                                                                                        radius: 18,
                                                                                                        child: IconButton(
                                                                                                          onPressed: () {},
                                                                                                          icon: Icon(
                                                                                                            color: AppColor.white,
                                                                                                            size: 22,
                                                                                                            Icons.insert_link_outlined,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ]))
                                                                                          : Container(
                                                                                              height: 40.0,
                                                                                              child: Row(
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                                                                children: [
                                                                                                  CircleAvatar(
                                                                                                    backgroundColor: AppColor.white,
                                                                                                    radius: 18,
                                                                                                    child: IconButton(
                                                                                                      onPressed: () {
                                                                                                        CvPostCubit.get(context).updatePostLikes(CvPostCubit.get(context).postsList[index]);
                                                                                                      },
                                                                                                      icon: Icon(
                                                                                                        CvPostCubit.get(context).postsList[index].values.single.likes.any((element) => element == SocialCubit.get(context).user?.uId) ? IconlyBold.heart : IconlyLight.heart,
                                                                                                        color: Colors.red,
                                                                                                        size: 24,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  const SizedBox(
                                                                                                    width: 6,
                                                                                                  ),
                                                                                                  CircleAvatar(
                                                                                                    backgroundColor: AppColor.main,
                                                                                                    radius: 18,
                                                                                                    child: IconButton(
                                                                                                      onPressed: () {},
                                                                                                      icon: const Icon(
                                                                                                        IconlyLight.chat,
                                                                                                        color: AppColor.white,
                                                                                                        size: 22,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  const SizedBox(
                                                                                                    width: 6,
                                                                                                  ),
                                                                                                  CircleAvatar(
                                                                                                    backgroundColor: AppColor.main,
                                                                                                    radius: 18,
                                                                                                    child: IconButton(
                                                                                                      onPressed: () async {
                                                                                                        if (CvPostCubit.get(context).postsList[index].values.single.postImage!.isNotEmpty) {
                                                                                                          final img = await imageFromURL(
                                                                                                            'temp',
                                                                                                            CvPostCubit.get(context).postsList[index].values.single.postImage!,
                                                                                                          );

                                                                                                          Share.shareFiles(
                                                                                                            [img!.path],
                                                                                                            text: CvPostCubit.get(context).postsList[index].values.single.text,
                                                                                                          ).whenComplete(() {
                                                                                                            CvPostCubit.get(context).updatePostShares(CvPostCubit.get(context).postsList[index]);
                                                                                                          });
                                                                                                        } else {
                                                                                                          Share.share(
                                                                                                            CvPostCubit.get(context).postsList[index].values.single.text!,
                                                                                                          ).whenComplete(() {
                                                                                                            CvPostCubit.get(context).updatePostShares(CvPostCubit.get(context).postsList[index]);
                                                                                                          });
                                                                                                        }
                                                                                                      },
                                                                                                      icon: const Icon(
                                                                                                        Icons.share_outlined,
                                                                                                        color: AppColor.white,
                                                                                                        size: 20,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  const SizedBox(
                                                                                                    width: 6,
                                                                                                  ),
                                                                                                  CircleAvatar(
                                                                                                    backgroundColor: AppColor.main,
                                                                                                    radius: 18,
                                                                                                    child: IconButton(
                                                                                                      onPressed: () {},
                                                                                                      icon: Icon(
                                                                                                        color: AppColor.white,
                                                                                                        size: 22,
                                                                                                        Icons.insert_link_outlined,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              )),

                                                                                      const SizedBox(
                                                                                        height: 20,
                                                                                      ),
                                                                                      Row(
                                                                                        children: [
                                                                                          Stack(children: [
                                                                                            CircleAvatar(
                                                                                              backgroundImage: AssetImage("assets/images/photo_female_5.jpg"),
                                                                                              radius: 14,
                                                                                            ),
                                                                                            Padding(
                                                                                                padding: EdgeInsets.only(right: 11.5),
                                                                                                child: CircleAvatar(
                                                                                                  backgroundImage: AssetImage("assets/images/photo_female_4.jpg"),
                                                                                                  radius: 14,
                                                                                                )),
                                                                                            Padding(
                                                                                                padding: EdgeInsets.only(right: 23.0),
                                                                                                child: CircleAvatar(
                                                                                                  backgroundImage: AssetImage("assets/images/photo_female_6.jpg"),
                                                                                                  radius: 14,
                                                                                                )),
                                                                                            Padding(
                                                                                                padding: EdgeInsets.only(right: 33.0),
                                                                                                child: CircleAvatar(
                                                                                                  backgroundImage: AssetImage("assets/images/photo_female_7.jpg"),
                                                                                                  radius: 14,
                                                                                                )),
                                                                                            Padding(
                                                                                                padding: EdgeInsets.only(right: 45.0),
                                                                                                child: CircleAvatar(
                                                                                                  backgroundImage: AssetImage("assets/images/photo_male_7.jpg"),
                                                                                                  radius: 14,
                                                                                                )),
                                                                                          ]),
                                                                                          Column(
                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                            children: [
                                                                                              Align(
                                                                                                alignment: Alignment.topRight,
                                                                                                child: Container(
                                                                                                  padding: const EdgeInsets.only(right: 5),
                                                                                                  child: const Text(
                                                                                                    ' أحمد محمد\n و 5 أخرون أعجيهم ذلك',
                                                                                                    style: TextStyle(
                                                                                                      fontFamily: 'Tajawal',
                                                                                                      fontSize: 9,
                                                                                                      height: 1.5,
                                                                                                      color: Color(0xff514d55),
                                                                                                    ),
                                                                                                    softWrap: false,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          const Spacer(),
                                                                                          Row(
                                                                                            children: [
                                                                                              Row(
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsets.only(top: 8.0),
                                                                                                    child: Text(
                                                                                                      '${CvPostCubit.get(context).postsList[index].values.single.likes.length}',
                                                                                                      style: TextStyle(
                                                                                                        fontFamily: 'ITCHandelGothicArabic ☞',
                                                                                                        fontSize: 12,
                                                                                                        color: Color(0xff99a0aa),
                                                                                                        fontWeight: FontWeight.w400,
                                                                                                      ),
                                                                                                      softWrap: false,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Icon(
                                                                                                    IconlyLight.heart,
                                                                                                    color: AppColor.grayishblue99a0aa,
                                                                                                    size: 22,
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                              const SizedBox(
                                                                                                width: 10,
                                                                                              ),
                                                                                              Row(
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsets.only(top: 8.0),
                                                                                                    child: Text(
                                                                                                      '${CvPostCubit.get(context).postsList[index].values.single.shares}',
                                                                                                      style: TextStyle(
                                                                                                        fontFamily: 'ITCHandelGothicArabic ☞',
                                                                                                        fontSize: 12,
                                                                                                        color: Color(0xff99a0aa),
                                                                                                        fontWeight: FontWeight.w400,
                                                                                                      ),
                                                                                                      softWrap: false,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Icon(
                                                                                                    Icons.share_outlined,
                                                                                                    color: AppColor.grayishblue99a0aa,
                                                                                                    size: 22,
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                              const SizedBox(
                                                                                                width: 10,
                                                                                              ),
                                                                                              Row(
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsets.only(top: 8.0),
                                                                                                    child: Text(
                                                                                                      '${CvPostCubit.get(context).commentsList.length}',
                                                                                                      style: TextStyle(
                                                                                                        fontFamily: 'ITCHandelGothicArabic ☞',
                                                                                                        fontSize: 12,
                                                                                                        color: AppColor.grayishblue99a0aa,
                                                                                                        fontWeight: FontWeight.w400,
                                                                                                      ),
                                                                                                      softWrap: false,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Icon(
                                                                                                    IconlyLight.chat,
                                                                                                    color: AppColor.grayishblue99a0aa,
                                                                                                    size: 22,
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ],
                                                                                          )
                                                                                        ],
                                                                                      ),
                                                                                      SizedBox(
                                                                                        height: 10,
                                                                                      ),
                                                                                        Container(
                                                                                          margin: const EdgeInsets.symmetric(horizontal: 10),
                                                                                          child: Column(
                                                                                            children: [
                                                                                              const SizedBox(
                                                                                                height: 15,
                                                                                              ),
                                                                                              // const Divider(
                                                                                              //   color: AppColor.main,
                                                                                              // ),
                                                                                              // const SizedBox(
                                                                                              //   height: 5,
                                                                                              // ),
                                                                                              // const Align(
                                                                                              //     alignment: Alignment.centerRight,
                                                                                              //     child: Text(
                                                                                              //       'الأراء00',
                                                                                              //       style: TextStyle(
                                                                                              //         fontFamily: 'Tajawal',
                                                                                              //         fontSize: 12,
                                                                                              //         color: AppColor.mulledWine55,
                                                                                              //       ),
                                                                                              //       textAlign: TextAlign.right,
                                                                                              //     )),`
                                                                                              // const SizedBox(
                                                                                              //   height: 5,
                                                                                              // ),
                                                                                              ListView.builder(
                                                                                                shrinkWrap: true,
                                                                                                itemCount: CvPostCubit.get(context).commentsList.length,
                                                                                                itemBuilder: (ctx, index) {
                                                                                                  CacheHelper.sharedPreferences!.setString('post', '${CvPostCubit.get(context).postsList[index]}');
                                                                                                    return

                                                                                                      Column(
                                                                                                    children: [

                                                                                                      if (
                                                                                                      CvPostCubit.get(context).postsList[index].values.single.pid ==  CvPostCubit.get(context).commentsList[index].values.single.cid)
                                                                                                      const SizedBox(
                                                                                                        height: 10,
                                                                                                      ),

                                                                                                      Row(
                                                                                                        children: [
                                                                                                           CircleAvatar(
                                                                                                            backgroundImage: NetworkImage(CvPostCubit.get(context).commentsList[index].values.single.ownerImage),
                                                                                                            radius: 12,
                                                                                                            ),
                                                                                                          const SizedBox(
                                                                                                            width: 10,
                                                                                                          ),
                                                                                                          Column(
                                                                                                            children: <Widget>[
                                                                                                              Text(
                                                                                                                '${CvPostCubit.get(context).commentsList[index].values.single.ownerName}',
                                                                                                                style: TextStyle(
                                                                                                                  fontFamily: 'Tajawal',
                                                                                                                  fontSize: 10,
                                                                                                                  color: AppColor.mulledWine55,
                                                                                                                ),
                                                                                                                softWrap: false,
                                                                                                              ),
                                                                                                              Text(
                                                                                                                '${CvPostCubit.get(context).commentsList[index].values.single.time}',
                                                                                                                style: TextStyle(fontFamily: 'Tajawal', fontSize: 8, fontWeight: FontWeight.w700, color: AppColor.mulledWine55),
                                                                                                                textAlign: TextAlign.right,
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                          const Spacer(),
                                                                                                          const Icon(
                                                                                                            Icons.more_horiz_outlined,
                                                                                                            color: AppColor.grayishblue99a0aa,
                                                                                                          ),
                                                                                                          const SizedBox(
                                                                                                            width: 20,
                                                                                                          )
                                                                                                        ],
                                                                                                      ),
                                                                                                      const SizedBox(
                                                                                                        height: 15,
                                                                                                      ),
                                                                                                       Padding(
                                                                                                        padding: EdgeInsets.only(left: 18.0, right: 28),
                                                                                                        child: SingleChildScrollView(
                                                                                                          primary: false,
                                                                                                          child: Text(
                                                                                                            '${CvPostCubit.get(context).commentsList[index].values.single.text}',
                                                                                                            style: TextStyle(
                                                                                                              fontFamily: 'Tajawal',
                                                                                                              fontSize: 11,
                                                                                                              color: AppColor.b10000d,
                                                                                                            ),
                                                                                                            textAlign: TextAlign.right,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      const SizedBox(
                                                                                                        height: 8,
                                                                                                       ),
                                                                                                      // const Divider(
                                                                                                      //   color: AppColor.main,
                                                                                                      // ),

                                                                                                    ],
                                                                                                  );
                                                                                                },
                                                                                              ),
//                                                                                               Padding(
//                                                                                                 padding: const EdgeInsets
//                                                                                                     .only(
//                                                                                                     right:
//                                                                                                     28.0),
//                                                                                                 child: Row(
//                                                                                                   children: const [
//                                                                                                     Icon(
//                                                                                                       Icons
//                                                                                                           .cached_sharp,
//                                                                                                       color:
//                                                                                                       AppColor.main,
//                                                                                                       size:
//                                                                                                       21,
//                                                                                                     ),
//                                                                                                     SizedBox(
//                                                                                                       width:
//                                                                                                       8,
//                                                                                                     ),
//                                                                                                     Text(
//                                                                                                       'تحميل المزيد من الأراء',
//                                                                                                       style:
//                                                                                                       TextStyle(
//                                                                                                         fontFamily:
//                                                                                                         'Tajawal',
//                                                                                                         fontSize:
//                                                                                                         12,
//                                                                                                         color:
//                                                                                                         AppColor.main,
//                                                                                                       ),
//                                                                                                       textAlign:
//                                                                                                       TextAlign.right,
//                                                                                                     ),
//                                                                                                   ],
//                                                                                                 ),
//                                                                                               ),
//                                                                                               const SizedBox(
//                                                                                                 height: 15,
//                                                                                               ),
//                                                                                               TextFormField(
//
//                                                                                                   autocorrect:
//                                                                                                   true,
//                                                                                                   controller:
//                                                                                                   textController,
//                                                                                                   decoration:
//                                                                                                   InputDecoration(
//                                                                                                     suffixIcon: MaterialButton(
//                                                                                                         minWidth: 1,
//                                                                                                         onPressed: () {
//                                                                                                           if (formKey.currentState!.validate()) {
//                                                                                                             print("aaa");
//                                                                                                             CvPostCubit.get(context).createComment(
//
//                                                                                                                 time: DateFormat('kk:mm EEE d MMM').format(DateTime.now()),
//                                                                                                                 text: textController.text,
//                                                                                                                 ownerName:SocialCubit.get(context).user!.firstname +" " + SocialCubit.get(context).user!.lastName ,
//                                                                                                                 ownerImage: SocialCubit.get(context).user!.image,
//                                                                                                                 post: CvPostCubit.get(context).postsList[index]);
//
//                                                                                                           }
//                                                                                                           textController.clear();
//                                                                                                         },
//                                                                                                         child: SizedBox(
//                                                                                                           width: 50,
//                                                                                                           child: Row(
//                                                                                                             children: [
//                                                                                                               Container(
//                                                                                                                 height: 60,
//                                                                                                                 width: 0.5,
//                                                                                                                 color: AppColor.linkWaterD0D6E0,
//                                                                                                               ),
//                                                                                                               SizedBox(
//                                                                                                                 width: 20,
//                                                                                                               ),
//                                                                                                               Transform.rotate(
//                                                                                                                angle: 1.5 * pi,
//                                                                                                                 child: Icon(
//                                                                                                                   IconlyLight.send,
//                                                                                                                   size: 24,
//                                                                                                                   color: AppColor.mulledWine55,
//                                                                                                                 ),
//                                                                                                               ),
//                                                                                                             ],
//                                                                                                           ),
//                                                                                                         )),
// //(Transform.rotate(
// //                   angle: 1 * pi,
//                                                                                                     disabledBorder:
//                                                                                                     const OutlineInputBorder(borderSide: BorderSide(width: 1, color: AppColor.linkWaterD0D6E0)),
//                                                                                                     focusedBorder:
//                                                                                                     const OutlineInputBorder(borderSide: BorderSide(width: 1, color: AppColor.linkWaterD0D6E0)),
//                                                                                                     filled:
//                                                                                                     true,
//                                                                                                     fillColor:
//                                                                                                     AppColor.white,
//                                                                                                     contentPadding: const EdgeInsets.symmetric(
//                                                                                                         horizontal:
//                                                                                                         0,
//                                                                                                         vertical:
//                                                                                                         10),
//                                                                                                     hintText:
//                                                                                                     'اكتب تعليقك',
//                                                                                                     prefixIcon:
//                                                                                                      Padding(
//                                                                                                       padding:
//                                                                                                       EdgeInsets.all(9.0),
//                                                                                                       child:
//                                                                                                       CircleAvatar(
//                                                                                                         backgroundImage: NetworkImage(
//                                                                                                           SocialCubit.get(context).user?.image,
//                                                                                                         ),
//
//
//                                                                                                         radius:
//                                                                                                         7,
//                                                                                                       ),
//                                                                                                     ),
//                                                                                                     enabledBorder: OutlineInputBorder(
//                                                                                                         borderSide: const BorderSide(
//                                                                                                           width: 1,
//                                                                                                           color: AppColor.linkWaterD0D6E0,
//                                                                                                         ),
//                                                                                                         borderRadius: BorderRadius.circular(8.0)),
//                                                                                                   )),
//                                                                                               const SizedBox(
//                                                                                                 height: 20,
//                                                                                               )
                                                                                            ],
                                                                                          ),
                                                                                        )
                                                                                      //   (state == 1) ? Comments() : Container()
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                          // postWidget(
                                                                          //   context,
                                                                          //   0,
                                                                          //   CvPostCubit.get(context)
                                                                          //       .posts[index],
                                                                          //   index);
                                                                        },
                                                                      )),

                                                              // Padding(
                                                              //   padding:
                                                              //       const EdgeInsets.symmetric(
                                                              //           horizontal: 20),
                                                              //   child: Align(
                                                              //     alignment:
                                                              //         Alignment.centerRight,
                                                              //     child: Text(
                                                              //       'شركات مقترحة',
                                                              //       style: TextStyle(
                                                              //         fontFamily: 'Tajawal',
                                                              //         fontSize: 12,
                                                              //         color: AppColor.b10000d,
                                                              //       ),
                                                              //       textAlign: TextAlign.right,
                                                              //     ),
                                                              //   ),
                                                              // ),

                                                              // Container(
                                                              //   margin: EdgeInsets.symmetric(
                                                              //       vertical: 10),
                                                              //   height: 140,
                                                              //   child: ListView.builder(
                                                              //       padding:
                                                              //           EdgeInsets.symmetric(
                                                              //               horizontal: 10),
                                                              //       itemCount: 3,
                                                              //       scrollDirection:
                                                              //           Axis.horizontal,
                                                              //       itemBuilder:
                                                              //           (context, index) =>
                                                              //               Padding(
                                                              //                 padding: const EdgeInsets
                                                              //                         .symmetric(
                                                              //                     horizontal:
                                                              //                         10),
                                                              //                 child: follow(),
                                                              //               )),
                                                              // ),

                                                              //   postWidget(context, 0),
                                                            ],
                                                          ),
                                                        )
                                                      : Container()
                                                  : current == 1
                                                      ? Column(
                                                          children: [
                                                            SizedBox(height: 15),
                                                          ],
                                                        )
                                                      : CircularProgressIndicator()
                                            ],
                                          ),
                                        )),
                                    SizedBox(
                                      height: 50,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                      // SizedBox(height: 10),
                      // postWidget(context),
                    }));
          }),
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

//
