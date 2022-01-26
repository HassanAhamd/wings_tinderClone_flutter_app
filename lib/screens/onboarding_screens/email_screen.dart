import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:wings_dating_app_flutter/cubit/signup_cubit.dart';
import 'package:wings_dating_app_flutter/cubit/signup_state.dart';
import 'package:wings_dating_app_flutter/widget/CustomButton.dart';
import 'package:wings_dating_app_flutter/widget/CustomTextField.dart';
import 'package:wings_dating_app_flutter/widget/CustomTextHeader.dart';


class email_screen extends StatelessWidget{
  final tabController;

  email_screen({
    Key? key,required this.tabController,}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextHeader(tabController: tabController,
                    text: "What\'s Your Email Address ?",),
                  CustomTextField(tabController: tabController,
                    text: "Enter You Email Address",
                    onChanged: (value) {
                    context.read<SignUpCubit>().emailChanged(value);
                    print(state.email);
                    },),
                  SizedBox(height: 100,),
                  CustomTextHeader(
                    tabController: tabController, text: "Choose Password",),
                  CustomTextField(
                    tabController: tabController, text: "Enter Your Password",
                    onChanged: (value) {
                      context.read<SignUpCubit>().passwordChanged(value);
                      print(state.password);
                    },),
                ],),
              Column(
                  children: [
                    StepProgressIndicator(
                      totalSteps: 6,
                      currentStep: 1,
                      selectedColor: Theme
                          .of(context)
                          .primaryColor,
                      unselectedColor: Theme
                          .of(context)
                          .backgroundColor,
                    ),
                    SizedBox(height: 10,),
                    CustomButton(
                      tabController: tabController, text: "NEXT STEP",),
                  ]),

            ],
          ),

        );
      });
  }

}