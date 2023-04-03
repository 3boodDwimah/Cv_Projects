
import 'package:cv/Ui/NavBar/navbar.dart';
import 'package:cv/Ui/Room/room_details.dart';
import 'package:cv/Ui/Room/voice_screen.dart';
import 'package:cv/Ui/SingIn/singin.dart';
import 'package:cv/Ui/Splash_Screen/splash_Screen.dart';
import 'package:cv/Ui/test.dart';
import 'package:cv/core/cache_helper.dart';
import 'package:cv/core/components.dart';
import 'package:cv/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



//Definition of Firebase
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,);
  await CacheHelper.init();


  //var token = await FirebaseMessaging.instance.getToken();
 // print('#########################' + token);

  // // foreground fcm
  // FirebaseMessaging.onMessage.listen((event) {
  //   print('on message');
  //   print(event.data.toString());
  //
  //   showToast(
  //     text: 'on message',
  //     state: ToastStates.SUCCESS,
  //   );
  // });

  // when click on notification to open app
  // FirebaseMessaging.onMessageOpenedApp.listen((event) {
  //   print('on message opened app');
  //   print(event.data.toString());
  //   showToast(
  //     text: 'on message opened app',
  //     state: ToastStates.SUCCESS,
  //   );
  // });

  // background fcm
  // FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  //
  //
  // bool isDark = CacheHelper.getData(key: 'isDark');
  //
   Widget widget;

  uId = CacheHelper.getData(key: 'uid');

  if (uId != null) {
    widget = NavBarLayout();
  } else {
    widget = SingIn();
  }

  runApp(MyApp(
    // isDark: isDark,
     startWidget: widget,
  ));
}


class MyApp extends StatelessWidget {
  late final Widget startWidget;
  MyApp({
    required this.startWidget
});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE'),
      ],
      home: startWidget,
    );
  }
}




