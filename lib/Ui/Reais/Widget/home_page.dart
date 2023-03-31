import 'package:card_swiper/card_swiper.dart';
import 'package:cv/Ui/Reais/Widget/content_screen.dart';
import 'package:cv/core/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> videos = [
    'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-winter-fashion-cold-looking-woman-concept-video-39874-large.mp4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.b10000d,
      body: SafeArea(
        child: Container(
          height: 755,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return ContentScreen(
                src: videos[index],
              );
            },
            itemCount: videos.length,
            scrollDirection: Axis.vertical,
          ),
        ),

      ),
    );
  }
}
