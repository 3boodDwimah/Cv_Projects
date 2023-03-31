import 'package:cv/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import "package:cached_network_image/cached_network_image.dart";

class chat extends StatefulWidget {

  chat({Key? key, }) : super(key: key);

  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
  Duration duration = new Duration();
  Duration position = new Duration();
  bool isPlaying = false;
  bool isLoading = false;
  bool isPause = false;

  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                BubbleNormalImage(
                  id: 'id001',
                  image: _image(),
                  color: Colors.purpleAccent,
                  tail: true,
                  delivered: true,
                ),
                BubbleNormal(
                  text: 'bubble normal with tail',
                  isSender: false,
                  color: AppColor.main.withOpacity(.28),
                  tail: true,
                  textStyle: TextStyle(
                    fontFamily: "Tajawal",
                    fontSize: 15,
                    color: AppColor.black,
                  ),
                ),
                BubbleNormal(
                  text: 'bubble normal with tail',
                  isSender: true,
                  color: Color(0xFFF3F4F8),
                  tail: true,
                  sent: true,
                ),
                DateChip(
                  date: new DateTime(now.year, now.month, now.day - 2),
                ),
                BubbleNormal(
                  text: 'bubble normal without tail',
                  isSender: false,
                  color: AppColor.main.withOpacity(.28),
                  tail: false,
                  textStyle: TextStyle(
                    fontFamily: "Tajawal",
                    fontSize: 15,
                    color: AppColor.black,
                  ),
                ),
                BubbleNormal(
                  text: 'bubble normal without tailssssssssssssssssssssss',
                  textStyle: TextStyle(
                    fontFamily: "Tajawal",
                    fontSize: 15,
                    color: AppColor.black,
                  ),
                  color: Color(0xFFF3F4F8),
                  tail: false,
                  sent: true,
                  seen: true,
                  delivered: true,
                ),
                BubbleSpecialOne(
                  text:
                      'bubble special one with tailaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                  isSender: false,
                  color: Color(0xFFF3F4F8),
                  textStyle: TextStyle(
                    fontFamily: "Tajawal",
                    fontSize: 15,
                    color: AppColor.black,
                  ),
                ),
                DateChip(
                  date: new DateTime(now.year, now.month, now.day - 1),
                ),
                BubbleSpecialOne(
                  text: 'bubble special one with tail',
                  color: AppColor.main.withOpacity(.28),
                  seen: true,
                ),
                BubbleSpecialOne(
                  text: 'bubble special one without tail',
                  isSender: false,
                  tail: false,
                  color: Color(0xFFF3F4F8),
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Tajawal",
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                BubbleSpecialOne(
                  text: 'bubble special one without tail',
                  tail: false,
                  color: AppColor.main.withOpacity(.28),
                  sent: true,
                ),
                BubbleSpecialTwo(
                  text: 'bubble special tow with tail',
                  isSender: false,
                  color: Color(0xFFF3F4F8),
                  textStyle: TextStyle(
                    fontFamily: "Tajawal",
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                DateChip(
                  date: now,
                ),
                BubbleSpecialTwo(
                  text: 'bubble special tow with tail',
                  isSender: true,
                  color: AppColor.main.withOpacity(.28),
                  sent: true,
                ),
                BubbleSpecialTwo(
                  text: 'bubble special tow without tail',
                  isSender: false,
                  tail: false,
                  sent: false,
                  color: Color(0xFFF3F4F8),
                  textStyle: TextStyle(
                    fontFamily: "Tajawal",
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                BubbleSpecialTwo(
                  text: 'bubble special tow without tail',
                  tail: false,
                  color: AppColor.main.withOpacity(.28),
                  delivered: true,
                ),
                BubbleSpecialThree(
                  text: 'bubble special three without tail',
                  color: AppColor.main.withOpacity(.28),
                  tail: false,
                  textStyle: TextStyle(color: AppColor.black, fontSize: 16),
                ),
                BubbleSpecialThree(
                  text: 'bubble aaaaaaaaaaaaspecial three with tail',
                  color: AppColor.main.withOpacity(.28),
                  tail: true,
                  textStyle: TextStyle(color: AppColor.black, fontSize: 16),
                ),
                BubbleSpecialThree(
                  text: "bubble special three without tail",
                  color: Color(0xFFF3F4F8),
                  tail: false,
                  isSender: false,
                ),
                BubbleSpecialThree(
                  text: "bubble special three with tail",
                  color: Color(0xFFF3F4F8),
                  tail: true,
                  isSender: false,
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
          MessageBar(
            onSend: (_) => print(_),
            actions: [
              InkWell(
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 24,
                ),
                onTap: () {},
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: InkWell(
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.green,
                    size: 24,
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _image() {
    return Container(
      constraints: BoxConstraints(
        minHeight: 20.0,
        minWidth: 20.0,
      ),
      child: CachedNetworkImage(
        imageUrl: 'https://i.ibb.co/JCyT1kT/Asset-1.png',
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
