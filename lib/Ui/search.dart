// import 'package:cv/Ui/Chats/chatscreen.dart';
// import 'package:cv/bloc/cubit_chat/cubit.dart';
// import 'package:cv/core/components.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../bloc/cubit_chat/states.dart';
// import '../modle/message_model.dart';
//
//
// class SearchScreen extends StatefulWidget {
//   const SearchScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
// }
// List<MessageDataModel> _list = [];
//
//
// class _SearchScreenState extends State<SearchScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       body:
//       ListView.separated(
//               itemBuilder: (context, index) => BlocBuilder<ChatCubit, ChatState>(
//                 builder: (context, state) {
//                   return InkWell(
//                     onTap: () {
//                       navigateTo(
//                         context,
//                         MessagesScreen(
//                           userDataModel: ChatCubit.get(context).usersList[index],
//                           message:   List<MessageDataModel> _list = [];
//                           ,
//                         ),
//                       );
//                     },
//                     child: Container(
//                       color: Colors.white,
//                       child: Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: Row(
//                           children: [
//                             if (ChatCubit.get(context)
//                                 .usersList[index]
//                                 .image
//                                 .isNotEmpty)
//                               CircleAvatar(
//                                 radius: 20.0,
//                                 backgroundImage: NetworkImage(
//                                   ChatCubit.get(context).usersList[index].image,
//                                 ),
//                               ),
//                             if (ChatCubit.get(context)
//                                 .usersList[index]
//                                 .image
//                                 .isEmpty)
//                               CircleAvatar(
//                                 radius: 20.0,
//                                 child: Center(
//                                   child: Text(
//                                     ChatCubit.get(context)
//                                         .usersList[index]
//                                         .lastName
//                                         .characters
//                                         .first,
//                                     style: const TextStyle(
//                                       fontSize: 26.0,
//                                       fontWeight: FontWeight.w900,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             space10Horizontal(context),
//                             Expanded(
//                               child: Text(
//                                 ChatCubit.get(context).usersList[index].lastName,
//                                 style: const TextStyle(
//                                   fontSize: 18.0,
//                                   fontWeight: FontWeight.w800,
//                                 ),
//                               ),
//                             ),
//
//                             // IconButton(
//                             //   padding: EdgeInsets.zero,
//                             //   onPressed: () {},
//                             //   icon: Icon(
//                             //     Icons.more_vert,
//                             //     size: 16.0,
//                             //   ),
//                             // ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//               separatorBuilder: (context, index) => space10Vertical(context),
//               itemCount: ChatCubit.get(context).usersList.length,
//             )
//
//     );
//   }
// }
