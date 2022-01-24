import 'package:flutter/material.dart';
import 'package:wings_dating_app_flutter/widget/CustomButton.dart';
import 'package:wings_dating_app_flutter/widget/CustomTextField.dart';
import 'package:wings_dating_app_flutter/widget/CustomTextHeader.dart';


class email_screen extends StatelessWidget{
  final tabController;

  email_screen({
    Key? key,required this.tabController}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            CustomTextHeader(tabController: tabController,text: "What\'s Your Email Address ?",),
            CustomTextField(tabController: tabController,text: "Enter You Email Address",),
          ],),
          CustomButton(tabController: tabController,text: "NEXT STEP"),
        ],
      ),

    );
  }

}