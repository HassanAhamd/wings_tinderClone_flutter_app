import 'package:flutter/material.dart';
class UserImageSmall extends StatelessWidget{
  final imageUrl;

  UserImageSmall(this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8,right: 8),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(imageUrl),fit: BoxFit.cover,),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}