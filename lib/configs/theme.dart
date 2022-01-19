import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme(){
  return ThemeData(
    primaryColorDark:  Color(0xFF500F0C),
    primaryColor: Color(0xFF7D231E),
    primaryColorLight: Color(0xFFFF8B85),
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Color(0xFFF5F5F5),


    fontFamily: 'Futura',
    textTheme:
    TextTheme(
      headline1: TextStyle(color: Color(0xFF1B070B),
    fontWeight: FontWeight.bold,
    fontSize: 36,),
      headline2: TextStyle(color: Color(0xFF1B070B),
        fontWeight: FontWeight.bold,
        fontSize: 24,),
      headline3: TextStyle(color: Color(0xFF1B070B),
        fontWeight: FontWeight.bold,
        fontSize: 18,),
      headline4: TextStyle(color: Color(0xFF1B070B),
        fontWeight: FontWeight.bold,
        fontSize: 16,),
      headline5: TextStyle(color: Color(0xFF1B070B),
        fontWeight: FontWeight.bold,
        fontSize: 14,),
      headline6: TextStyle(color: Color(0xFF1B070B),
        fontWeight: FontWeight.normal,
        fontSize: 14,),

      bodyText1: TextStyle(color: Color(0xFF1B070B),
        fontWeight: FontWeight.normal,
        fontSize: 12,),
      bodyText2: TextStyle(color: Color(0xFF1B070B),
        fontWeight: FontWeight.normal,
        fontSize: 10,),
    ),

  );
}