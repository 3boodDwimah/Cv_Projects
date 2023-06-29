import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';
import 'package:share_plus/share_plus.dart';

import '../../../bloc/cubit_navbar/cubit.dart';
import '../../../bloc/cubit_reels/cubit.dart';
import '../../../bloc/cubit_reels/states.dart';
import '../../../core/cache_helper.dart';
class OptionsScreen extends StatelessWidget {
  @override


  Widget build(BuildContext context) {

    return BlocConsumer<ReelCubit, ReelStates>(
        listener: (context, state) {},
    builder: (context, state) {
    return Padding(
      padding:
      CacheHelper.getData(key: 'fi') == 1 ?

      const EdgeInsets.only(top: 380,left: 0,right: 0):
      const EdgeInsets.only(top: 400,left: 0,right: 0),
      child: (
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              itemCount: ReelCubit.get(context).ReelsList.length,
              itemBuilder: (ctx,index){
            return
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0,),
                      child: Row(
                        children: [
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: AppColor.white,
                                radius: 18,
                                child: IconButton(
                                  onPressed: () {
                                    ReelCubit.get(context).updateReelLikes(ReelCubit.get(context).ReelsList[index]);

                                  },
                                  // CvPostCubit.get(context).postsList[index].values.single.likes.any((element) =>
                                  // element == SocialCubit.get(context).user?.uId) ? IconlyBold.heart : IconlyLight.heart,
                                  //  color: Colors.red,
                                  //  size: 24,
                                  icon: Icon(
                                    ReelCubit.get(context).ReelsList[index].values.single.likes.any((element) =>
                                    element == uId) ? IconlyBold.heart : IconlyLight.heart,
                                    color: Colors.red,
                                    size: 21,

                                  )

                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              CircleAvatar(
                                backgroundColor: AppColor.white,
                                radius: 18,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    IconlyLight.chat,
                                    color: AppColor.main,
                                    size: 21,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              CircleAvatar(
                                backgroundColor: AppColor.white,
                                radius: 18,
                                child:  IconButton(
                                  onPressed: () async {

                                      final img = await imageFromURL(
                                        'temp',
                                        ReelCubit.get(context).ReelsList[index].values.single.video!,
                                      );

                                      Share.shareFiles(
                                        [img!.path],
                                        text: "aaaa",
                                      ).whenComplete(() {
                                        ReelCubit.get(context).updatePostShares(ReelCubit.get(context).ReelsList[index]);
                                      });


                                  },
                                  icon: const Icon(
                                    Icons.share_outlined,
                                    color: AppColor.main,
                                    size: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              CircleAvatar(
                                backgroundColor: AppColor.white,
                                radius: 18,
                                child: IconButton(
                                  onPressed: () async{
                                    await Clipboard.setData(ClipboardData(text:
                                    ReelCubit.get(context).ReelsList[index].values.single.url));

                                  },
                                  icon:
                                  CacheHelper.getData(key: 'fi') == 2 ?

                                  Icon(Icons.insert_link_outlined,
                                      color: AppColor.main,size: 22):
                                  SvgPicture.asset('assets/images/series.svg')
                                  ,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0,right: 18),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: AppColor.p200E32,
                                child: Icon(IconlyLight.user_1, size: 18),
                                radius: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${ReelCubit.get(context).ReelsList[index].values.single.ownerName}',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: AppColor.white,
                                            fontFamily: 'Tajawal',
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      ReelCubit.get(context).ReelsList[index].values.single.isFollow == true?

                                      Icon(
                                        Icons.verified,
                                        size: 15,
                                        color: AppColor.main,
                                      ):Container(),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      GestureDetector(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 4.0),
                                          child:
                                          Text(
                                              ReelCubit.get(context).ReelsList[index].values.single.isFollow == true?

                                              'Follow':"",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: AppColor.main,
                                                  fontFamily: 'Tajawal',
                                                  fontWeight: FontWeight.w700)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text('${ReelCubit.get(context).ReelsList[index].values.single.time} ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColor.white,
                                          fontFamily: 'Tajawal',
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    )
                  ],
                ),
              );
          })
      ),
    );},
    );
  }
}
