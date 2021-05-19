import 'package:flutter/material.dart';

class MediaQueryScrren extends StatefulWidget {
  MediaQueryScrren({Key key}) : super(key: key);

  @override
  _MediaQueryScrrenState createState() => _MediaQueryScrrenState();
}

class _MediaQueryScrrenState extends State<MediaQueryScrren> {
  @override
  Widget build(BuildContext context) {
    //การอ่านขนาด กว้าง x สูง
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenhigh = MediaQuery.of(context).size.height;
    double appBarHight = 56;
    return Scaffold(
      //status bar h = 24
      //Defalt Appbar = 56
      // toolhight vs PreferredSize
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarHight),
        child: AppBar(
          title: Text("Media Query"),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Text("screenSize : $screenSize"),
            color: Colors.pink,
            width: screenWidth,
            height: screenhigh * 0.4 ,
          ),
          Container(
            child: Text("screenWidth :$screenWidth"),
            color: Colors.greenAccent,
            width: screenWidth,
            height: screenhigh * 0.2,
          ),
          Container(
            child: Text("screenhigh :$screenhigh"),
            color: Colors.blueGrey,
            width: screenWidth,
            height: screenhigh * 0.4 - appBarHight - 24,
          ),
        ],
      ),
    );
  }
}
