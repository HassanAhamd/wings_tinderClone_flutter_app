import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wings_dating_app_flutter/blocs/Swipe_bloc.dart';
import 'package:wings_dating_app_flutter/blocs/Swipe_event.dart';
import 'package:wings_dating_app_flutter/blocs/Swipe_state.dart';
import 'package:wings_dating_app_flutter/screens/UserProfileScreen.dart';

import 'package:wings_dating_app_flutter/widget/CustomAppBar.dart';
import 'package:wings_dating_app_flutter/widget/ChoiceButton.dart';
import 'package:wings_dating_app_flutter/widget/UserCard.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "DISCOVER",hasActions: true,),
      body: BlocBuilder<SwipeBloc, SwipeState>(
        builder: (context,state){
          if (state is SwipeLoading){
            return Center(child: CircularProgressIndicator());
          } else if(state is SwipeLoaded){
            return Column(children: [
              InkWell(
                onDoubleTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context) =>
                          UserProfileScreen(user: state.users[0],)
                      )
                  );
                },
                child: Draggable(
                  child: UserCard(user:state.users[0]),
                  feedback: UserCard(user: state.users[0]),
                  childWhenDragging: UserCard(user: state.users[1]),
                  onDragEnd: (drag){
                    if(drag.velocity.pixelsPerSecond.dx < 0){
                      context.read<SwipeBloc>()
                        ..add(SwipeLeftEvent(user: state.users[0]));
                      print("Swipe Left");
                    } else {
                      context.read<SwipeBloc>()
                        ..add(SwipeRightEvent(user: state.users[0]));
                      print("Swipe Right");
                    }
                  },
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 120,
              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    InkWell(
                      onTap: (){
                        context.read<SwipeBloc>()
                          ..add(SwipeLeftEvent(user: state.users[0]));
                        print("Swipe Left");
          },
                      child: ChoiceButton(
                        width: 60,
                        height: 60,
                        size: 25,
                        color: Theme.of(context).primaryColor,
                        icon: Icons.clear_rounded, hasGradient: false,
                      ),
                    ),
                    InkWell(
                      onTap: (){
          context.read<SwipeBloc>()
          ..add(SwipeRightEvent(user: state.users[0]));
          print("Swipe Right");
          },

                      child: ChoiceButton(
                        width: 80,
                        height: 80,
                        size: 30,
                        color: Colors.white,
                        icon: Icons.favorite, hasGradient: true,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        context.read<SwipeBloc>()
                          ..add(SwipeRightEvent(user: state.users[0]));
                        print("Swipe Right");
                      },
                      child: ChoiceButton(
                        width: 60,
                        height: 60,
                        size: 25,
                        color: Theme.of(context).primaryColorDark,
                        icon: Icons.watch_later, hasGradient: false,
                      ),
                    ),
                  ],
                ),)
            ],);
          } else{
            return Center(child: Text("Somthing Went Wrong..."),);
          }
        },
      )
      );
  }
}
