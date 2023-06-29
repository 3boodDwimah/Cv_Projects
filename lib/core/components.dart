import 'dart:io';
import 'dart:math';
import 'dart:ui';

import 'package:cv/core/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:iconly/iconly.dart';
import 'package:path_provider/path_provider.dart';

Response? response;

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 3.0,
  required VoidCallback function,
  required String text,
}) =>
    Container(
      width: width,
      height: 50.0,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );

Widget defauContainer(
        {required String text,
        double height = 30,
        double width = double.infinity,
        double borderRadius = 10,
          Color background = AppColor.main,

          EdgeInsetsGeometry? padding,
        EdgeInsetsGeometry? margin,

        void Function()? onPressed,
        TextStyle? style}) =>
    GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        margin: margin,

        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Text(
          text,
          style: style,
        ),
      ),
    );


Widget defaultFormFieldWithOut({
  required TextEditingController controller,
   TextInputType? type,
  ValueChanged? onSubmit,
  ValueChanged? onChange,
  GestureTapCallback? onTap,
  bool isPassword = false,
  FormFieldValidator? validate,
  String? label,
  String? hint,
  Widget? prefix,
  IconData? suffix,
  TextStyle? hintStyle,
  double width = 0,
  double pad = 1,
  int MaxLines = 1,


  Color? color = AppColor.white,
  VoidCallback? suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
        maxLines: MaxLines,
        obscureText: isPassword,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        onTap: onTap,
        validator: validate,
        autocorrect: true,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: width, color: AppColor.bagroundColorF8),
              borderRadius: BorderRadius.circular(9)

          ),
          focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(9),

              borderSide: BorderSide(width: width, color: AppColor.bagroundColorF8)
          ),
          filled: true,
          fillColor: color,
          contentPadding:
          EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          hintText: hint,
          hintStyle: hintStyle,
          prefixIcon: prefix,
          enabled: isClickable,
          labelText: label,
          suffixIcon: suffix != null
              ? IconButton(
            onPressed: suffixPressed,
            icon: Icon(
              suffix,
            ),
          )
              : null,



        ));
//////
Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  ValueChanged? onSubmit,
  ValueChanged? onChange,
  GestureTapCallback? onTap,
  bool isPassword = false,
  FormFieldValidator? validate,
  String? label,
  String? hint,
  Widget? prefix,
  IconData? suffix,
  TextStyle? hintStyle,
  double width = 1,
  double pad = 1,
  int MaxLines = 1,


  Color? color = AppColor.white,
  VoidCallback? suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      maxLines: MaxLines,
        obscureText: isPassword,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        onTap: onTap,
        validator: validate,
        autocorrect: true,
        controller: controller,
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: width, color: Color(0xffD0D6E0))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: width, color: Color(0xffD0D6E0))),
          filled: true,
          fillColor: color,
          contentPadding:
               EdgeInsets.symmetric(horizontal: 10, vertical: 14),
          hintText: hint,
          hintStyle: hintStyle,
          prefixIcon: prefix,
          enabled: isClickable,
          labelText: label,
          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: suffixPressed,
                  icon: Icon(
                    suffix,
                  ),
                )
              : null,

          // const Padding(
          //   padding: EdgeInsets.all(9.0),
          //   child: CircleAvatar(
          //     radius: 8,
          //   ),
          // ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 0.25,
                color: Color(0xff707070),
              ),
              borderRadius: BorderRadius.circular(6)),
        ));

Widget defaultTextButton({
  required VoidCallback function,
  required String text,
}) =>
    TextButton(
      onPressed: function,
      child: Text(
        text.toUpperCase(),
      ),
    );

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );

Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 00.0,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: AppColor.linkWaterD0D6E0,
      ),
    );

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

Widget JopList(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 5,bottom: 10),
    width: MediaQuery.of(context).size.width,
    height: 90,
    decoration: BoxDecoration(
        color: AppColor.white, borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/logocomp.jpg"),


        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          width: 180,
          height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "اسم الوظيفة",
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff10000d),
                ),
                textAlign: TextAlign.right,
              ),
              Row(
                children: [
                  Text(
                    "اسم الشركة",
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff99A0AA),
                    ),
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    " منذ  دقائق",
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff99a0aa),
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    " \$ 3000 - 1500 -",
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff10000d),
                    ),
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    " الأمارات العربية ",
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff514D55),
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: AppColor.white, borderRadius: BorderRadius.circular(5)),
        ),
        SizedBox(
          width: 4,
        ),
        Container(
          width: 40,
          height: 60,
          child: Column(
            children: [
              Icon(
                IconlyLight.bookmark,
                color: AppColor.linkWaterD0D6E0,
              ),
            ],
          ),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        ),
      ],
    ),
  );
}

Widget textWidget(final String text) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'Tajawal',
      fontSize: 12,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
  );
}

Future<File?> imageFromURL(String name, String imageUrl) async {
  if (imageUrl.isEmpty) return null;
// get temporary directory of device.
  Directory? tempDir = await () async {
    if (Platform.isIOS) {
      return await getApplicationDocumentsDirectory();
    }
    return await getExternalStorageDirectory();
  }();
// get temporary path from temporary directory.
  String tempPath = tempDir!.path;
// create a new file in temporary path with file name.
  File file = File('$tempPath/' + name + '.png');
// call http.get method and pass imageUrl into it to get response.
  Response response = await get(Uri.parse(imageUrl));
  if (response.statusCode != 200) return null;
// write bodyBytes received in response to file.
  await file.writeAsBytes(response.bodyBytes);
// now return the file which is created with random name in
// temporary directory and image bytes from response is written to // that file.
  return file;
}

DateTime now = DateTime.now();


dynamic uId = '';
Random random1 = Random();


void showToast({
  required String text,
  required ToastStates state,
}) =>
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: chooseToastColor(state),
      textColor: Colors.white,
      fontSize: 16.0,
    );

// enum
enum ToastStates { SUCCESS, ERROR, WARNING }

Color chooseToastColor(ToastStates state) {
  Color color;

  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }

  return color;
}
double responsiveValue(BuildContext context, double value) =>
    MediaQuery.of(context).size.width * (value / 375.0);

space3Vertical(BuildContext context) => SizedBox(
  height: responsiveValue(context, 3.0),
);

space4Vertical(BuildContext context) => SizedBox(
  height: responsiveValue(context, 4.0),
);

space5Vertical(BuildContext context) => SizedBox(
  height: responsiveValue(context, 5.0),
);

space8Vertical(BuildContext context) => SizedBox(
  height: responsiveValue(context, 8.0),
);

space10Vertical(BuildContext context) => SizedBox(
  height: responsiveValue(context, 10.0),
);

space16Vertical(BuildContext context) => SizedBox(
  height: responsiveValue(context, 16.0),
);

space20Vertical(BuildContext context) => SizedBox(
  height: responsiveValue(context, 20.0),
);

space30Vertical(BuildContext context) => SizedBox(
  height: responsiveValue(context, 30.0),
);

space40Vertical(BuildContext context) => SizedBox(
  height: responsiveValue(context, 40.0),
);

space50Vertical(BuildContext context) => SizedBox(
  height: responsiveValue(context, 50.0),
);

space60Vertical(BuildContext context) => SizedBox(
  height: responsiveValue(context, 60.0),
);

space70Vertical(BuildContext context) => SizedBox(
  height: responsiveValue(context, 70.0),
);

space80Vertical(BuildContext context) => SizedBox(
  height: responsiveValue(context, 80.0),
);

space90Vertical(BuildContext context) => SizedBox(
  height: responsiveValue(context, 90.0),
);

space100Vertical(BuildContext context) => SizedBox(
  height: responsiveValue(context, 100.0),
);

space3Horizontal(BuildContext context) => SizedBox(
  width: responsiveValue(context, 3.0),
);

space4Horizontal(BuildContext context) => SizedBox(
  width: responsiveValue(context, 4.0),
);

space5Horizontal(BuildContext context) => SizedBox(
  width: responsiveValue(context, 5.0),
);

space8Horizontal(BuildContext context) => SizedBox(
  width: responsiveValue(context, 8.0),
);

space10Horizontal(BuildContext context) => SizedBox(
  width: responsiveValue(context, 10.0),
);

space15Horizontal(BuildContext context) => SizedBox(
  width: responsiveValue(context, 15.0),
);

space20Horizontal(BuildContext context) => SizedBox(
  width: responsiveValue(context, 20.0),
);

space30Horizontal(BuildContext context) => SizedBox(
  width: responsiveValue(context, 30.0),
);

space40Horizontal(BuildContext context) => SizedBox(
  width: responsiveValue(context, 40.0),
);

space50Horizontal(BuildContext context) => SizedBox(
  width: responsiveValue(context, 50.0),
);

space60Horizontal(BuildContext context) => SizedBox(
  width: responsiveValue(context, 60.0),
);

space70Horizontal(BuildContext context) => SizedBox(
  width: responsiveValue(context, 70.0),
);

space80Horizontal(BuildContext context) => SizedBox(
  width: responsiveValue(context, 80.0),
);

space90Horizontal(BuildContext context) => SizedBox(
  width: responsiveValue(context, 90.0),
);

space100Horizontal(BuildContext context) => SizedBox(
  width: responsiveValue(context, 100.0),
);

