
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wings_dating_app_flutter/screens/HomeScreen.dart';
import 'package:wings_dating_app_flutter/screens/SplashScreen.dart';
import 'package:wings_dating_app_flutter/screens/UserProfileScreen.dart';
import 'package:wings_dating_app_flutter/swipe_blocks/Swipe_event.dart';
import 'swipe_blocks/Swipe_bloc.dart';

import 'configs/theme.dart';
import 'models/Users.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) =>
      SwipeBloc()
        ..add(LoadUsersEvent(users: User.users)))
    ], child: MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),)
    );
  }
}

