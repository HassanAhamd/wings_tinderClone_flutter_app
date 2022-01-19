import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wings_dating_app_flutter/models/Users.dart';
import 'package:wings_dating_app_flutter/widget/AppBar.dart';
import 'package:wings_dating_app_flutter/widget/UserCard.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(children:[
        UserCard(user: User.users[0]),
        Padding(padding: EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 120,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            ChoiceButton(
              width: 60,
              height: 60,
              size: 25,
              color: Theme.of(context).primaryColor,
              icon: Icons.clear_rounded, hasGradient: false,
            ),
            ChoiceButton(
              width: 80,
              height: 80,
              size: 30,
              color: Colors.white,
              icon: Icons.favorite, hasGradient: true,
            ),
            ChoiceButton(
              width: 60,
              height: 60,
              size: 25,
              color: Theme.of(context).primaryColorDark,
              icon: Icons.watch_later, hasGradient: false,
            ),
          ],
        ),)
        
      ], ),
    );
  }
}

class ChoiceButton extends StatelessWidget {
  final double width;
  final double height;
  final double size;
  final Color color;
  final IconData icon;
  final bool hasGradient;


 const ChoiceButton({Key? key,required this.width, required this.height, required this.size, required this.color, required this.icon, required this.hasGradient}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: hasGradient ?
            LinearGradient(colors: [Theme.of(context).primaryColor,Colors.black,]):
        LinearGradient(colors: [Colors.white,Colors.white]),
        boxShadow: [
          BoxShadow(color: Colors.grey.withAlpha(50),
          spreadRadius: 4,
          blurRadius: 4,
          offset: Offset(3,3)),
        ],
      ),
      child: Icon(icon,color: color,size: size,),
    );
  }
}