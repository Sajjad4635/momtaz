import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmtaz/PlanningChilds/finalPage.dart';
import 'package:mmtaz/PlanningChilds/nameOFAzmoon.dart';
import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/widgets/Setting.dart';
import 'package:http/http.dart' as http;



class barname_amade extends StatefulWidget {
  var key1;

  barname_amade(this.key1);

  @override
  _barname_amadeState createState() => _barname_amadeState(key1);
}

class _barname_amadeState extends State<barname_amade> {
  var key1;

  _barname_amadeState(this.key1);

  @override
  Widget build(BuildContext context) {
    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              MediaQuery.of(context).size.height / 8,
            ),
            child: AppBar(
              elevation: 0.0,
              backgroundColor: color,
              actions: <Widget>[
                Container(
                  decoration: BoxDecoration(color: color),
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 40),
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.height / 32,
                      left: MediaQuery.of(context).size.height / 32),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
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
          body: Container(
            decoration: BoxDecoration(
                color: color,
//          color: Color(0xffEAEAEA),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(color: Color(0xffEAEAEA)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45.0))),
                      child: Center(
                        child: Text(
                          'بر چه اساسی برنامه سریع میخوای؟',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                              fontFamily: 'Aviny'),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffEAEAEA),
                      borderRadius:
                      BorderRadius.only(topRight: Radius.circular(45.0)),
                    ),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 8,
                                  child: InkWell(
                                    onTap: () {
                                      barnameHaftegisari();
                                    },
                                    child: Container(
//                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.height / 4,
                                        child: Image(
                                          image:
                                          new AssetImage('images/Calendar-amico.png'),
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        'برنامه براساس برنامه هفتگی',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: color,
                                            fontFamily: 'Aviny'),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 8,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  azmoonAmade(widget.key1, 1)));
                                    },
                                    child: Container(
//                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.height / 4,
                                        child: Image(
                                          image: new AssetImage('images/CustomerSurvey-amico.png'),
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        'برنامه براساس آزمونها',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: color,
                                            fontFamily: 'Aviny'),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  barnameHaftegisari() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            //this right here
            child: Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 30),
              decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: const Offset(0.0, 10.0),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // To make the card compact
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/Designer-rafiki.png'))),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'هزینه دریافت برنامه آماده هفتگی 5000 تومان',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Aviny',
                            color: Colors.black54),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'برای ارسال درخواست تایید کن!',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Aviny',
                            color: Colors.black54),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      barnameSariHafteghi();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => finalPage(2)));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 7,
                      height: MediaQuery.of(context).size.height / 15,
                      decoration: BoxDecoration(
                          border: Border.all(color: color),
                          color: Color(0xffeaeaea),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'تایید',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'Aviny',
                              color: Colors.black54),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  barnameSariHafteghi() async{
    var response = await http.post(api.siteName + '/api/', body: {
      'key': '${widget.key1}'+'0',
    });
  }
}

class barname_moshaver extends StatefulWidget {
  var key1;

  barname_moshaver(this.key1);

  @override
  _barname_moshaverState createState() => _barname_moshaverState(key1);
}

class _barname_moshaverState extends State<barname_moshaver> {
  var key1;

  _barname_moshaverState(this.key1);

  @override
  Widget build(BuildContext context) {
    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;
    var bb = 1;
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              MediaQuery.of(context).size.height / 8,
            ),
            child: AppBar(
              elevation: 0.0,
              backgroundColor: color,
              actions: <Widget>[
                Container(
                  decoration: BoxDecoration(color: color),
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 40),
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.height / 32,
                      left: MediaQuery.of(context).size.height / 32),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
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
          body: Container(
            decoration: BoxDecoration(
                color: color,
//          color: Color(0xffEAEAEA),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(color: Color(0xffEAEAEA)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45.0))),
                      child: Center(
                        child: Text(
                          'بر چه اساسی از مشاورت برنامه میخوای؟',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                              fontFamily: 'Aviny'),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffEAEAEA),
                      borderRadius:
                      BorderRadius.only(topRight: Radius.circular(45.0)),
                    ),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 8,
                                  child: InkWell(
                                    onTap: () {
                                      barnameHaftegiMoshaver();
                                    },
                                    child: Container(
//                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.height / 4,
                                        child: Image(
                                          image:
                                          new AssetImage('images/Calendar-amico.png'),
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        'برنامه براساس برنامه هفتگی',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: color,
                                            fontFamily: 'Aviny'),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 8,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  azmoonMoshaver(widget.key1, 1)));
                                    },
                                    child: Container(
//                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.height / 4,
                                        child: Image(
                                          image: new AssetImage('images/CustomerSurvey-amico.png'),
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        'برنامه براساس آزمونها',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: color,
                                            fontFamily: 'Aviny'),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  barnameHaftegiMoshaver() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            //this right here
            child: Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 30),
              decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: const Offset(0.0, 10.0),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // To make the card compact
                children: <Widget>[
                  Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/Designer-rafiki.png'))),
                  ),
                  Text(
                    'هزینه دریافت برنامه آماده هفتگی 20000 تومان',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Aviny',
                        fontSize: 20.0,
                        color: Colors.black54),
                  ),
                  Text(
                    'برای ارسال درخواست تایید کن!',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Aviny',
                        fontSize: 20.0,
                        color: Colors.black54),
                  ),
                  InkWell(
                    onTap: () {
                      sendDataToServerHafteghiMoshavar();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => finalPage(2)));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 7,
                      height: MediaQuery.of(context).size.height / 15,
                      decoration: BoxDecoration(
                          border: Border.all(color: color),
                          color: Color(0xffeaeaea),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Center(
                        child: Text(
                          'تایید',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'Aviny',
                              fontSize: 20.0,
                              color: Colors.black54),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  sendDataToServerHafteghiMoshavar() async{
    var response = http.post(api.siteName + '/api/', body: {
      'key': '${widget.key1}'+'0'
    });
  }
}
