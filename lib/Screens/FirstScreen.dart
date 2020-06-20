import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:mmtaz/Screens/HomePage.dart';
import 'package:mmtaz/Screens/MessageBox.dart';
import 'package:mmtaz/Screens/Planning.dart';
import 'package:mmtaz/Screens/Reporting.dart';
import 'package:mmtaz/Screens/planningOffice.dart';
import 'package:mmtaz/widgets/DrawerMenu.dart';
import 'package:mmtaz/widgets/Wallet.dart';


class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    MessageBox(),
    planning_Office(),
    Planning(),
    Reporting()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      appBar: GradientAppBar(
        gradient: LinearGradient(
          colors: [Color(0xFFB06ADA), Color(0xFFD9BCF6)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => wallet()));
            },
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.deepPurple,
            ),
          )
        ],
        centerTitle: true,
        leading: new IconButton(
            icon: new Icon(
              Icons.dehaze,
              color: Colors.deepPurple,
            ),
            onPressed: () => _scaffoldKey.currentState.openEndDrawer()),
      ),
      endDrawer: LightDrawerPage(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffCFA7F9),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.deepPurple,
            ),
            title: Text('صفحه اصلی'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.deepPurple,
            ),
            title: Text('صندوق پیام'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.playlist_add_check,
              color: Colors.deepPurple,
            ),
            title: Text('دفتر برنامه ریزی'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.apps,
              color: Colors.deepPurple,
            ),
            title: Text('برنامه'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.report,
              color: Colors.deepPurple,
            ),
            title: Text('گزارش ها'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }
}
