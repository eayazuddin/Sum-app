import 'package:flutter/material.dart';

InputDecoration AppInputStyle(lavel){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(),
    labelText: lavel
  );
}

TextStyle HeadTextStyle(){
  return TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w800
  );
}

ButtonStyle AppButtonstyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(22),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4))
    )
  );
}