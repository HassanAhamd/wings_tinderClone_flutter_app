import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget{
  final TabController tabController;
  final String text;


  CustomCheckBox({required this.tabController, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Checkbox(value: false, onChanged: (bool? newValue) {}),
      Text("$text",style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.normal),)
    ],);
  }

}