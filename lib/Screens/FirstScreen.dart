import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmtaz/Screens/HomePage.dart';
import 'package:mmtaz/Screens/MessageBox.dart';
import 'package:mmtaz/Screens/Planning.dart';
import 'package:mmtaz/Screens/Reporting.dart';
import 'package:mmtaz/Screens/planningOffice.dart';
import 'package:mmtaz/widgets/DrawerMenu.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
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
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffEAEAEA),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height/8,),
            child: AppBar(
              elevation: 0.0,
              backgroundColor: Color(0xff00d170),
              actions: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Color(0xff00d170)),
                  margin: const EdgeInsets.only(top: 15.0),
                  padding:
                  const EdgeInsets.only(right: 25.0, left: 25.0),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          child: Center(
                            child: Text(
                              'ممتاز',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'Aviny',
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Icon(Icons.shopping_basket, color: Colors.white),
                    ],
                  ),
                )
              ],
            ),
          ),
          key: _scaffoldKey,
          body: Container(
            decoration: BoxDecoration(color: Color(0xff00d170)),
            child: Container(
//              margin: const EdgeInsets.only(top: 30.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0)),
                color: Color(0xffEAEAEA),
              ),
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ),
          endDrawer: LightDrawerPage(),
          bottomNavigationBar: Container(
//        margin: const EdgeInsets.only(top: 10.0),
              height: MediaQuery.of(context).size.height / 10,
//        margin: const EdgeInsets.only(right: 3.0, left: 3.0),
              decoration: BoxDecoration(
//          color: Color(0xffEAEAEA),
//          borderRadius: BorderRadius.only(
//            topLeft: Radius.circular(45.0),
//            topRight: Radius.circular(45.0)
//          )
                  ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.0),
                    topRight: Radius.circular(45.0)),
                child: BottomNavigationBar(
                  elevation: 0.0,
                  items: [
                    new BottomNavigationBarItem(
                      backgroundColor: Colors.white,
                      icon: _selectedIndex == 0
                          ? Icon(Icons.home)
                          : Icon(LineAwesomeIcons.home),
                      title: Text(
                        'صفحه اصلی',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 12.0,fontFamily: 'Aviny',
//              color: Colors.black45,
                            ),
                      ),
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: Colors.white,
                      icon: _selectedIndex == 1
                          ? Icon(Icons.mail)
                          : Icon(Icons.mail_outline),
                      title: Text(
                        'صندوق پیام',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 12.0, fontFamily: 'Aviny',
//              color: Colors.black45,
                            ),
                      ),
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: Colors.white,
                      icon: _selectedIndex == 2
                          ? FaIcon(FontAwesomeIcons.book)
                          : Icon(LineAwesomeIcons.book),
                      title: Text(
                        'دفتر برنامه ریزی',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 12.0, fontFamily: 'Aviny',
//              color: Colors.black45,
                            ),
                      ),
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: Colors.white,
                      icon: _selectedIndex == 3
                          ? FaIcon(FontAwesomeIcons.fileContract)
                          : Icon(LineAwesomeIcons.file_contract),
                      title: Text(
                        'برنامه',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 12.0, fontFamily: 'Aviny',
//              color: Colors.black45,
                            ),
                      ),
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: Colors.white,
                      icon: _selectedIndex == 4
                          ? FaIcon(FontAwesomeIcons.solidChartBar)
                          : FaIcon(FontAwesomeIcons.chartBar),
                      title: Text(
                        'گزارش ها',
                        style: TextStyle(fontSize: 12.0, fontFamily: 'Aviny',
//              color: Colors.black45,
                            ),
                      ),
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  unselectedItemColor: Color(0xffAAAAAA),
                  selectedItemColor: Color(0xff00d170),
//        selectedLabelStyle: ,
                  onTap: _onItemTapped,
                ),
              ))),
    );
  }
}
