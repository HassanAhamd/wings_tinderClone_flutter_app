import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:wings_dating_app_flutter/widget/CustomButton.dart';
import 'package:wings_dating_app_flutter/widget/CustomCheckBox.dart';
import 'package:wings_dating_app_flutter/widget/CustomTextField.dart';
import 'package:wings_dating_app_flutter/widget/CustomTextHeader.dart';


class demo_screen extends StatelessWidget{
  final tabController;

  demo_screen({
    Key? key,required this.tabController}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start
          ,children: [
            CustomTextHeader(tabController: tabController,text: "What\'s Your Gender?",),
            SizedBox(height: 10,),
            CustomCheckBox(tabController: tabController,text: "Male",),
            CustomCheckBox(tabController: tabController,text: "Female",),
            SizedBox(height: 100,),
            CustomTextHeader(tabController: tabController,text: "What\'s Your Age?",),
            CustomTextField(tabController: tabController,text: "Enter Your Age",),

          ],),
          Column(
              children:[
                StepProgressIndicator(
                  totalSteps: 6,
                  currentStep: 3,
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