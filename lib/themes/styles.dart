import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    fontFamily: "kanit",
    primaryColor: Colors.blue, //สี tabbar
    accentColor: Colors.greenAccent,
    hintColor: Colors.red,
    buttonColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    canvasColor: Colors.white  //การวาดกล่อง etc Annimation
  );
}
