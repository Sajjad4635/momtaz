import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:mmtaz/widgets/barnameha.dart';
import 'package:mmtaz/widgets/profile.dart';
import 'package:mmtaz/Reporting/pieChartMenu.dart';
import 'package:mmtaz/widgets/SelfKnowledge.dart';
import 'package:mmtaz/SelfKnowledgeChilds/menu.dart';
import 'package:mmtaz/assets.dart';
import 'package:mmtaz/widgets/EnterPage.dart';
import 'package:mmtaz/widgets/Wallet.dart';
import 'package:mmtaz/widgets/feauter.dart';

class LightDrawerPage extends StatelessWidget {
  static final String path = "lib/src/pages/navigation/drawer2.dart";
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final Color primary = Colors.white;
  final Color active = Colors.grey.shade800;
  final Color divider = Colors.white;

  var myStyle =
      TextStyle(fontSize: 18.0, color: Colors.black, fontFamily: 'vazir');

  @override
  Widget build(BuildContext context) {
    final String image = images[0];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ClipPath(
        clipper: OvalLeftBorderClipper(),
        child: Drawer(
          child: Container(
            padding: const EdgeInsets.only(left: 16.0, right: 40),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFB06ADA), Color(0xFFD9BCF6)],
                    end: Alignment.bottomRight,
                    begin: Alignment.topRight),
                boxShadow: [BoxShadow(color: Colors.black45)]),
            width: 300,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Icon(
                          Icons.exit_to_app,
                          color: active,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      height: 90,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [Color(0xff6900A9), Color(0xff6900A9)],
                          )),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('images/5.jpg'),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "سجاد حاجی زاده",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "سعید عبدی",
                      style: TextStyle(color: active, fontSize: 16.0),
                    ),
                    SizedBox(height: 30.0),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => menu()));
                      },
                      child: _buildRow(
                          Icons.accessibility,
                          Text(
                            "خود شناسی",
                            style: myStyle,
                          )),
                    ),
                    _buildDivider(),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => feauter()));
                      },
                      child: _buildRow(
                          Icons.playlist_add_check,
                          Text(
                            "آزمون تستی",
                            style: myStyle,
                          )),
                    ),
                    _buildDivider(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => barnameha()));
                      },
                      child: _buildRow(
                          Icons.assignment,
                          Text(
                            "برنامه های من",
                            style: myStyle,
                          )),
                    ),
                    _buildDivider(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => pieChartHome()));
                      },
                      child: _buildRow(
                          Icons.map,
                          Text(
                            "گزارش گیری",
                            style: myStyle,
                          )),
                    ),
                    _buildDivider(),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => wallet()));
                      },
                      child: _buildRow(
                          Icons.shopping_basket,
                          Text(
                            "کیف پول",
                            style: myStyle,
                          )),
                    ),
                    _buildDivider(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profile()));
                      },
                      child: _buildRow(
                          Icons.settings,
                          Text(
                            "پروفایل",
                            style: myStyle,
                          )),
                    ),
                    _buildDivider(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Enter_page()));
                      },
                      child: _buildRow(
                          Icons.settings,
                          Text(
                            "تنظیمات",
                            style: myStyle,
                          )),
                    ),
                    _buildDivider(),
                    InkWell(
                      onTap: () {
//                        Navigator.push(
//                            context,
//                            MaterialPageRoute(builder: (context) => WeeklySchedule()));
                      },
                      child: _buildRow(
                          Icons.info_outline,
                          Text(
                            "راهنما",
                            style: myStyle,
                          )),
                    ),
                    _buildDivider(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: divider,
    );
  }

  Widget _buildRow(IconData icon, Text title, {bool showBadge = false}) {
    final TextStyle tStyle = TextStyle(color: active, fontSize: 16.0);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(children: [
        Icon(
          icon,
          color: active,
        ),
        SizedBox(width: 10.0),
        Text(
          title.data,
          style: tStyle,
        ),
        Spacer(),
//        if (showBadge)
//          Material(
//            color: Colors.deepOrange,
//            elevation: 5.0,
//            shadowColor: Colors.red,
//            borderRadius: BorderRadius.circular(5.0),
//            child: Container(
//              width: 25,
//              height: 25,
//              alignment: Alignment.center,
//              decoration: BoxDecoration(
//                color: Colors.deepOrange,
//                borderRadius: BorderRadius.circular(5.0),
//              ),
//              child: Text(
//                "10+",
//                style: TextStyle(
//                    color: Colors.white,
//                    fontSize: 12.0,
//                    fontWeight: FontWeight.bold),
//              ),
//            ),
//          )
      ]),
    );
  }
}

//import 'package:flutter/material.dart';
//
//class Drawer_Menu extends StatefulWidget {
//  @override
//  _Drawer_MenuState createState() => _Drawer_MenuState();
//}
//
//class _Drawer_MenuState extends State<Drawer_Menu> {
//  @override
//  Widget build(BuildContext context) {
//    return Drawer(
//      child: Column(
//        children: [
//          Expanded(
//            flex: 1,
//            child: Container(
//              width: MediaQuery.of(context).size.width * 0.85,
//              child: DrawerHeader(
//                child: Column(
//                  children: <Widget>[
//                    Expanded(
//                      flex: 3,
//                      child: Text('نمایه شما', textDirection: TextDirection.rtl,),
//                    ),
//                    Expanded(
//                      flex: 7,
//                      child: Container(
//                        decoration: BoxDecoration(
//                          borderRadius: BorderRadius.circular(50.0),
//                        ),
//                        child: Center(
//                          child: Image.asset('images/flutter.png'),
//                        ),
//                      ),
//                    )
//                  ],
//                ),
//              ),
//            ),
//          ),
//          Expanded(
//            flex: 2,
//            child: ListView(children: [
//              ListTile(
//                title: Text("خود شناسی",
//                  textDirection: TextDirection.rtl,
//                ),
//                onTap: () {
////                  Navigator.push(
////                      context,
////                      MaterialPageRoute(
////                          builder: (context) => HomePage()));
//                },
//              ),
//              ListTile(
//                title: Text("کیف پول",
//                  textDirection: TextDirection.rtl,
//                ),
//                onTap: () {
//                  Navigator.pop(context);},
//              ),
//              ListTile(
//                title: Text("آزمون تستی",
//                  textDirection: TextDirection.rtl,
//                ),
//                onTap: () {
//                },
//              ),
//              ListTile(
//                title: Text("بانک سوال",
//                  textDirection: TextDirection.rtl,
//                ),
//                onTap: () {
//                  Navigator.pop(context);
//                },
//              ),
//              ListTile(
//                title: Text("گزارش گیری",
//                  textDirection: TextDirection.rtl,
//                ),
//                onTap: () {
//                  Navigator.pop(context);},
//              ),
//            ]),
//          )
//        ],
//      ),
//    );
//  }
//}
