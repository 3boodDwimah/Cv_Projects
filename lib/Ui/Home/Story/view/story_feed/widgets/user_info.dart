import 'package:cv/core/colors.dart';
import 'package:flutter/material.dart';

import '../../../models/user_model.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Wrap(
        children: <Widget>[
          CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.grey[300],
            backgroundImage: NetworkImage(user.imagepro),
          ),
          SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.name,
              style: TextStyle(color: AppColor.white),

    ),
              Text(
                ' 14 hours'
                    ,style: TextStyle(color: AppColor.white),

              )],
          )
        ],
      ),
    );
  }
}
