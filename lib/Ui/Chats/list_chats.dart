import 'package:cv/Ui/Chats/chatscreen.dart';
import 'package:cv/bloc/cubit_chat/states.dart';
import 'package:cv/core/cache_helper.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/string.dart';
import 'package:cv/modle/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

import '../../bloc/cubit_chat/cubit.dart';
import '../../core/components.dart';
import '../../modle/message_model.dart';

class List_Chat extends StatefulWidget {

   List_Chat({Key? key, }) : super(key: key);

  @override
  State<List_Chat> createState() => _List_ChatState();
}

class _List_ChatState extends State<List_Chat> {
  @override
  void initState() {
    super.initState();
   var aa =  CacheHelper.sharedPreferences!
        .get("last");
   print(aa);
   print("sssssssssssssssssssssssssssssssssssss");

  }
  MessageDataModel? messageDataModel ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColorF3,
        appBar: AppBar(
          centerTitle: true,
          title: CustomText(
            text: "الدردشات",
            fontFamily: "Cairo",
            fontWeight: FontWeight.w400,
            fontSize: 15,
            colors: Colors.white,
          ),
          leadingWidth: 90,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColor.main,
          ),
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(IconlyLight.arrow_right_2,
                size: 25,
                color: AppColor.white,
              )),
          actions: [
            Container(
                padding: EdgeInsetsDirectional.only(end: 10),
                child: Builder(
                    builder: (context) => IconButton(
                        icon: SvgPicture.asset(
                          "assets/images/iocnmune.svg",
                          width: 26,
                          height: 26,
                        ),
                        onPressed: () =>
                            Scaffold.of(context).openDrawer())))
          ],
          backgroundColor: AppColor.main,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          toolbarHeight: 88,
          flexibleSpace: SafeArea(
            child: SvgPicture.asset(
              'assets/images/appbarpoint.svg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      body: ListView.builder(
        itemCount: ChatCubit.get(context).usersList.length,
    itemBuilder: (context, index) => BlocBuilder<ChatCubit, ChatState>(
    builder: (context, state) {
    return
      InkWell(
        onTap: () {
      navigateTo(
        context,
        MessagesScreen(
          userDataModel: ChatCubit.get(context).usersList[index],
        ),
      );
    },  child:
      Container(
            height: 80,
            padding: EdgeInsets.symmetric(vertical: 5),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: AppColor.white,
            child: ListTile(

              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  ChatCubit.get(context).usersList[index].image,
                ),
                radius: 30,
              ),
              title: Text("${ChatCubit.get(context).usersList[index].firstname} ""${ChatCubit.get(context).usersList[index].lastName}"
                    ,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 14,
                  color: const Color(0xff200e32),
                ),
                textAlign: TextAlign.right,
                softWrap: false,
              ),
              subtitle:Text(
               " ابدا محادثتك "

                ,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 12,
                  color: const Color(0xff10000d),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.right,
                softWrap: false,
              ),

              trailing: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  children: [
                    Text(
                      '3 دقائق ',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 12,
                        color: const Color(0xff99a0aa),
                      ),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 6,),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: AppColor.main,
                      child: Text("4",style: TextStyle(color: AppColor.white,fontSize: 14),),
                    )
                  ],
                ),
              ),
            ),
      )   );
        },
    )
  ));
  }
}
