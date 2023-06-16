import 'package:cv/Ui/Home/Screen/home_view.dart';
import 'package:cv/bloc/cubit_chat/cubit.dart';
import 'package:cv/bloc/cubit_chat/states.dart';
import 'package:cv/core/cache_helper.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/my_date_util.dart';
import 'package:cv/modle/chat_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';

import '../../core/components.dart';
import '../../core/string.dart';
import '../../modle/message_model.dart';
import '../../modle/user.dart';

class MessagesScreen extends StatefulWidget {
  final UserDataModel userDataModel;
  MessageDataModel? messageDataModel;

  MessagesScreen(
      {Key? key,
      required this.userDataModel,
      this.message,
      this.messageDataModel, })
      : super(key: key);

  MessageDataModel? message;

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  void initState() {
    super.initState();
    ChatCubit.get(context).getMessages(widget.userDataModel);
    ChatCubit.get(context).getLastMessage(widget.userDataModel);
    print(ChatCubit.get(context).messagesLast.length);

    Future.delayed(Duration(milliseconds: 700), () {
      print(ChatCubit.get(context).messagesLast.last.message);
      CacheHelper.sharedPreferences!
          .setString("last", ChatCubit.get(context).messagesLast.last.message);
    });

    print("/*/*/**/*/*/*/**/*/**/*/*/*/*/**/*/*/*/");
  }

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColor.white,
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
                child: Icon(
                  IconlyLight.arrow_right_2,
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
                          onPressed: () => Scaffold.of(context).openDrawer())))
            ],
            backgroundColor: AppColor.main,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            toolbarHeight: 88,
            flexibleSpace: SafeArea(
              child: SvgPicture.asset(
                'assets/images/appbarpoint.svg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          body: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(04.0),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(widget.userDataModel.image)),
                    title: Text(
                        "${widget.userDataModel.firstname} ${widget.userDataModel.lastName}"),
                  ),
                  myDivider(),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        ChatCubit.get(context)
                            .updateRead(widget.userDataModel, index);

                        if (ChatCubit.get(context)
                                .messagesList[index]
                                .senderId ==
                            uId) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 7, top: 2),
                            child: MyItem(
                              model: ChatCubit.get(context).messagesList[index],
                            ),
                          );
                        }

                        return Padding(
                          padding: const EdgeInsets.only(right: 7, top: 2),
                          child: Column(
                            children: [
                              UserItem(
                                model:
                                    ChatCubit.get(context).messagesList[index],
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          space10Vertical(context),
                      itemCount: ChatCubit.get(context).messagesList.length,
                    ),
                  ),
                  if (ChatCubit.get(context).messagesList.isEmpty)
                    const Expanded(
                      child: Center(
                        child: CupertinoActivityIndicator(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  space10Vertical(context),
                  TextFormField(
                    autofocus: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      }
                    },
                    controller: ChatCubit.get(context).messageController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColor.white,
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0.35, color: AppColor.linkWaterD0D6E0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0.35, color: AppColor.linkWaterD0D6E0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0.35, color: AppColor.linkWaterD0D6E0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0.35, color: AppColor.linkWaterD0D6E0),
                      ),
                      isDense: true,
                      hintText: 'اكتب رسالتك هنا',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 0.35, color: AppColor.linkWaterD0D6E0),
                          borderRadius: BorderRadius.circular(4)),
                      suffixIcon: MaterialButton(
                          minWidth: 1,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              ChatCubit.get(context)
                                  .sendMessage(widget.userDataModel);
                            }
                          },
                          child: SizedBox(
                            width: 50,
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 0.5,
                                  color: AppColor.linkWaterD0D6E0,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  IconlyLight.send,
                                  size: 24,
                                  color: AppColor.mulledWine55,
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class MyItem extends StatelessWidget {
  MessageDataModel model;

  MyItem({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.only(top: 00.0, bottom: 5.0, left: 12, right: 15),
          decoration: const BoxDecoration(
            borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(
                10.0,
              ),
              topEnd: Radius.circular(
                10.0,
              ),
              bottomStart: Radius.circular(
                10.0,
              ),
            ),
            color: Color(0xff86E0C2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 4),
                child: Text(
                  model.message,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    (model.read == true)
                        ? Icon(Icons.done_all_rounded,
                            color: Colors.blue[700], size: 24)
                        : Icon(Icons.done, color: Colors.grey[500], size: 24),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      MyDateUtil.getFormattedTime(
                        context: context,
                        time: model.time,
                      ),
                      style: const TextStyle(
                        fontSize: 13,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class UserItem extends StatelessWidget {
  MessageDataModel model;

  UserItem({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(top: 00.0, bottom: 5.0, left: 15, right: 12),
          decoration: BoxDecoration(
            borderRadius: const BorderRadiusDirectional.only(
              topStart: Radius.circular(
                10.0,
              ),
              topEnd: Radius.circular(
                10.0,
              ),
              bottomEnd: Radius.circular(
                10.0,
              ),
            ),
            color: Color(0xffF3F4F8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 4),
                child: Text(
                  model.message,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  textAlign: TextAlign.right,
                  MyDateUtil.getFormattedTime(
                      context: context, time: model.time),
                  style: const TextStyle(
                    fontSize: 13,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
