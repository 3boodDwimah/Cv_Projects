import 'package:cv/bloc/cubit_profile/cubit.dart';
import 'package:cv/core/colors.dart';
import 'package:cv/core/components.dart';
import 'package:cv/core/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

import '../../../../bloc/cubit_profile/states.dart';

class JobDescription extends StatelessWidget {
  var nameCompanyController = TextEditingController();
  var desTitleController = TextEditingController();
  var jobTitleController = TextEditingController();
  var universityNameController = TextEditingController();
  var dgreyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      // BlocConsumer<EditProfileCubit, EditProfileStates>(
      //     listener: (context, state) {
      //     },
      //     builder: (context, state) {
      //       return
              SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    color: AppColor.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'الخبرة',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColor.b10000d,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        myDivider(),
                        SizedBox(
                          height: 20,
                        ),
                        defaultFormField(
                            hintStyle: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.linkWaterD0D6E0,
                            ),
                            hint: "المسمى الوظيفي",
                            color: AppColor.white,
                            controller: jobTitleController,
                            type: TextInputType.name),
                        SizedBox(
                          height: 20,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                ],
              ),
            );
  //        });
  }
}
