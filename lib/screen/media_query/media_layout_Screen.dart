import 'package:flutter/material.dart';

class MediaLayoutScreen extends StatefulWidget {
  MediaLayoutScreen({Key key}) : super(key: key);

  @override
  _MediaLayoutScreenState createState() => _MediaLayoutScreenState();
}

class _MediaLayoutScreenState extends State<MediaLayoutScreen> {
  gridViewForPhone(Orientation orientation) {
    //gridView fro phone
    return GridView.count(
      crossAxisCount: 2, //จน row
      childAspectRatio: 1, // ความกว้างของ colum ex. เท่ากับ 0.5 คือ   ความแนวของ row เป็น 1/0.5 = 2 เท่าของ row
      mainAxisSpacing: 4.0,  //gap แกนหลัก
      crossAxisSpacing: 4.0, //gap แกน รอง
        children: List.generate(100, (index) {
      return Card(
        child: Container(
          alignment: Alignment.center,
          color: Colors.red,
          child: Text("$index"),
        ),
      );
    }));
  }

  gridViewForTablet(Orientation orientation) {
     //gridView fro phone
    return GridView.count(
      crossAxisCount: orientation==Orientation.portrait ? 4:7, //จน row
      childAspectRatio: 1, // ความกว้างของ colum ex. เท่ากับ 0.5 คือ   ความแนวของ row เป็น 1/0.5 = 2 เท่าของ row
      mainAxisSpacing: 4.0,  //gap แกนหลัก
      crossAxisSpacing: 4.0, //gap แกน รอง
        children: List.generate(100, (index) {
      return Card(
        child: Container(
          alignment: Alignment.center,
          color: Colors.red,
          child: Text("$index"),  
        ),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    final orientation =
        MediaQuery.of(context).orientation; //check หน้าจอแนวตั้ง หรือ แนวนอน
    final double shortSide = MediaQuery.of(context).size.shortestSide;
    final usemobileLaout = shortSide < 600.0;

    return Scaffold(
      appBar: AppBar(
        title: Text("Media Layout Grid"),
      ),
      body:usemobileLaout ? gridViewForPhone(orientation):gridViewForTablet(orientation),
    );
  }
}
