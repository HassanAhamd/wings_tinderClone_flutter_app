import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:wings_dating_app_flutter/widget/CustomButton.dart';
import 'package:wings_dating_app_flutter/widget/CustomImageContainer.dart';
import 'package:wings_dating_app_flutter/widget/CustomTextHeader.dart';


class picture_screen extends StatelessWidget{
  final tabController;

  picture_screen({
    Key? key,required this.tabController}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextHeader(tabController: tabController, text: 'Add 2 or More Pictures'),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageContainer(tabController: tabController),
                CustomImageContainer(tabController: tabController),
                CustomImageContainer(tabController: tabController),
                CustomImageContainer(tabController: tabController),
              ],),
              Row(children: [
                CustomImageContainer(tabController: tabController),
                CustomImageContainer(tabController: tabController),
                CustomImageContainer(tabController: tabController),
                CustomImageContainer(tabController: tabController),
              ],),
          ],),
          Column(
              children:[
                StepProgressIndicator(
                  totalSteps: 6,
                  currentStep: 4,
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