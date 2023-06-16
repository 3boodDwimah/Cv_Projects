import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cv/Ui/Home/Screen/home_view.dart';
import 'package:cv/bloc/cubit_chat/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/components.dart';
import '../../modle/chat_model.dart';
import '../../modle/message_model.dart';
import '../../modle/user.dart';




class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitiaState());

  static ChatCubit get(context) => BlocProvider.of(context);



  List<UserDataModel> usersList = [];

  void getUsers() {
    FirebaseFirestore.instance.collection('users').snapshots().listen((value) {
      usersList = [];

      for (var element in value.docs) {
        if (UserDataModel.fromJson(element.data()).uId != uId) {
          usersList.add(UserDataModel.fromJson(element.data()));
        }
      }

      debugPrint(usersList.length.toString());

      emit(GetUsersSuccess());
    });
  }

  TextEditingController messageController = TextEditingController();

  void sendMessage(UserDataModel userDataModel) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .collection('chats')
        .get()
        .then((value) {
      MessageDataModel model = MessageDataModel(
        time: DateTime.now().millisecondsSinceEpoch.toString(),
        read: false,
        message: messageController.text,
        receiverId: userDataModel.uId,
        senderId: uId,
      );

      if (value.docs
          .any((element) => element.reference.id != userDataModel.uId)) {
        ChatDataModel chatDataModel = ChatDataModel(
            username: userDataModel.firstname + userDataModel.lastName,
            userId: userDataModel.uId,
            userImage: userDataModel.image,
            lastMes: "New Message not read ");

        FirebaseFirestore.instance
            .collection('users')
            .doc(uId)
            .collection('chats')
            .doc(userDataModel.uId)
            .set(chatDataModel.toJson())
            .then((value) {})
            .catchError((error) {
          debugPrint(error.toString());

          emit(CreateChatError(
            message: error.toString(),
          ));
        });

        FirebaseFirestore.instance
            .collection('users')
            .doc(userDataModel.uId)
            .collection('chats')
            .doc(uId)
            .set(chatDataModel.toJson())
            .then((value) {})
            .catchError((error) {
          debugPrint(error.toString());

          emit(CreateChatError(
            message: error.toString(),
          ));
        });
      } else {
        FirebaseFirestore.instance
            .collection('users')
            .doc(uId)
            .collection('chats')
            .doc(userDataModel.uId)
            .collection('messages')
            .doc(model.time)
            .set(model.toJson())
            .then((value) {
          messageController.clear();
        }).catchError((error) {
          debugPrint(error.toString());

          emit(CreateChatError(
            message: error.toString(),
          ));
        });

        FirebaseFirestore.instance
            .collection('users')
            .doc(userDataModel.uId)
            .collection('chats')
            .doc(uId)
            .collection('messages')
            .doc(model.time)
            .set(model.toJson())
            .then((value) {
          messageController.clear();
        }).catchError((error) {
          debugPrint(error.toString());

          emit(CreateChatError(
            message: error.toString(),
          ));
        });
      }
    }).catchError((error) {
      debugPrint(error.toString());

      emit(SendMessage(
        message: error.toString(),
      ));
    });
  }

  // List<MessageDataModel> messagesLast = [];
  // void getMessagesLast() {
  //   FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(userDataModel?.uId)
  //       .collection('chats')
  //       .doc(uId)
  //       .collection('messages').
  //   orderBy('time', descending: true,).
  //   limit(1)
  //       .snapshots()
  //       .listen((value) {
  //     messagesLast = [];
  //
  //     for (var element in value.docs) {
  //       messagesLast.add(MessageDataModel.fromJson(element.data()));
  //     }
  //
  //     debugPrint(messagesLast.length.toString());
  //
  //     emit(GetMessagesSuccess());
  //   });
  // }


  List<MessageDataModel> messagesList = [];

  void getMessages(UserDataModel userDataModel) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .collection('chats')
        .doc(userDataModel.uId)
        .collection('messages')
        .orderBy(
          'time',
          descending: false,
        )
        .snapshots()
        .listen((value) {
      messagesList = [];

      for (var element in value.docs) {
        messagesList.add(MessageDataModel.fromJson(element.data()));
      }

      debugPrint(messagesList.length.toString());

      emit(GetMessagesSuccess());
    });
  }

  //void updateRead(UserDataModel userDataModel,
  void updateRead(UserDataModel userDataModel, index) {
    {
      FirebaseFirestore.instance
          .collection('users')
          .doc(userDataModel.uId)
          .collection('chats')
          .doc(uId)
          .collection('messages')
          .doc(messagesList[index].time)
          .update({'read': true})
          .then((value) {})
          .catchError((error) {
        emit(UpdateReadSuccess());
      });
    }
  }


  List<MessageDataModel> messagesLast = [];

  void getLastMessage(UserDataModel userDataModel) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .collection('chats')
        .doc(userDataModel.uId)
        .collection('messages')
        .orderBy('time', descending: true).limit(1)
        .snapshots()
        .listen((value) {
      messagesLast = [];

      for (var element in value.docs) {
        messagesLast.add(MessageDataModel.fromJson(element.data()));
      }

      debugPrint(messagesLast.length.toString());

      emit(GetLastMasSuccess());
    });




    // getLastMessage(
    //     ChatUser user) {
    //   return firestore
    //       .collection('chats/${getConversationID(user.id)}/messages/')
    //       .orderBy('sent', descending: true)
    //       .limit(1)
    //       .snapshots();
    // }
  }
}
