import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final title;
  final hasActions;

  CustomAppBar({required this.title, required this.hasActions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: <Widget>[
          Expanded(child: Image.asset('assets/wings.png',height: 50,),),
          Expanded(flex: 1,child: Text("$title",style: Theme.of(context).textTheme.headline2,),),
        ],
      ),
      actions: hasActions ? [
        IconButton(onPressed: (){}, icon: Icon(Icons.message,color: Theme.of(context).primaryColor,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.person,color: Theme.of(context).primaryColor,)),

      ]: null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}