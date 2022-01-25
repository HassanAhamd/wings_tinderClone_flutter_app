import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget{
  final TabController tabController;


  CustomImageContainer({required this.tabController,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10,right: 10),
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border(
              bottom: BorderSide(color: Theme.of(context).primaryColor,width: 1),
              top: BorderSide(color: Theme.of(context).primaryColor,width: 1),
              left: BorderSide(color: Theme.of(context).primaryColor,width: 1),
              right: BorderSide(color: Theme.of(context).primaryColor,width: 1)
          ),
        ),
        child: Align(
          alignment: Alignment.bottomRight,
            child: IconButton(
              icon: Icon(Icons.add_circle,color: Theme.of(context).primaryColor,),
              onPressed: (){},)),
      ),
    );
  }

}