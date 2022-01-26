import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wings_dating_app_flutter/cubit/signup_cubit.dart';

class CustomButton extends StatelessWidget{
  final TabController tabController;
  final text;


  CustomButton({Key? key ,required this.tabController, required this.text,}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(colors: [
            Colors.black,Theme.of(context).primaryColor
          ])
        ),
        child: Container(
          width: double.infinity,
          child: Center(
            child: ElevatedButton(onPressed: () {
                tabController.animateTo(tabController.index+1);
                if(tabController.index==2){
                  context.read<SignUpCubit>().signupWithCredentials();
                }
              }, child: Text("$text",style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white),),style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.transparent
              ),),
          ),

        ));
  }


}