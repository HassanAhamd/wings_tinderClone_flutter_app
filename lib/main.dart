
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wings_dating_app_flutter/blocs/auth_bloc/Auth_bloc.dart';
import 'package:wings_dating_app_flutter/repo/auth_repo.dart';
import 'package:wings_dating_app_flutter/screens/HomeScreen.dart';
import 'package:wings_dating_app_flutter/screens/SplashScreen.dart';
import 'package:wings_dating_app_flutter/screens/UserProfileScreen.dart';
import 'blocs/Swipe_bloc.dart';
import 'blocs/Swipe_event.dart';
import 'configs/theme.dart';
import 'models/Users.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => AuthRepo(),),
      ],
      child: MultiBlocProvider(providers: [
        BlocProvider(create: (_) => AuthBloc(authRepo: context.read<AuthRepo>(),),),
        BlocProvider(create: (_) =>
        SwipeBloc()
          ..add(LoadUsersEvent(users: User.users)))
      ], child: MaterialApp(
        theme: theme(),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),)
      ),
    );
  }
}

