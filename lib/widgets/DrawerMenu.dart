import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:mmtaz/widgets/SelfKnowledge.dart';
import 'package:mmtaz/widgets/Setting.dart';
import 'package:mmtaz/widgets/barnameha.dart';
import 'package:mmtaz/widgets/profile.dart';
import 'package:mmtaz/widgets/Wallet.dart';

class LightDrawerPage extends StatelessWidget {
  static final String path = "lib/src/pages/navigation/drawer2.dart";
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final Color primary = Colors.white;
  final Color active = color;
  final Color activeT = Colors.black87;
  final Color divider = Colors.white;

  var myStyle =
      TextStyle(fontSize: 18.0, color: Colors.black, fontFamily: 'vazir');
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ClipPath(
        clipper: OvalLeftBorderClipper(),
        child: Drawer(
          child: Container(
            padding: const EdgeInsets.only(left: 16.0, right: 40),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffffffff), Color(0xffffffff)],
                    end: Alignment.bottomRight,
                    begin: Alignment.topRight),
                boxShadow: [BoxShadow(color: Colors.black45)]),
            width: 300,
            child: SafeArea(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 6,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
//                                 gradient: LinearGradient(
//                                   colors: [Color(0xff00d170), Color(0xff00d170)],
//                                 )
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage('images/11.jpg'),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "سجاد حاجی زاده",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Aviny'),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Text(
                                "سعید عبدی",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: 'Aviny',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Expanded(
                      flex: 7,
                      child: Container(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SelfKnowledge()));
                              },
                              child: _buildRow(
                                  Icons.accessibility,
                                  Text(
                                    "خود شناسی",
                                    style: myStyle,
                                  )),
                            ),
                            Container(
                              height: 1.0,
                              color: color,
                            ),
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
                            Container(
                              height: 1.0,
                              color: color,
                            ),
                            InkWell(
                              onTap: () {
//                                Navigator.push(
//                                    context,
//                                    MaterialPageRoute(
//                                        builder: (context) => pieChartHome()));
                              },
                              child: _buildRow(
                                  Icons.map,
                                  Text(
                                    "گزارش گیری",
                                    style: myStyle,
                                  )),
                            ),
                            Container(
                              height: 1.0,
                              color: color,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => wallet()));
                              },
                              child: _buildRow(
                                  Icons.shopping_basket,
                                  Text(
                                    "کیف پول",
                                    style: myStyle,
                                  )),
                            ),
                            Container(
                              height: 1.0,
                              color: color,
                            ),
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
                                    "حساب کاربری",
                                    style: myStyle,
                                  )),
                            ),
                            Container(
                              height: 1.0,
                              color: color,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Setting()));
                              },
                              child: _buildRow(
                                  Icons.playlist_add_check,
                                  Text(
                                    "تنظیمات",
                                    style: myStyle,
                                  )),
                            ),
                            Container(
                              height: 1.0,
                              color: color,
                            ),
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
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRow(IconData icon, Text title, {bool showBadge = false}) {
    final TextStyle tStyle =
        TextStyle(color: activeT, fontSize: 18.0, fontFamily: 'Aviny');
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

