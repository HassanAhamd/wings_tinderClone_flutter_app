import 'package:flutter/material.dart';
import 'package:wings_dating_app_flutter/models/User_Match_Model.dart';
import 'package:wings_dating_app_flutter/screens/ChatScreen.dart';
import 'package:wings_dating_app_flutter/widget/CustomAppBar.dart';
import 'package:wings_dating_app_flutter/widget/UserImageSmall.dart';

class MatchesScreen extends StatelessWidget{

  final inactiveMatchedUsers = UserMatch.matches.where((match) => match.userId == 0 && match.chat!.isEmpty).toList();
  final activeMatchedUsers = UserMatch.matches.where((match) => match.userId == 0 && match.chat!.isNotEmpty).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'MATCHES', hasActions: true,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("New Matched Users",style: Theme.of(context).textTheme.headline3!.copyWith(color: Theme.of(context).primaryColor),),
              SizedBox(height: 100, child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: inactiveMatchedUsers.length,
              itemBuilder: (context, index){
                return Column(children: [
                  UserImageSmall(
                    imageUrl:  inactiveMatchedUsers[index].matchedUser.imageUrls[4],
                    height: 70,
                    width: 70,
                  ),
                  SizedBox(height: 5,),
                  Text(inactiveMatchedUsers[index].matchedUser.name,style: Theme.of(context).textTheme.headline5!.copyWith(color: Theme.of(context).primaryColor),),
                ], );
              },),),
                SizedBox(height: 30,),
                Text("Your Chats",style: Theme.of(context).textTheme.headline3!.copyWith(color: Theme.of(context).primaryColor),),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: activeMatchedUsers.length,
                  itemBuilder: (context, index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context) =>
                                ChatScreen(matchedUser: activeMatchedUsers[index],)
                            )
                        );
                      },
                      child: Row(
                        children: [
                          UserImageSmall(
                            height: 80,
                            width: 80,
                            imageUrl: activeMatchedUsers[index].matchedUser.imageUrls[4],),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text('${activeMatchedUsers[index].matchedUser.name}',style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.black),),
                            SizedBox(height: 5,),
                            Text('${activeMatchedUsers[index].chat![0].messages[0].message}',style: Theme.of(context).textTheme.headline6!.copyWith(color:  Colors.black),),
                              SizedBox(height: 5,),
                            Text('${activeMatchedUsers[index].chat![0].messages[0].timeSting}',style: Theme.of(context).textTheme.bodyText1,),

                          ],),
                        ],
                      ),
                    );
                  },
                ),
              ],),)

        ],
        ),
      ),
    );
  }


}