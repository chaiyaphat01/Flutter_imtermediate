import 'package:flutter/material.dart';
import 'package:flutter_api/screen/home/home_screen.dart';
import 'package:flutter_api/screen/media_query/media_query.dart';
import 'package:flutter_api/screen/media_query/media_layout_Screen.dart';
import 'package:flutter_api/screen/login/login_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/":(BuildContext context)=>LoginScreen()
};
