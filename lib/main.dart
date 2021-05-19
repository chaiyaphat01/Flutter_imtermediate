import 'package:flutter/material.dart';
import 'package:flutter_api/routers.dart';
import 'package:flutter_api/themes/styles.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    // DevicePreview(builder: (context) => MyApp())
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: appTheme(),
      routes: routes,
      initialRoute: '/',
    );
  }
}
