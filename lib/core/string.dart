import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;

  final double fontSize;
  final FontWeight fontWeight;

  final String? fontFamily;
  final TextDecoration decoration;

  final Color colors;

  final double? height;

  final FontStyle fontStyle;
  final double? letterSpacing;
  final double? wordSpacing;
  final TextDecorationStyle? decorationStyle;
  final TextAlign? textAlign;

  const CustomText({
    Key? key,
    required this.text,
    this.fontFamily = "Tajawal",
    this.textAlign = TextAlign.center,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w400,
    this.decoration = TextDecoration.none,
    this.colors = Colors.black,
    this.height,
    this.fontStyle = FontStyle.normal,
    this.letterSpacing,
    this.wordSpacing,
    this.decorationStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        color: colors,
        fontWeight: fontWeight,
        height: height,
      ),
      textAlign: textAlign,
    );
  }
}
