import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  final TabController tabController;
  final text;


  CustomButton({Key? key ,required this.tabController, required this.text}) :super(key: key);

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
            child: ElevatedButton(onPressed: (){
                tabController.animateTo(tabController.index+1);
              }, child: Text("$text",style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white),),style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.transparent
              ),),
          ),

        ));
  }


}