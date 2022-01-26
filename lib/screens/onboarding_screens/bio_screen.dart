import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:wings_dating_app_flutter/widget/CustomButton.dart';
import 'package:wings_dating_app_flutter/widget/CustomTextContainer.dart';
import 'package:wings_dating_app_flutter/widget/CustomTextField.dart';
import 'package:wings_dating_app_flutter/widget/CustomTextHeader.dart';


class bio_screen extends StatelessWidget{
  final tabController;
  final bioController = TextEditingController();

  bio_screen({
    Key? key,required this.tabController}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextHeader(tabController: tabController, text: 'Describe Yourself in few words'),
              CustomTextField(tabController: tabController, text: 'Enter Your Bio', txtEditingController: bioController,),
              SizedBox(height: 100,),
              CustomTextHeader(tabController: tabController, text: 'What do you like ?'),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(children: [
                  CustomTextContainer(tabController: tabController,text: 'MUSIC',),
                  CustomTextContainer(tabController: tabController,text: 'GAMING',),
                  CustomTextContainer(tabController: tabController,text: 'POLITICS',),
                ],),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(children: [
                  CustomTextContainer(tabController: tabController,text: 'MOVIES',),
                  CustomTextContainer(tabController: tabController,text: 'NATURES',),
                  CustomTextContainer(tabController: tabController,text: 'FOOTBALL',),
                  CustomTextContainer(tabController: tabController,text: 'CRICKET',),],),
              ),
            ],),
          Column(
              children:[
                StepProgressIndicator(
                  totalSteps: 6,
                  currentStep: 5,
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