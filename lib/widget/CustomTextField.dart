import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{
  final TabController tabController;
  final String text;


  CustomTextField({required this.tabController, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: text,
        contentPadding: const EdgeInsets.only(bottom: 5,top: 12),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
      ),
    );
  }

}