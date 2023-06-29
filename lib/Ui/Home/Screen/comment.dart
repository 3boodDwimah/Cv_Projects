import 'package:cv/bloc/cubit_navbar/cubit.dart';
import 'package:cv/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../bloc/cubit_post/cubit.dart';
import '../../../bloc/cubit_post/states.dart';

class Comment extends StatelessWidget {
  const Comment({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => CvPostCubit()/*..getComment()*/,
        child: BlocConsumer<CvPostCubit, CvPostStates>(
        listener: (context, state) {},
    builder: (context, state) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  color: AppColor.main,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'الأراء',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        color: AppColor.mulledWine55,
                      ),
                      textAlign: TextAlign.right,
                    )),
                const SizedBox(
                  height: 5,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: CvPostCubit.get(context).commentsList.length,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  CvPostCubit.get(context)
                                      .commentsList[index]
                                      .values
                                      .single
                                      .ownerImage),
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
                                  style: TextStyle(
                                      fontFamily: 'Tajawal',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w700,
                                      color: AppColor.mulledWine55),
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
                        const Divider(
                          color: AppColor.main,
                        ),
                      ],
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 28.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.cached_sharp,
                        color: AppColor.main,
                        size: 21,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'تحميل المزيد من الأراء',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 12,
                          color: AppColor.main,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
//               TextFormField(
//                   autocorrect: true,
//                   controller: textController,
//                   decoration: InputDecoration(
//                     suffixIcon: MaterialButton(
//                         minWidth: 1,
//                         onPressed: () {
//                           // var formKey;
//                           // if (formKey.currentState!.validate()) {
//                           //   print("aaa");
//                           //   CvPostCubit.get(context).createComment(
//                           //       time: DateFormat('kk:mm EEE d MMM')
//                           //           .format(DateTime.now()),
//                           //       text: textController.text,
//                           //       ownerName:
//                           //           SocialCubit.get(context).user!.firstname +
//                           //               " " +
//                           //               SocialCubit.get(context).user!.lastName,
//                           //       ownerImage:
//                           //           SocialCubit.get(context).user!.image,
//                           //       post:
//                           //           CvPostCubit.get(context).postsList[index]);
//                           // }
//                           // textController.clear();
//                         },
//                         child: SizedBox(
//                           width: 50,
//                           child: Row(
//                             children: [
//                               Container(
//                                 height: 60,
//                                 width: 0.5,
//                                 color: AppColor.linkWaterD0D6E0,
//                               ),
//                               SizedBox(
//                                 width: 20,
//                               ),
//                               Transform.rotate(
//                                 angle: 1.5 * pi,
//                                 child: Icon(
//                                   IconlyLight.send,
//                                   size: 24,
//                                   color: AppColor.mulledWine55,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )),
// //(Transform.rotate(
// //                   angle: 1 * pi,
//                     disabledBorder: const OutlineInputBorder(
//                         borderSide: BorderSide(
//                             width: 1, color: AppColor.linkWaterD0D6E0)),
//                     focusedBorder: const OutlineInputBorder(
//                         borderSide: BorderSide(
//                             width: 1, color: AppColor.linkWaterD0D6E0)),
//                     filled: true,
//                     fillColor: AppColor.white,
//                     contentPadding:
//                         const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
//                     hintText: 'اكتب تعليقك',
//                     prefixIcon: Padding(
//                       padding: EdgeInsets.all(9.0),
//                       child: CircleAvatar(
//                         backgroundImage: NetworkImage(
//                           SocialCubit.get(context).user?.image,
//                         ),
//                         radius: 7,
//                       ),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                           width: 1,
//                           color: AppColor.linkWaterD0D6E0,
//                         ),
//                         borderRadius: BorderRadius.circular(8.0)),
//                   )),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      );}
    ));
  }
}
