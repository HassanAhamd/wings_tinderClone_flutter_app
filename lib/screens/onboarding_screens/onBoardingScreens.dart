import 'package:flutter/material.dart';
import 'package:wings_dating_app_flutter/screens/onboarding_screens/demo_screen.dart';
import 'package:wings_dating_app_flutter/screens/onboarding_screens/email_screen.dart';
import 'package:wings_dating_app_flutter/screens/onboarding_screens/email_verfication_screen.dart';
import 'package:wings_dating_app_flutter/screens/onboarding_screens/start_screen.dart';
import 'package:wings_dating_app_flutter/widget/CustomAppBar.dart';

class onBoardingScreens extends StatelessWidget{


  static const List<Tab> tabs = <Tab>[
    Tab(text: 'Start',),
    Tab(text: 'Email',),
    Tab(text: 'Email Verification',),
    Tab(text: 'Demo Screen',),

  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: tabs.length, child: Builder(builder: (BuildContext context){
      final  TabController tabController = DefaultTabController.of(context)!;
      tabController.addListener(() {
        if(!tabController.indexIsChanging){}
      });
      return Scaffold(
      appBar: CustomAppBar(title: "WINGS",hasActions: false,),
      body: TabBarView(children: [
        start_screen(tabController: tabController,),
        email_screen(tabController: tabController,),
        email_verification_screen(tabController: tabController),
        demo_screen(tabController: tabController),
      ],),
    );
    }),
    );
  }
}