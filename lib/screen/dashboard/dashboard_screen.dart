import 'package:flutter/material.dart';
import 'package:flutter_api/screen/bottomnav/home/home_screen.dart';
import 'package:flutter_api/screen/bottomnav/account/account_screen.dart';
import 'package:flutter_api/screen/bottomnav/notification/notification_screen.dart';
import 'package:flutter_api/screen/bottomnav/setting/setting_screen.dart';
import 'package:flutter_api/screen/bottomnav/stock/stock_screen.dart';
import 'package:shared_preferences/shared_preferences.dart'; //localstorage
import 'package:google_fonts/google_fonts.dart';

class DashBoradScreen extends StatefulWidget {
  DashBoradScreen({Key key}) : super(key: key);

  @override
  _DashBoradScreenState createState() => _DashBoradScreenState();
}

class _DashBoradScreenState extends State<DashBoradScreen> {
  //สร้าง Object localStorage
  SharedPreferences sharedPreferances;

  //สร้างตัวแปรไว้เก็บชื่อและ email ผู้ใช้
  String nameAccount = "", emailAccount = "";

  //สร้างตัวแปร ลิสต์ เก็บรายการหน้าที่ต้องการเปลี่ยนใน bottom navigation
  int _currentIndex = 0;
  String _title;
  bool isNotLogin = true;

  final List _children = [
    HomeScreen(),
    StockScreen(),
    NotificationScreen(),
    SettingScreen(),
    AccountScreen()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _title = "หน้าหลัก";
    chackLoginStatus();
    //ตรวจข้อมูล sharedPreferences ของผู้ใช้
  }

  //Function check login status
  chackLoginStatus() async {
    sharedPreferances = await SharedPreferences.getInstance();

    print(sharedPreferances.getString("storeEmail"));
    if (sharedPreferances.getString("storeEmail") == null) {
      Navigator.pushNamed(context, '/login');
    } else {
      setState(() {
        isNotLogin = false;
        nameAccount = sharedPreferances.getString("storeName");
        emailAccount = sharedPreferances.getString("storeEmail");
      });
    }
  }

// สร้าง method สำหรับการ เปลี่ยนชื่อ title เหมือนเปลี่ยนหน้า
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;

      switch (index) {
        case 0:
          _title = 'หน้าหลัก';
          break;
        case 1:
          _title = 'สต๊อกสินค้า';
          break;
        case 2:
          _title = 'แจ้งเตือน';
          break;
        case 3:
          _title = 'ตั้งค่า';
          break;
        case 4:
          _title = 'ฉัน';
          break;
      }
    });
  }

  //เคลียร์ค่า localStorage
  void logout() {
    sharedPreferances.clear();
    Navigator.pushNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(_title, style: GoogleFonts.kanit()),
        actions: [ElevatedButton(onPressed: logout, child: Text("ออกจากระบบ"))],
      ),
      drawer: SafeArea(
          child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://image.freepik.com/free-vector/profile-icon-male-avatar-hipster-man-wear-headphones_48369-8728.jpg'),
                ),
              ),
              otherAccountsPictures: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.megapixl.com/4707/47075236.jpg'),
                  ),
                )
              ],
              accountName: Text('$nameAccount'),
              accountEmail: Text('$emailAccount'),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://www.vickyalvearshecter.com/wp-content/uploads/2015/02/2012-06-08_0000066-as-Smart-Object-1-600x400.jpg'),
                      fit: BoxFit.fill)),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('เกี่ยวกับเรา'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('ข้อมูลการใช้งาน'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/term');
              },
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('ติดต่อทีมงาน'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/contact');
              },
            ),
            ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('ออกจากระบบ'),
                onTap: logout),
            Divider(
              color: Colors.green[200],
            ),
            ListTile(
              leading: Icon(Icons.cancel),
              title: Text('ปิดเมนู'),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      )),
      body: isNotLogin
          ? Center(
              child: Padding(
                padding: EdgeInsets.only(top: height / 2),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text("Loading..."),
                    )
                  ],
                ),
              ),
            )
          : _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('หน้าหลัก')),
            BottomNavigationBarItem(
                icon: Icon(Icons.storage), title: Text('สต็อก')),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), title: Text('แจ้งเตือน')),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text('ตั้งค่า')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('ฉัน')),
          ]),
    );

    //ส่วนของ navigation boyyom bar
  }
}
