import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{
  final TabController tabController;
  final String text;
  final TextEditingController? txtEditingController;
  final Function(String)? onChanged;


  CustomTextField({required this.tabController, required this.text, this.txtEditingController,this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtEditingController,
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
      onChanged: onChanged,
    );
  }

}