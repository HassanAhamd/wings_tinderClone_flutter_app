import 'dart:async';

import 'package:flutter/material.dart';

import 'HomeScreen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}
class _MySplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                HomeScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Image.asset('assets/wings.png'),
          Text('Wings', style: Theme.of(context).textTheme.headline1!.copyWith(color: Color(0xFF7D231E)),)
        ],
      ),
    );
  }
}