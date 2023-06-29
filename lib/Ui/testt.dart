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
    return BlocProvider(
      create: (BuildContext context) => TrainerCubit()..getPath()..getaaa(),

      child: BlocConsumer<TrainerCubit, TrainerState>(
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
                   //TrainerCubit.get(context).createPath(text: name.text);

                  }
                  ),
                  Container(height: 450,child: ListView.builder(
                      itemCount:TrainerCubit.get(context).aaaalist.length ,
                      itemBuilder: (ctx,index){
                    return Padding(
                      padding: const EdgeInsets.only(top: 16.0,right: 15,left: 15,bottom: 0),
                      child:Column(
                        children: [
                          Text(TrainerCubit.get(context).aaaalist[index].values.single.text.toString()),
                          SizedBox(height: 20,),
                          myDivider(),

                          Text(TrainerCubit.get(context).aaaalist[index].values.single.image.toString()),
                          SizedBox(height: 20,),
                          myDivider(),



                          Text(TrainerCubit.get(context).aaaalist[index].values.single.pid.toString()),
                        ],
                      ) ,
                    );
                  }),)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
