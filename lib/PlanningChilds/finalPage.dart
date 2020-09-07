import 'package:flutter/material.dart';
import 'package:mmtaz/Screens/FirstScreen.dart';
import 'package:mmtaz/widgets/Setting.dart';
import 'package:mmtaz/widgets/Wallet.dart';

var a = 0;

class finalPage extends StatefulWidget {
  var status;

  finalPage(this.status);

  @override
  _finalPageState createState() => _finalPageState(status);
}

class _finalPageState extends State<finalPage> {
  var status;

  _finalPageState(this.status);

  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;
    if (widget.status == 0) {
      return SafeArea(
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Container(
                width: pageWidth,
                height: pageHeight,
                  padding: EdgeInsets.all(pageWidth / 30.0),
                  child: a == 1?
              CircularProgressIndicator():
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: pageHeight / 2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/Wallet-bro.png'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width/3,
                            right: MediaQuery.of(context).size.width/3
                        ),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'موجودی ناکافی',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'Aviny',
                                color: Colors.black54),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width/6,
                            right: MediaQuery.of(context).size.width/6
                        ),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'لطفا کیف پولت رو شارژ کن!',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'Aviny',
                                color: Colors.black54),
                          ),
                        ),
                      ),
                      Container(
                          height: pageHeight / 10,
                          child: Row(
                            textDirection: TextDirection.rtl,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacementNamed(context, '/FirstScreen');
                                },
                                child: Container(
                                  width: pageWidth / 3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(45.0)),
                                      border: Border.all(
                                        color: color,
                                      ),
                                      color: Color(0xffEAEAEA)),
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      'بازگشت',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontFamily: 'Aviny',
                                          color: Colors.black54),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacementNamed(context, '/wallet');
                                },
                                child: Container(
                                  width: pageWidth / 3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(45.0)),
                                      border: Border.all(
                                        color: color,
                                      ),
                                      color: Color(0xffEAEAEA)),
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      'کیف پول',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontFamily: 'Aviny',
                                          color: Colors.black54),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ))
                    ],
                  )),
            )),
      );
    } else if (widget.status == 1) {
      return SafeArea(
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Container(
                  padding: EdgeInsets.all(pageWidth / 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: pageHeight / 2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/Scrumboard-rafiki.png'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width/4,
                            right: MediaQuery.of(context).size.width/4
                        ),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'برنامه شما آمادست!',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'Aviny',
                                color: Colors.black54),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width/6,
                            right: MediaQuery.of(context).size.width/6
                        ),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'برای دانلود روی لینک زیر کلیک کن!',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'Aviny',
                                color: Colors.black54),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: pageHeight / 10,
                          width: pageWidth / 3,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(45.0)),
                              border: Border.all(
                                color: color,
                              ),
                              color: Color(0xffEAEAEA)),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'دانلود',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontFamily: 'Aviny',
                                  color: Colors.black54),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            )),
      );
    } else if (widget.status == 2) {
      return SafeArea(
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Container(
                  padding: EdgeInsets.all(pageWidth / 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: pageHeight / 2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/Timemanagement-rafiki.png'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width/6,
                          right: MediaQuery.of(context).size.width/6
                        ),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'درخواستت به درستی ثبت شد!',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'Aviny',
                                fontSize: 25.0,
                                color: Colors.black54),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width/20,
                            right: MediaQuery.of(context).size.width/20
                        ),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'حالا منتظر باش تا مشاورت برنامت رو برات ارسال کنه!',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'Aviny',
                                fontSize: 25.0,
                                color: Colors.black54),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/FirstScreen');
                        },
                        child: Container(
                          height: pageHeight / 10,
                          width: pageWidth / 3,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(45.0)),
                              border: Border.all(
                                color: color,
                              ),
                              color: Color(0xffEAEAEA)),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'بازگشت',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontFamily: 'Aviny',
                                  fontSize: 20.0,
                                  color: Colors.black54),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            )),
      );
    }
  }
}
