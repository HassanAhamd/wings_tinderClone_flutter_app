


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTitileWithIcon extends StatelessWidget {
  final String title;
  final IconData icon;

  CustomTitileWithIcon({required this.title, required this.icon,});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("$title",style: Theme.of(context).textTheme.headline2,),
        IconButton(onPressed: (){},icon: Icon(icon)),],);
  }
}