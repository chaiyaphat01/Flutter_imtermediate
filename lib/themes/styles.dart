import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme() {
  return ThemeData(
      textTheme: GoogleFonts.kanitTextTheme(),
      primaryColor: Colors.blue, //สี tabbar
      accentColor: Colors.greenAccent,
      hintColor: Colors.red,
      buttonColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      canvasColor: Colors.white //การวาดกล่อง etc Annimation
      );
}
