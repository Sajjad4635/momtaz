import 'package:flutter/material.dart';
import 'package:mmtaz/Screens/FirstScreen.dart';

var colorGreen = Color(0xff00d170);
var colorGrey = Color(0xffEAEAEA);
var colorWhite = Colors.white;
var colorBlack54 = Colors.black54;

var color = colorGreen;

var colorblue = Color(0xff166ee7);

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeihgt = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: pageWidth,
          child: Column(
            children: <Widget>[
              Container(
                width: pageWidth / 2,
                height: pageHeihgt / 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(45.0)),
                    color: color),
                child: Center(
                  child: Text(
                    'انتخاب تم رنگی',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Aviny',
                      color: colorWhite,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Container(
                  width: pageWidth / 1.5,
                  height: pageHeihgt / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(45.0)),
                      color: colorGrey),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            'تم شماره 1',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontFamily: 'Aviny',
                              color: colorBlack54,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                setState(() {
                                  color = colorGreen;
                                });
                              },
                              child: Container(
                                width: pageWidth / 10,
                                height: pageWidth / 10,
                                decoration: BoxDecoration(
                                    color: colorGreen, border: Border.all()),
                              ),
                            ),
                            Container(
                              width: pageWidth / 10,
                              height: pageWidth / 10,
                              decoration: BoxDecoration(
                                  color: colorGrey, border: Border.all()),
                            ),
                            Container(
                              width: pageWidth / 10,
                              height: pageWidth / 10,
                              decoration: BoxDecoration(
                                  color: colorWhite, border: Border.all()),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              Container(
                  width: pageWidth / 1.5,
                  height: pageHeihgt / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(45.0)),
                      color: colorGrey),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            'تم شماره 2',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontFamily: 'Aviny',
                              color: colorBlack54,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                setState(() {
                                  color = colorblue;
                                });
                              },
                              child: Container(
                                width: pageWidth / 10,
                                height: pageWidth / 10,
                                decoration: BoxDecoration(
                                    color: colorblue, border: Border.all()),
                              ),
                            ),
                            Container(
                              width: pageWidth / 10,
                              height: pageWidth / 10,
                              decoration: BoxDecoration(
                                  color: colorGrey, border: Border.all()),
                            ),
                            Container(
                              width: pageWidth / 10,
                              height: pageWidth / 10,
                              decoration: BoxDecoration(
                                  color: colorWhite, border: Border.all()),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              Container(
                  width: pageWidth / 1.5,
                  height: pageHeihgt / 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(45.0)),
                      color: colorGrey),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            'تم شماره 3',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontFamily: 'Aviny',
                              color: colorBlack54,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                setState(() {
                                  color = Colors.deepOrange;
                                });
                              },
                              child: Container(
                                width: pageWidth / 10,
                                height: pageWidth / 10,
                                decoration: BoxDecoration(
                                    color: Colors.deepOrange, border: Border.all()),
                              ),
                            ),
                            Container(
                              width: pageWidth / 10,
                              height: pageWidth / 10,
                              decoration: BoxDecoration(
                                  color: colorGrey, border: Border.all()),
                            ),
                            Container(
                              width: pageWidth / 10,
                              height: pageWidth / 10,
                              decoration: BoxDecoration(
                                  color: colorWhite, border: Border.all()),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FirstScreen()));
                },
                child: Container(
                  color: color,
                  width: 100.0,
                  height: 100.0,
                  child: Text('mamad'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Center(
          child: Container(
            color: color,
            width: 100.0,
            height: 100.0,
            child: Text('mamad'),
          ),
        ),
      ),
    );
  }
}
