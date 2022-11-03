import 'package:flutter/material.dart';


class InputDecorations {

  static InputDecoration authInputDecoration({
    required String hintText,
    required String labelText,
    IconData? prefixIcon
  }) {
    return InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFFF595758),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFFF595758),
            width: 1
          )
        ),
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 14
        ),
        prefixIcon: prefixIcon != null 
          ? Icon( prefixIcon, color: Color(0xFFFF595758))
          : null
      );
  }  

}