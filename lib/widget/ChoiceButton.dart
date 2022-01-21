

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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