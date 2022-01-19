import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:wings_dating_app_flutter/configs/theme.dart';
import 'package:wings_dating_app_flutter/screens/SplashScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
        debugShowCheckedModeBanner: false,
        home: SplashScreen()
    );
  }
}

