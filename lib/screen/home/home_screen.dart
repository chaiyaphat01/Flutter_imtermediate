import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //render
    print("context");
    return Scaffold(
      appBar: AppBar(
        title: Text("API"),
        leading: Icon(Icons.access_alarm),
        actions: [
          IconButton(icon: Icon(Icons.ad_units_rounded), onPressed: () {})
        ],
      ),
      body: Center(
          child: TextButton(
              onPressed: () {
                print("คุณได้กดแล้วนะจะ");
              },
              child: Text("My Home"))),
    );
  }
}
