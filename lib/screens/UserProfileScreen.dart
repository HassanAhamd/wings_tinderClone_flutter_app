import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wings_dating_app_flutter/models/Users.dart';
import 'package:wings_dating_app_flutter/widget/ChoiceButton.dart';

class UserProfileScreen extends StatelessWidget{
  final User user;
  UserProfileScreen({required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height/2,
            child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Hero(
                      tag: 'user_profile',
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: NetworkImage(user.imageUrls[0]),fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly
                        ,children: [
                        ChoiceButton(
                          width: 60,
                          height: 60,
                          size: 25,
                          color: Theme.of(context).primaryColor,
                          icon: Icons.clear_rounded, hasGradient: false,),
                        ChoiceButton(
                            width: 80,
                            height: 80,
                            size: 30,
                            color: Colors.white,
                            icon: Icons.favorite, hasGradient: true),
                        ChoiceButton(
                          width: 60,
                          height: 60,
                          size: 25,
                          color: Theme.of(context).primaryColorDark,
                          icon: Icons.watch_later, hasGradient: false,),
                      ],),
                    ),
                  ),
                ]
            ),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${user.name}, ${user.age}",style: Theme.of(context).textTheme.headline1,),
                Text("${user.jobTitle}",style: Theme.of(context).textTheme.headline3!.copyWith(fontWeight: FontWeight.normal,),),
                SizedBox(height: 15,),
                Text("About",style: Theme.of(context).textTheme.headline2,),
                Text("${user.bio}",style: Theme.of(context).textTheme.headline6!.copyWith(height: 2),),
                SizedBox(height: 15,),
                Text("Interests",style: Theme.of(context).textTheme.headline2,),
                Row(children:
                  user.interests.map((intrest) => Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 5,right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5)
                        ,gradient: LinearGradient(colors: [
                      Theme.of(context).primaryColor,Colors.black
                    ])),
                    child: Text("$intrest",style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),),
                  ),).toList(),
                ),
              ],
            ),
          ),

        ],
      ),


    );
  }
}