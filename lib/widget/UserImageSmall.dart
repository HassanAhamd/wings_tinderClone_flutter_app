import 'package:flutter/material.dart';
class UserImageSmall extends StatelessWidget{
  final imageUrl;
  final double height;
  final double width;

  UserImageSmall({Key? key, required this.imageUrl, this.height = 60, this.width = 60}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8,right: 8),
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(imageUrl),fit: BoxFit.cover,),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}