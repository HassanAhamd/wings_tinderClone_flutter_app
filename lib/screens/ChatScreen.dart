import 'package:flutter/material.dart';
import 'package:wings_dating_app_flutter/models/User_Match_Model.dart';

class ChatScreen extends StatelessWidget{

  final UserMatch matchedUser;

  ChatScreen({required this.matchedUser});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Column(children:[
          CircleAvatar(radius: 15,backgroundImage: NetworkImage(matchedUser.matchedUser.imageUrls[4]),),
          Text("${matchedUser.matchedUser.name}",style: Theme.of(context).textTheme.headline4,)
        ],),
      ),
      body: Column(
        children:[
          Expanded(
            child: SingleChildScrollView(
                child: matchedUser.chat != null
                    ? Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: matchedUser.chat![0].messages.length,
                    itemBuilder: (context, index){
                      return ListTile(
                          title:
                          matchedUser.chat![0].messages[index].senderId == 0
                              ? Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  child: Text("${matchedUser.chat![0].messages[index].message}",style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.normal),))):
                          Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                  children:[
                                    CircleAvatar(radius: 15,backgroundImage: NetworkImage(matchedUser.matchedUser.imageUrls[4]),),
                                    SizedBox(width: 10,),
                                    Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        child: Text("${matchedUser.chat![0].messages[index].message}", style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white),)),
                                  ]
                              ))
                      );
                    },
                  ),
                )
                    : SizedBox()
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 100,
            child: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle
                    ),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.send_outlined,color: Colors.white,))),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Type here...",
                      contentPadding: const EdgeInsets.only(left: 20,bottom: 5,top: 5),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}