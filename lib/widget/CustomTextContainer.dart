import 'package:flutter/material.dart';

class CustomTextContainer extends StatelessWidget{
  final TabController tabController;
  final String text;


  CustomTextContainer({required this.tabController, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10,right: 5),
        child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(colors: [
            Colors.black,Theme.of(context).primaryColor
          ]),
        ),
        child: Center(child: Text("$text",style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),)),
    ),
      );

  }

}