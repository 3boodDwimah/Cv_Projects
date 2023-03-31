import 'package:cv/Ui/NavBar/navbar.dart';
import 'package:cv/Ui/Onborading/onborading.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  void initState() {
    Future.delayed(Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onborading()),
      );
    });    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image:
              AssetImage("assets/images/splach.png"))
        ),
        child: Center(
            child:Text(
              'SkillFull',
              style: TextStyle(
                fontFamily: 'Houstone',
                fontSize: 35,
                color: const Color(0xff26b888),
                letterSpacing: 0.35000000000000003,
                height: 0.6514286041259766,
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ) ),
      ),
    );
  }
}
