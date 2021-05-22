import 'package:flutter/material.dart';

import 'package:flutter_api/screen/login/login_screen.dart';
import 'package:flutter_api/screen/drawer/about/about_screen.dart';
import 'package:flutter_api/screen/drawer/contact/contact_screen.dart';
import 'package:flutter_api/screen/drawer/term/term_screen.dart';
import 'package:flutter_api/screen/dashboard/dashboard_screen.dart';
import 'package:flutter_api/screen/addProduct/addProduct.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/login": (BuildContext context) => LoginScreen(),
  "/about": (BuildContext context) => AboutScreen(),
  "/contact": (BuildContext context) => ContactScreen(),
  "/term": (BuildContext context) => TermScreen(),
  "/dashboard": (BuildContext context) => DashBoradScreen(),
  "/addproduct": (BuildContext context) {
    print(context);
    return AddproductScreen();
  },
};
