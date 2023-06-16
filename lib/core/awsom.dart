

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class Awsom extends StatelessWidget {
  const Awsom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: GestureDetector(onTap: (){
          AwesomeDialog(
            context: context,
            animType: AnimType.scale,
            dialogType: DialogType.info,
            body: Center(child: Text(
              'If the body is specified, then title and description will be ignored, this allows to 											further customize the dialogue.',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),),
            title: 'This is Ignored',
            desc:   'This is also Ignored',
            btnOkOnPress: () {},
          )..show();
        }),
      )
    );
  }
}
