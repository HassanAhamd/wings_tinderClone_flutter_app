import 'package:flutter/material.dart';
import 'package:wings_dating_app_flutter/models/Users.dart';

import 'UserImageSmall.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'user_profile',
      child: Padding(
        padding: EdgeInsets.only(top: 10, left: 20, right: 20,bottom: 20), child: SizedBox(
        height: MediaQuery
            .of(context)
            .size
            .height / 1.4,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover
                    , image: NetworkImage(user.imageUrls[0])),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: Offset(3, 3),)
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(200, 0, 0, 0),
                    Color.fromARGB(0, 0, 0, 0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 20,
              child: Column(children: <Widget>[
                Text('${user.name}, ${user.age}', style: Theme
                    .of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: Colors.white),),
                Text('${user.jobTitle}', style: Theme
                    .of(context)
                    .textTheme
                    .headline3!
                    .copyWith(
                    color: Colors.white, fontWeight: FontWeight.normal),),
                Row(children: [
                  UserImageSmall(user.imageUrls[1]),
                  UserImageSmall(user.imageUrls[2]),
                  UserImageSmall(user.imageUrls[3]),
                  UserImageSmall(user.imageUrls[4]),
                  SizedBox(width: 5,),
                  Container(height: 25,width: 25,decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                    child: Icon(Icons.info_outline,size: 25,color: Theme.of(context).primaryColor,),
                  ),
                ],
                ),
              ], crossAxisAlignment: CrossAxisAlignment.start,),
            ),
          ],
        ),


      ),),
    );
  }
}