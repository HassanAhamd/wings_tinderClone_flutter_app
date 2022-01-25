import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wings_dating_app_flutter/models/Users.dart';
import 'package:wings_dating_app_flutter/widget/CustomAppBar.dart';
import 'package:wings_dating_app_flutter/widget/CustomTitleWithIcon.dart';

class ProfileScreen extends StatelessWidget{
  final user = User.users[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(hasActions: true,title: "Profile",),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height/4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(color: Colors.grey, offset: Offset(3,3), blurRadius: 3, spreadRadius: 3,)
                ],
                image: DecorationImage(image: NetworkImage(user.imageUrls[4]),fit: BoxFit.cover),
                
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 40),
              height: MediaQuery.of(context).size.height/4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(colors: [
                  Theme.of(context).primaryColor.withOpacity(0.1),
                  Theme.of(context).primaryColor.withOpacity(0.9),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                  child: Text("${user.name}",style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.white),)),
            ),
          ],),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTitileWithIcon(title: 'Biography', icon: Icons.edit,),
                Text('${user.bio}',style: Theme.of(context).textTheme.bodyText1!.copyWith(height: 1.5),),
                SizedBox(height: 10,),
                CustomTitileWithIcon(title: 'Pictures', icon: Icons.edit,),
                SizedBox(height: 125,child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: user.imageUrls.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Container(
                        height: 125,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: NetworkImage(user.imageUrls[index]),fit: BoxFit.cover)
                        ),
                      ),
                    );
                  },
                ),),
                SizedBox(height: 10,),
                CustomTitileWithIcon(title: 'Location', icon: Icons.edit,),
                Text('Qasim Town, Pakistan Bahawalpur',style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.grey),),
                SizedBox(height: 10,),
                CustomTitileWithIcon(title: 'Interests', icon: Icons.edit,),
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