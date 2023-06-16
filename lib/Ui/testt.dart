import 'package:cv/bloc/cubit_trainer/cubit.dart';
import 'package:cv/bloc/cubit_trainer/states.dart';
import 'package:cv/core/cache_helper.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class aaaaaaaa extends StatelessWidget {
  var name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TrainerCubit, TrainerState>(
      listener: (context, state) {
   
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColor.bagroundColorF8,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: defaultFormFieldWithOut(controller: name),
                  ),
                ),
                SizedBox(height: 20,),
                defauContainer(text: "Send",
                height: 25,
                width: 200,
                borderRadius: 5,
                onPressed: (){
               //   TrainerCubit.get(context).createPath(text: name.text);

                }
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
