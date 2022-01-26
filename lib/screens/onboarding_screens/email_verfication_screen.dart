import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:wings_dating_app_flutter/widget/CustomButton.dart';
import 'package:wings_dating_app_flutter/widget/CustomTextField.dart';
import 'package:wings_dating_app_flutter/widget/CustomTextHeader.dart';


class email_verification_screen extends StatelessWidget{
  final tabController;
  final codeController = TextEditingController();

  email_verification_screen({
    Key? key,required this.tabController}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            CustomTextHeader(tabController: tabController,text: "Did you get Email Verification Code?",),
            CustomTextField(tabController: tabController,text: "Enter Your Email Verification Code", txtEditingController: codeController,),
          ],),
          Column(
              children:[
                StepProgressIndicator(
                  totalSteps: 6,
                  currentStep: 2,
                  selectedColor: Theme.of(context).primaryColor,
                  unselectedColor: Theme.of(context).backgroundColor,
                ),
                SizedBox(height: 10,),
                CustomButton(tabController: tabController,text: "NEXT STEP"),
              ]),
        ],
      ),

    );
  }

}