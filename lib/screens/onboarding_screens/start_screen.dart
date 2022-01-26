

import 'package:flutter/material.dart';
import 'package:wings_dating_app_flutter/widget/CustomButton.dart';


class start_screen extends StatelessWidget{
  final tabController;


  start_screen({
    Key? key,required this.tabController}): super(key: key);
  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height/3;
    final width = MediaQuery.of(context).size.width;
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(
              height: hight,
              width: width,
              child: Image.asset('assets/startintro.png'),
            ),
            SizedBox(height: 50,),
            Text("Welcome to Wings",style: Theme.of(context).textTheme.headline2,),
            Text("Wings is an online dating and geosocial networking application. Users anonymously swipe right or left to see other users' profiles, which include their photo, a short bio, and a list of their interests.",textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline6!.copyWith(height: 1.6),),
            SizedBox(height: 20,),
          ],
          ),
          CustomButton(tabController: tabController,text: "START",),
        ],
      ),

    );
  }

}