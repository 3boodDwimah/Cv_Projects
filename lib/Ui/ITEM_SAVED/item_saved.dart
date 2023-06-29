import 'package:cv/Ui/Home/Wdgets/corporate_updates.dart';
import 'package:cv/bloc/cubit_post/cubit.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';
import 'package:share_plus/share_plus.dart';

import '../../bloc/cubit_navbar/cubit.dart';
import '../../bloc/cubit_post/states.dart';

class Filses extends StatefulWidget {
  const Filses({Key? key}) : super(key: key);

  @override
  State<Filses> createState() => _FilsesState();
}

List<String> items2 = [
  "الكل",
  "المنشورات",
  "الفيديوهات",
  "الريلز",
  "روابط",
];

int current2 = 0;

var nameController = TextEditingController();

class _FilsesState extends State<Filses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.backgroundColorF3,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: SafeArea(
                  child: Column(children: [
                const SizedBox(
                  height: 7,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
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
                            ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount:
                                    CvPostCubit.get(context).postsList.length,
                                itemBuilder:
                                    (context, index) =>
                                        BlocBuilder<CvPostCubit, CvPostStates>(
                                          builder: (context, state) {
                                            return (CvPostCubit.get(context)
                                                        .postsList[index]
                                                        .values
                                                        .single
                                                        .itemsave ==
                                                    true && CvPostCubit.get(context).postsSave[0].values.single.id == uId)
                                                ? Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 20),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: SafeArea(
                                                        child: Container(
                                                          color: AppColor.white,
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 20,
                                                                  right: 20,
                                                                  bottom: 20),
                                                          child: Column(
                                                            children: [
                                                              const SizedBox(
                                                                height: 20,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  CircleAvatar(
                                                                    backgroundImage:
                                                                        NetworkImage(
                                                                      CvPostCubit.get(
                                                                              context)
                                                                          .postsList[
                                                                              index]
                                                                          .values
                                                                          .single
                                                                          .image!,
                                                                    ),
                                                                    radius: 20,
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 5,
                                                                  ),
                                                                  Column(
                                                                    children: <
                                                                        Widget>[
                                                                      SizedBox(
                                                                        height:
                                                                            20,
                                                                      ),
                                                                      GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          // if (CvPostCubit.get(context).postsList[index].values.single.postId == SocialCubit.get(context).user?.uId) {
                                                                          //   CacheHelper.sharedPreferences!.setString("PostId", "${CvPostCubit.get(context).postsList[index].values.single.postId}");
                                                                          //   print("Post My ID ${CacheHelper.sharedPreferences!.getString('PostId')}");
                                                                          //
                                                                          //   navigateAndFinish(context, Profile());
                                                                          // } else {
                                                                          //   CacheHelper.sharedPreferences!.setString("PostId", "${CvPostCubit.get(context).postsList[index].values.single.postId}");
                                                                          //   print("Post You ID ${CacheHelper.sharedPreferences!.getString('PostId')}");
                                                                          //
                                                                          //   uFirstName = CvPostCubit.get(context).postsList[index].values.single.firstname.toString();
                                                                          //   uLastName = CvPostCubit.get(context).postsList[index].values.single.lastName.toString();
                                                                          //   uImage = CvPostCubit.get(context).postsList[index].values.single.image.toString();
                                                                          //   print(uFirstName);
                                                                          //   print(uLastName);
                                                                          //   navigateAndFinish(context, Profile());
                                                                          //  }
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          "${CvPostCubit.get(context).postsList[index].values.single.firstname!} ${CvPostCubit.get(context).postsList[index].values.single.lastName!}",
                                                                          style:
                                                                              TextStyle(
                                                                            fontFamily:
                                                                                'Tajawal',
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            color:
                                                                                AppColor.mulledWine55,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.right,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            6,
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            EdgeInsetsDirectional.only(start: 10),
                                                                        child:
                                                                            Text(
                                                                          "${CvPostCubit.get(context).postsList[index].values.single.time!}",
                                                                          style:
                                                                              TextStyle(
                                                                            fontFamily:
                                                                                'Tajawal',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            fontSize:
                                                                                11,
                                                                            color:
                                                                                AppColor.grayishblue99a0aa,
                                                                          ),
                                                                          softWrap:
                                                                              false,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  const Spacer(),
                                                                  IconButton(
                                                                      onPressed:
                                                                          () {
                                                                        showModalBottomSheet(
                                                                            isScrollControlled:
                                                                                true,
                                                                            clipBehavior: Clip
                                                                                .antiAlias,
                                                                            backgroundColor: Colors
                                                                                .transparent,
                                                                            enableDrag:
                                                                                true,
                                                                            isDismissible:
                                                                                true,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (BuildContext) {
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
                                                                                                  if (CvPostCubit.get(context).postsList[index].values.single.itemsave == false) {
                                                                                                    CvPostCubit.get(context).updateItemSave(index);
                                                                                                    print("add");
                                                                                                  } else {
                                                                                                    CvPostCubit.get(context).updateRemoveItemSave(index);
                                                                                                    print("Remove");
                                                                                                  }
                                                                                                  Navigator.pop(context);
                                                                                                },
                                                                                                child: CvPostCubit.get(context).postsList[index].values.single.itemsave == false
                                                                                                    ? bottomsheet("حفظ المنشور", IconlyLight.bookmark)
                                                                                                    : bottomsheetm(
                                                                                                        "تم حفظ المنشور",
                                                                                                        IconlyBold.bookmark,
                                                                                                      )),
                                                                                            bottomsheet("إلغاء متابعة اسم الشركة", IconlyLight.profile),
                                                                                            bottomsheet("إخفاء المنشور", IconlyLight.close_square),
                                                                                            bottomsheet("تشغيل الإشعارات لهذا الحساب", IconlyLight.notification),
                                                                                          ],
                                                                                        ),
                                                                                      )));
                                                                            });
                                                                      },
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .more_horiz_rounded,
                                                                        color: AppColor
                                                                            .grayishblue99a0aa,
                                                                      ))
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional
                                                                        .centerStart,
                                                                child: Text(
                                                                  "${CvPostCubit.get(context).postsList[index].values.single.text!}",
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        'Tajawal',
                                                                    fontSize:
                                                                        11,
                                                                    color: AppColor
                                                                        .mulledWine55,
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: (i >
                                                                            0 &&
                                                                        i <= 4)
                                                                    ? 22
                                                                    : (i > 4 &&
                                                                            i <=
                                                                                8)
                                                                        ? 40
                                                                        : (i > 8 &&
                                                                                i <= 12)
                                                                            ? 65
                                                                            : 80,
                                                                child: GridView
                                                                    .builder(
                                                                  physics:
                                                                      NeverScrollableScrollPhysics(),
                                                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                                      crossAxisCount:
                                                                          4,
                                                                      childAspectRatio:
                                                                          .7 /
                                                                              .20),
                                                                  itemCount: i,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return GestureDetector(
                                                                      onTap:
                                                                          () {},
                                                                      child:
                                                                          const Padding(
                                                                        padding:
                                                                            EdgeInsets.all(5.0),
                                                                        child:
                                                                            Text(
                                                                          ' # لوريم_ابسوم',
                                                                          style:
                                                                              TextStyle(
                                                                            fontFamily:
                                                                                'Tajawal',
                                                                            fontSize:
                                                                                11,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color:
                                                                                AppColor.main,
                                                                          ),
                                                                          softWrap:
                                                                              false,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                              ),

                                                              (CvPostCubit.get(
                                                                          context)
                                                                      .postsList[
                                                                          index]
                                                                      .values
                                                                      .single
                                                                      .postImage!
                                                                      .isNotEmpty)
                                                                  ? Container(
                                                                      height:
                                                                          280.0,
                                                                      child: Stack(
                                                                          children: [
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
                                                                                      onPressed: () {
                                                                                        print("aaa");
                                                                                        CvPostCubit.get(context).createComment(
                                                                                            post: CvPostCubit.get(context).postsList[index],
                                                                                            time: "20:00", text: "text", ownerName: "Name", ownerImage: "Image");
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
                                                                      height:
                                                                          40.0,
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children: [
                                                                          CircleAvatar(
                                                                            backgroundColor:
                                                                                AppColor.white,
                                                                            radius:
                                                                                18,
                                                                            child:
                                                                                IconButton(
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
                                                                            width:
                                                                                6,
                                                                          ),
                                                                          CircleAvatar(
                                                                            backgroundColor:
                                                                                AppColor.main,
                                                                            radius:
                                                                                18,
                                                                            child:
                                                                                IconButton(
                                                                              onPressed: () {},
                                                                              icon: const Icon(
                                                                                IconlyLight.chat,
                                                                                color: AppColor.white,
                                                                                size: 22,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          const SizedBox(
                                                                            width:
                                                                                6,
                                                                          ),
                                                                          CircleAvatar(
                                                                            backgroundColor:
                                                                                AppColor.main,
                                                                            radius:
                                                                                18,
                                                                            child:
                                                                                IconButton(
                                                                              onPressed: () async {
                                                                                if (CvPostCubit.get(context).postsList[index].values.single.postImage!.isNotEmpty) {
                                                                                  final img = await imageFromURL(
                                                                                    'temp',
                                                                                    CvPostCubit.get(context).postsList[index].values.single.postImage!,
                                                                                  );

                                                                                  Share.shareFiles(
                                                                                    [
                                                                                      img!.path
                                                                                    ],
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
                                                                            width:
                                                                                6,
                                                                          ),
                                                                          CircleAvatar(
                                                                            backgroundColor:
                                                                                AppColor.main,
                                                                            radius:
                                                                                18,
                                                                            child:
                                                                                IconButton(
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
                                                                  Stack(
                                                                      children: [
                                                                        CircleAvatar(
                                                                          backgroundImage:
                                                                              AssetImage("assets/images/photo_female_5.jpg"),
                                                                          radius:
                                                                              14,
                                                                        ),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: 11.5),
                                                                            child: CircleAvatar(
                                                                              backgroundImage: AssetImage("assets/images/photo_female_4.jpg"),
                                                                              radius: 14,
                                                                            )),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: 23.0),
                                                                            child: CircleAvatar(
                                                                              backgroundImage: AssetImage("assets/images/photo_female_6.jpg"),
                                                                              radius: 14,
                                                                            )),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: 33.0),
                                                                            child: CircleAvatar(
                                                                              backgroundImage: AssetImage("assets/images/photo_female_7.jpg"),
                                                                              radius: 14,
                                                                            )),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: 45.0),
                                                                            child: CircleAvatar(
                                                                              backgroundImage: AssetImage("assets/images/photo_male_7.jpg"),
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
                                                                            Alignment.topRight,
                                                                        child:
                                                                            Container(
                                                                          padding:
                                                                              const EdgeInsets.only(right: 5),
                                                                          child:
                                                                              const Text(
                                                                            ' أحمد محمد\n و 5 أخرون أعجيهم ذلك',
                                                                            style:
                                                                                TextStyle(
                                                                              fontFamily: 'Tajawal',
                                                                              fontSize: 9,
                                                                              height: 1.5,
                                                                              color: Color(0xff514d55),
                                                                            ),
                                                                            softWrap:
                                                                                false,
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
                                                                            padding:
                                                                                EdgeInsets.only(top: 8.0),
                                                                            child:
                                                                                Text(
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
                                                                            color:
                                                                                AppColor.grayishblue99a0aa,
                                                                            size:
                                                                                22,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      const SizedBox(
                                                                        width:
                                                                            10,
                                                                      ),
                                                                      Row(
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.only(top: 8.0),
                                                                            child:
                                                                                Text(
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
                                                                            color:
                                                                                AppColor.grayishblue99a0aa,
                                                                            size:
                                                                                22,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      const SizedBox(
                                                                        width:
                                                                            10,
                                                                      ),
                                                                      Row(
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.only(top: 8.0),
                                                                            child:
                                                                                Text(
                                                                              '${0}',
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
                                                                            color:
                                                                                AppColor.grayishblue99a0aa,
                                                                            size:
                                                                                22,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                              // SizedBox(height: 10,),
                                                              // if(CvPostCubit.get(context).postsList[index].values.single.pid == 'ZHkwZRKLL5WR9MjjmExU')
                                                              //   Container(
                                                              //     margin: const EdgeInsets
                                                              //         .symmetric(
                                                              //         horizontal: 10),
                                                              //     child:
                                                              //     Column(
                                                              //       children: [
                                                              //         const SizedBox(
                                                              //           height: 15,
                                                              //         ),
                                                              //         const Divider(
                                                              //           color:
                                                              //           AppColor
                                                              //               .main,
                                                              //         ),
                                                              //         const SizedBox(
                                                              //           height: 5,
                                                              //         ),
                                                              //         const Align(
                                                              //             alignment:
                                                              //             Alignment
                                                              //                 .centerRight,
                                                              //             child:
                                                              //             Text(
                                                              //               'الأراء',
                                                              //               style:
                                                              //               TextStyle(
                                                              //                 fontFamily:
                                                              //                 'Tajawal',
                                                              //                 fontSize:
                                                              //                 12,
                                                              //                 color:
                                                              //                 AppColor.mulledWine55,
                                                              //               ),
                                                              //               textAlign:
                                                              //               TextAlign.right,
                                                              //             )),
                                                              //         const SizedBox(
                                                              //           height: 5,
                                                              //         ),
                                                              //         ListView.builder(
                                                              //           shrinkWrap: true,
                                                              //           itemCount:
                                                              //           CvPostCubit.get(
                                                              //               context)
                                                              //               .commentsList
                                                              //               .length,
                                                              //           itemBuilder:
                                                              //               (ctx, index) {
                                                              //             return Column(
                                                              //               children: [
                                                              //                 const SizedBox(
                                                              //                   height: 10,
                                                              //                 ),
                                                              //
                                                              //
                                                              //                 Row(
                                                              //                   children: [
                                                              //                     const CircleAvatar(
                                                              //                       backgroundImage:
                                                              //                       AssetImage("assets/images/photo_female_7.jpg"),
                                                              //                       radius:
                                                              //                       12,
                                                              //                     ),
                                                              //                     const SizedBox(
                                                              //                       width:
                                                              //                       10,
                                                              //                     ),
                                                              //                     Column(
                                                              //                       children: <
                                                              //                           Widget>[
                                                              //                         Text(
                                                              //                           '${CvPostCubit.get(context).commentsList[index].values.single.ownerName}',
                                                              //                           style:
                                                              //                           TextStyle(
                                                              //                             fontFamily: 'Tajawal',
                                                              //                             fontSize: 10,
                                                              //                             color: AppColor.mulledWine55,
                                                              //                           ),
                                                              //                           softWrap:
                                                              //                           false,
                                                              //                         ),
                                                              //                         Text(
                                                              //                           'منذ 2 دقائق',
                                                              //                           style: TextStyle(
                                                              //                               fontFamily: 'Tajawal',
                                                              //                               fontSize: 8,
                                                              //                               fontWeight: FontWeight.w700,
                                                              //                               color: AppColor.mulledWine55),
                                                              //                           textAlign:
                                                              //                           TextAlign.right,
                                                              //                         ),
                                                              //                       ],
                                                              //                     ),
                                                              //                     const Spacer(),
                                                              //                     const Icon(
                                                              //                       Icons
                                                              //                           .more_horiz_outlined,
                                                              //                       color: AppColor
                                                              //                           .grayishblue99a0aa,
                                                              //                     ),
                                                              //                     const SizedBox(
                                                              //                       width:
                                                              //                       20,
                                                              //                     )
                                                              //                   ],
                                                              //                 ),
                                                              //                 const SizedBox(
                                                              //                   height: 15,
                                                              //                 ),
                                                              //                 const Padding(
                                                              //                   padding: EdgeInsets.only(
                                                              //                       left:
                                                              //                       18.0,
                                                              //                       right:
                                                              //                       28),
                                                              //                   child:
                                                              //                   SingleChildScrollView(
                                                              //                     primary:
                                                              //                     false,
                                                              //                     child:
                                                              //                     Text(
                                                              //                       'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
                                                              //                       style:
                                                              //                       TextStyle(
                                                              //                         fontFamily:
                                                              //                         'Tajawal',
                                                              //                         fontSize:
                                                              //                         11,
                                                              //                         color:
                                                              //                         AppColor.b10000d,
                                                              //                       ),
                                                              //                       textAlign:
                                                              //                       TextAlign.right,
                                                              //                     ),
                                                              //                   ),
                                                              //                 ),
                                                              //                 const SizedBox(
                                                              //                   height: 8,
                                                              //                 ),
                                                              //                 // Padding(
                                                              //                 //   padding: const EdgeInsets
                                                              //                 //       .only(
                                                              //                 //       right:
                                                              //                 //       28.0),
                                                              //                 //   child: Row(
                                                              //                 //     children: const [
                                                              //                 //       Icon(
                                                              //                 //         Icons
                                                              //                 //             .cached_sharp,
                                                              //                 //         color:
                                                              //                 //         AppColor.main,
                                                              //                 //         size:
                                                              //                 //         21,
                                                              //                 //       ),
                                                              //                 //       SizedBox(
                                                              //                 //         width:
                                                              //                 //         8,
                                                              //                 //       ),
                                                              //                 //       Text(
                                                              //                 //         'تحميل المزيد من الأراء',
                                                              //                 //         style:
                                                              //                 //         TextStyle(
                                                              //                 //           fontFamily:
                                                              //                 //           'Tajawal',
                                                              //                 //           fontSize:
                                                              //                 //           12,
                                                              //                 //           color:
                                                              //                 //           AppColor.main,
                                                              //                 //         ),
                                                              //                 //         textAlign:
                                                              //                 //         TextAlign.right,
                                                              //                 //       ),
                                                              //                 //     ],
                                                              //                 //   ),
                                                              //                 // ),
                                                              //                 // const SizedBox(
                                                              //                 //   height: 15,
                                                              //                 // ),
                                                              //                 // TextFormField(
                                                              //                 //     autocorrect:
                                                              //                 //     true,
                                                              //                 //     controller:
                                                              //                 //     textController,
                                                              //                 //     decoration:
                                                              //                 //     InputDecoration(
                                                              //                 //       disabledBorder:
                                                              //                 //       const OutlineInputBorder(borderSide: BorderSide(width: 1, color: AppColor.linkWaterD0D6E0)),
                                                              //                 //       focusedBorder:
                                                              //                 //       const OutlineInputBorder(borderSide: BorderSide(width: 1, color: AppColor.linkWaterD0D6E0)),
                                                              //                 //       filled:
                                                              //                 //       true,
                                                              //                 //       fillColor:
                                                              //                 //       AppColor.white,
                                                              //                 //       contentPadding: const EdgeInsets.symmetric(
                                                              //                 //           horizontal:
                                                              //                 //           0,
                                                              //                 //           vertical:
                                                              //                 //           12),
                                                              //                 //       hintText:
                                                              //                 //       'اكتب تعليقك',
                                                              //                 //       prefixIcon:
                                                              //                 //       const Padding(
                                                              //                 //         padding:
                                                              //                 //         EdgeInsets.all(9.0),
                                                              //                 //         child:
                                                              //                 //         CircleAvatar(
                                                              //                 //           backgroundImage:
                                                              //                 //           AssetImage("assets/images/photo_female_6.jpg"),
                                                              //                 //           radius:
                                                              //                 //           7,
                                                              //                 //         ),
                                                              //                 //       ),
                                                              //                 //       enabledBorder: OutlineInputBorder(
                                                              //                 //           borderSide: const BorderSide(
                                                              //                 //             width: 1,
                                                              //                 //             color: AppColor.linkWaterD0D6E0,
                                                              //                 //           ),
                                                              //                 //           borderRadius: BorderRadius.circular(8.0)),
                                                              //                 //     )),
                                                              //                 // const SizedBox(
                                                              //                 //   height: 20,
                                                              //                 // )
                                                              //               ],
                                                              //             );
                                                              //           },
                                                              //         ),
                                                              //       ],
                                                              //     ),
                                                              //   )
                                                              //   (state == 1) ? Comments() : Container()
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                : Container();
                                            // postWidget(
                                            //   context,
                                            //   0,
                                            //   CvPostCubit.get(context)
                                            //       .posts[index],
                                            //   index);
                                          },
                                        )),
                          ],
                        ),
                      )
                    : Container(),
              ])),
            ),
          ],
        ),
      ),
    );
  }
}
