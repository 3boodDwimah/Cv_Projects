import 'package:cv/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class OptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
                        onPressed: () {},
                        icon: const Icon(
                          IconlyLight.heart,
                          color: Colors.red,
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
                      child: IconButton(
                        onPressed: () {},
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
                        onPressed: () {},
                        icon: Icon(Icons.insert_link_outlined,
                            color: AppColor.main,size: 22),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
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
                              'الاسم ',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.white,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.verified,
                              size: 15,
                              color: AppColor.main,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Text('Follow',
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
                          height: 8,
                        ),
                        Text('منذ 3 ساعات ',
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
            height: 40,
          )
        ],
      ),
    );
  }
}
