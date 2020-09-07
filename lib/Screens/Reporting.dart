import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:mmtaz/Reporting/detailPage.dart';
import 'package:mmtaz/widgets/Setting.dart';

var week = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
var timeFrom;
var timeFromshow = '';
var timeTo;
var timeToshow = '';
var flag = 0;

class ReportWeeks extends StatefulWidget {
  @override
  _ReportWeeksState createState() => _ReportWeeksState();
}

class _ReportWeeksState extends State<ReportWeeks> {

  @override
  Widget build(BuildContext context) {
    if (flag == 0) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffEAEAEA),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45.0))),
                      child: Center(
                        child: Text('برای پیشرفت نیاز به برنامه داری!',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontFamily: 'Aviny',
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: color,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffEAEAEA),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(45.0))),
                      child: Container(
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('هنوز برنامه ای نداری!',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'Aviny',
                                  fontSize: 22.0,
                                  color: color,
                                )),
                            Text(
                                'هنوز برنامه ای نداری برای گرفتن برنامه وارد بخش (برنامه) شو',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'Aviny',
                                  fontSize: 22.0,
                                  color: color,
                                )),
                            Text('و برنامه مخصوص خودت رو دریافت کن!',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'Aviny',
                                  fontSize: 22.0,
                                  color: color,
                                )),
                          ],
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
      );
    } else if (flag == 1) {
      return SafeArea(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              body: Container(
            decoration: BoxDecoration(color: color),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xffEAEAEA),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(45.0))),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text('مسیر پیشرفتت رو رصد کن!',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'Aviny',
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xffEAEAEA),
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(45.0)),
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffEAEAEA),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(45.0))),
                          child: Container(
                              child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Reporting()));
                                },
                                child: Container(
                                  child: Text('adf'),
                                ),
                              );
                            },
                          ))),
                    ),
                  )
                ],
              ),
            ),
          )),
        ),
      );
    }
  }
}

class Reporting extends StatefulWidget {
  @override
  _ReportingState createState() => _ReportingState();
}

class _ReportingState extends State<Reporting> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeihgt = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        body: Container(
            decoration: BoxDecoration(color: Color(0xffEAEAEA)),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Color(0xffEAEAEA)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45.0))),
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'مسیر پیشرفتت رو رصد کن!',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Aviny'),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    color: color,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: pageWidth/20.0
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffEAEAEA),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(45.0))),
                      child: ListView(
                        children: <Widget>[
                          Container(
                              height: pageHeihgt / 8,
                              margin: EdgeInsets.only(
                                  top: pageWidth / 40,
                                  bottom: pageWidth / 40,
                                  right: pageWidth / 30,
                                  left: pageWidth / 30),
                              padding: EdgeInsets.only(
                                  left: pageWidth / 30, right: pageWidth / 30),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(45.0)),
                                  border: Border.all(color: color),
                                  color: Colors.white),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          'ساعت مطالعه هفته :',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontFamily: 'Aviny',
                                              color: Colors.black54),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          '42:30',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontFamily: 'Aviny',
                                              color: Colors.black54),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )),
                          Container(
                            width: pageWidth,
                            height: pageHeihgt / 1,
                            margin: EdgeInsets.all(pageWidth / 40),
                            padding: EdgeInsets.all(pageWidth / 30),
                            decoration: BoxDecoration(
                                border: Border.all(color: color),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(45.0)),
                                color: Colors.white),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(pageWidth / 40),
                                    decoration: BoxDecoration(
                                        color: color,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(45.0))),
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: <Widget>[
                                        Expanded(
                                            child: Container(
                                          child: Center(
                                            child: Text(
                                              'روز',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontFamily: 'Aviny',
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                        Expanded(
                                            child: Container(
                                                child: Center(
                                          child: Text(
                                            'ساعت مطالعه',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Aviny',
                                                color: Colors.white),
                                          ),
                                        ))),
                                        Expanded(
                                            child: Container(
                                          child: Center(
                                            child: Text(
                                              'مشاهده جزییات',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontFamily: 'Aviny',
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(pageWidth / 40),
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                              child: Center(
                                                  child: Text(
                                            'شنبه',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Aviny'),
                                          ))),
                                        ),
                                        Expanded(
                                            child: Container(
                                          child: Center(
                                            child: Text(
                                              '5:30',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontFamily: 'Aviny'),
                                            ),
                                          ),
                                        )),
                                        Expanded(
                                            child: InkWell(
                                          onTap: () {
                                            showDetailPage();
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: color,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15.0))),
                                            child: Center(
                                              child: Text(
                                                'نمایش جزییات',
                                                textDirection:
                                                    TextDirection.rtl,
                                                style: TextStyle(
                                                    fontSize: 18.0,
                                                    fontFamily: 'Aviny',
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(pageWidth / 40),
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                              child: Center(
                                                  child: Text(
                                            'یکشنبه',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Aviny'),
                                          ))),
                                        ),
                                        Expanded(
                                          child: Container(
                                              child: Center(
                                                  child: Text(
                                            '7:45',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Aviny'),
                                          ))),
                                        ),
                                        Expanded(
                                            child: Container(
                                          decoration: BoxDecoration(
                                              color: color,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0))),
                                          child: Center(
                                            child: Text(
                                              'نمایش جزییات',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontFamily: 'Aviny',
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(pageWidth / 40),
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                              child: Center(
                                                  child: Text(
                                            'دوشنبه',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Aviny'),
                                          ))),
                                        ),
                                        Expanded(
                                          child: Container(
                                              child: Center(
                                                  child: Icon(
                                            Icons.clear,
                                            color: Colors.red,
                                          ))),
                                        ),
                                        Expanded(
                                            child: Container(
                                          decoration: BoxDecoration(
                                              color: color,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0))),
                                          child: Center(
                                            child: Text(
                                              'نمایش جزییات',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontFamily: 'Aviny',
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(pageWidth / 40),
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                              child: Center(
                                                  child: Text(
                                            'سه شنبه',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Aviny'),
                                          ))),
                                        ),
                                        Expanded(
                                          child: Container(
                                              child: Center(
                                                  child: Text(
                                            '-',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Aviny'),
                                          ))),
                                        ),
                                        Expanded(
                                            child: Container(
                                          decoration: BoxDecoration(
                                              color: color,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0))),
                                          child: Center(
                                            child: Text(
                                              'نمایش جزییات',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontFamily: 'Aviny',
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(pageWidth / 40),
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                              child: Center(
                                                  child: Text(
                                            'چهارشنبه',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Aviny'),
                                          ))),
                                        ),
                                        Expanded(
                                          child: Container(
                                              child: Center(
                                                  child: Text(
                                            '-',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Aviny'),
                                          ))),
                                        ),
                                        Expanded(
                                            child: Container(
                                          decoration: BoxDecoration(
                                              color: color,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0))),
                                          child: Center(
                                            child: Text(
                                              'نمایش جزییات',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontFamily: 'Aviny',
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(pageWidth / 40),
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                              child: Center(
                                                  child: Text(
                                            'پنج شنبه',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Aviny'),
                                          ))),
                                        ),
                                        Expanded(
                                          child: Container(
                                              child: Center(
                                                  child: Text(
                                            '-',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Aviny'),
                                          ))),
                                        ),
                                        Expanded(
                                            child: Container(
                                          decoration: BoxDecoration(
                                              color: color,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0))),
                                          child: Center(
                                            child: Text(
                                              'نمایش جزییات',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontFamily: 'Aviny',
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(pageWidth / 40),
                                    child: Row(
                                      textDirection: TextDirection.rtl,
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                              child: Center(
                                                  child: Text(
                                            'جمعه',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Aviny'),
                                          ))),
                                        ),
                                        Expanded(
                                          child: Container(
                                              child: Center(
                                                  child: Text(
                                            '-',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Aviny'),
                                          ))),
                                        ),
                                        Expanded(
                                            child: Container(
                                          decoration: BoxDecoration(
                                              color: color,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0))),
                                          child: Center(
                                            child: Text(
                                              'نمایش جزییات',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontFamily: 'Aviny',
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
//                          Container(
//                              width: pageWidth,
//                              height: pageHeihgt / 10,
//                              margin: EdgeInsets.all(pageWidth / 40),
//                              padding: EdgeInsets.all(pageWidth / 40),
//                              decoration: BoxDecoration(
//                                  borderRadius:
//                                      BorderRadius.all(Radius.circular(45.0)),
//                                  color: color),
//                              child: Row(
//                                textDirection: TextDirection.rtl,
//                                mainAxisAlignment:
//                                    MainAxisAlignment.spaceEvenly,
//                                children: <Widget>[
//                                  Expanded(
//                                    child: Container(),
//                                  ),
//                                  Expanded(
//                                    child: Container(
//                                      child: Center(
//                                        child: Text(
//                                          'نمودار پیشرفت',
//                                          textDirection: TextDirection.rtl,
//                                          style: TextStyle(
//                                              fontFamily: 'Aviny',
//                                              fontSize: 20.0,
//                                              color: Colors.white),
//                                        ),
//                                      ),
//                                    ),
//                                  ),
//                                  Expanded(
//                                    child: Container(),
//                                  )
//                                ],
//                              )),
//                          Container(
//                            width: pageWidth,
//                            height: pageHeihgt / 1.5,
//                            margin: EdgeInsets.all(pageWidth / 40),
//                            padding: EdgeInsets.all(pageWidth / 30),
//                            decoration: BoxDecoration(
//                                border: Border.all(color: color),
//                                borderRadius:
//                                    BorderRadius.all(Radius.circular(45.0)),
//                                color: Colors.white),
//                            child: Column(
//                              children: <Widget>[
//                                Expanded(
//                                  flex: 1,
//                                  child: Container(
//                                      child: Row(
//                                    textDirection: TextDirection.rtl,
//                                    mainAxisAlignment:
//                                        MainAxisAlignment.spaceEvenly,
//                                    children: <Widget>[
//                                      Expanded(
//                                        child: Container(
//                                          child: Center(
//                                              child: IconButton(
//                                            onPressed: () {},
//                                            icon: Icon(
//                                              Icons.arrow_forward,
//                                              color: Colors.black54,
//                                            ),
//                                          )),
//                                        ),
//                                      ),
//                                      Expanded(
//                                        child: Container(
//                                          child: Center(
//                                            child: Text(
//                                              'شنبه',
//                                              textDirection: TextDirection.rtl,
//                                              style: TextStyle(
//                                                  fontFamily: 'Aviny',
//                                                  fontSize: 20.0,
//                                                  color: Colors.black54),
//                                            ),
//                                          ),
//                                        ),
//                                      ),
//                                      Expanded(
//                                        child: Container(
//                                          child: Center(
//                                              child: IconButton(
//                                            onPressed: () {},
//                                            icon: Icon(
//                                              Icons.arrow_back,
//                                              color: Colors.black54,
//                                            ),
//                                          )),
//                                        ),
//                                      )
//                                    ],
//                                  )),
//                                ),
//                                Container(
//                                  height: 1.0,
//                                  color: color,
//                                  margin: EdgeInsets.only(
//                                      left: pageWidth / 30.0,
//                                      right: pageWidth / 30.0),
//                                ),
//                                Expanded(
//                                  flex: 1,
//                                  child: Container(
//                                    child: Row(
//                                      textDirection: TextDirection.rtl,
//                                      children: <Widget>[
//                                        Expanded(
//                                          child: Container(
//                                            child: Center(
//                                              child: Text(
//                                                'درس',
//                                                textDirection:
//                                                    TextDirection.rtl,
//                                                style: TextStyle(
//                                                    fontFamily: 'Aviny',
//                                                    fontSize: 18.0,
//                                                    color: Colors.black54),
//                                              ),
//                                            ),
//                                          ),
//                                        ),
//                                        Expanded(
//                                          child: Container(
//                                            child: Center(
//                                              child: Text(
//                                                'ساعت مطالعه',
//                                                textDirection:
//                                                    TextDirection.rtl,
//                                                style: TextStyle(
//                                                    fontFamily: 'Aviny',
//                                                    fontSize: 18.0,
//                                                    color: Colors.black54),
//                                              ),
//                                            ),
//                                          ),
//                                        ),
//                                        Expanded(
//                                          child: Container(
//                                            child: Center(
//                                              child: Text(
//                                                'ساعت تست',
//                                                textDirection:
//                                                    TextDirection.rtl,
//                                                style: TextStyle(
//                                                    fontFamily: 'Aviny',
//                                                    fontSize: 18.0,
//                                                    color: Colors.black54),
//                                              ),
//                                            ),
//                                          ),
//                                        ),
//                                        Expanded(
//                                          child: Container(
//                                            child: Center(
//                                              child: Text(
//                                                'تعداد تست',
//                                                textDirection:
//                                                    TextDirection.rtl,
//                                                style: TextStyle(
//                                                    fontFamily: 'Aviny',
//                                                    fontSize: 18.0,
//                                                    color: Colors.black54),
//                                              ),
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ),
//                                Expanded(
//                                  flex: 8,
//                                  child: Container(
//                                    child: ListView.builder(
//                                      itemCount: 10,
//                                      itemBuilder: (context, index) {
//                                        return Container(
//                                          child: Row(
//                                            textDirection: TextDirection.rtl,
//                                            children: <Widget>[
//                                              Expanded(
//                                                child: Container(
//                                                  child: Center(
//                                                    child: Text(
//                                                      'ریاضی',
//                                                      textDirection:
//                                                          TextDirection.rtl,
//                                                      style: TextStyle(
//                                                          fontFamily: 'Aviny',
//                                                          fontSize: 18.0,
//                                                          color:
//                                                              Colors.black54),
//                                                    ),
//                                                  ),
//                                                ),
//                                              ),
//                                              Expanded(
//                                                child: Container(
//                                                  child: Center(
//                                                    child: Text(
//                                                      '3:30',
//                                                      textDirection:
//                                                          TextDirection.rtl,
//                                                      style: TextStyle(
//                                                          fontFamily: 'Aviny',
//                                                          fontSize: 18.0,
//                                                          color:
//                                                              Colors.black54),
//                                                    ),
//                                                  ),
//                                                ),
//                                              ),
//                                              Expanded(
//                                                child: Container(
//                                                  child: Center(
//                                                    child: Text(
//                                                      '2:15',
//                                                      textDirection:
//                                                          TextDirection.rtl,
//                                                      style: TextStyle(
//                                                          fontFamily: 'Aviny',
//                                                          fontSize: 18.0,
//                                                          color:
//                                                              Colors.black54),
//                                                    ),
//                                                  ),
//                                                ),
//                                              ),
//                                              Expanded(
//                                                child: Container(
//                                                  child: Center(
//                                                    child: Text(
//                                                      '115',
//                                                      textDirection:
//                                                          TextDirection.rtl,
//                                                      style: TextStyle(
//                                                          fontFamily: 'Aviny',
//                                                          fontSize: 18.0,
//                                                          color:
//                                                              Colors.black54),
//                                                    ),
//                                                  ),
//                                                ),
//                                              ),
//                                            ],
//                                          ),
//                                        );
//                                      },
//                                    ),
//                                  ),
//                                )
//                              ],
//                            ),
//                          ),
                          Container(
                            width: pageWidth,
                            height: pageHeihgt / 10,
                            margin: EdgeInsets.all(pageWidth / 40),
                            padding: EdgeInsets.all(pageWidth / 40),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(45.0)),
                                color: color),
                            child: Center(
                              child: Text(
                                'مشاهده ساعات مطالعه طبق تقویم',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontFamily: 'Aviny',
                                    fontSize: 20.0,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(pageWidth / 40.0),
                            margin: EdgeInsets.all(pageWidth / 40.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffeaeaea)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(45.0)),
                                color: Colors.white),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: pageWidth,
                                  height: pageHeihgt / 10,
                                  margin: EdgeInsets.all(pageWidth / 40),
                                  padding: EdgeInsets.only(
                                      top: pageWidth / 40,
                                      right: pageWidth / 30,
                                      left: pageWidth / 30,
                                      bottom: pageWidth / 40),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(45.0)),
                                      border: Border.all(color: color),
                                      color: Color(0xffeaeaea)),
                                  child: Row(
                                    textDirection: TextDirection.rtl,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            'از',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontFamily: 'Aviny',
                                                fontSize: 20.0,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          child: InkWell(
                                        onTap: () {
                                          TimeFrom();
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                          ),
                                          child: Center(
                                            child: Text(timeFromshow == ''
                                                ? '00/0/0'
                                                : '${timeFromshow}'),
                                          ),
                                        ),
                                      )),
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            'تا',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontFamily: 'Aviny',
                                                fontSize: 20.0,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          child: InkWell(
                                        onTap: () {
                                          TimeTo();
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                          ),
                                          child: Center(
                                            child: Text(timeToshow == ''
                                                ? '00/0/0'
                                                : '${timeToshow}'),
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: pageWidth,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: pageWidth / 4,
                                      right: pageWidth / 4,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xffeaeaea),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(45.0)),
                                        border: Border.all(color: color)),
                                    child: Center(
                                      child: LessonNane(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: pageWidth / 40.0,
                                ),
                                Container(
                                  width: pageWidth,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                        left: pageWidth / 4,
                                        right: pageWidth / 4,
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                          border: Border.all(color: color)),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            flag = 1;
                                          });
                                          print('clicked');
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: color,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(45.0))),
                                          child: Center(
                                            child: Text(
                                              'تایید',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'Aviny',
                                                  fontSize: 20.0,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      )),
                                ),
                                Container(
                                  width: pageWidth,
                                  height: pageHeihgt / 1.5,
                                  margin: EdgeInsets.all(pageWidth / 40),
//                                  padding: EdgeInsets.all(pageWidth / 30),
                                  child: Center(
                                      child: flag == 0
                                          ? Text(
                                              'برای مشاهده نتایج بازه تعیین کنید!',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  fontFamily: 'Aviny',
                                                  fontSize: 20.0,
                                                  color: Colors.black54),
                                            )
                                          : Container(
                                              child: Column(
                                                children: <Widget>[
                                                  Expanded(
                                                    flex: 2,
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                        top: pageWidth / 40,
                                                        bottom: pageWidth / 40,
                                                      ),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          45.0)),
                                                          border: Border.all(
                                                              color: color),
                                                          color: Color(
                                                              0xffeaeaea)),
                                                      child: Row(
                                                        textDirection:
                                                            TextDirection.rtl,
                                                        children: <Widget>[
                                                          Expanded(
                                                            child: Container(
                                                              child: Center(
                                                                child: Text(
                                                                  'روز',
                                                                  textDirection:
                                                                      TextDirection
                                                                          .rtl,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18.0,
                                                                      fontFamily:
                                                                          'Aviny'),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              child: Center(
                                                                child: Text(
                                                                  'تاریخ',
                                                                  textDirection:
                                                                      TextDirection
                                                                          .rtl,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18.0,
                                                                      fontFamily:
                                                                          'Aviny'),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              child: Center(
                                                                child: Text(
                                                                  'ساعت مطالعه',
                                                                  textDirection:
                                                                      TextDirection
                                                                          .rtl,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18.0,
                                                                      fontFamily:
                                                                          'Aviny'),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 8,
                                                    child: Container(
                                                      child: ListView.builder(
                                                        itemCount: 10,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return InkWell(
                                                            onTap: () {
                                                              showDetailPage();
                                                            },
                                                            child: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 3.0),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              15.0)),
                                                                  color: Colors
                                                                      .white,
                                                                  border: Border
                                                                      .all(
                                                                          color:
                                                                              color)),
                                                              child: Row(
                                                                textDirection:
                                                                    TextDirection
                                                                        .rtl,
                                                                children: <
                                                                    Widget>[
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Text(
                                                                          'شنبه',
                                                                          textDirection:
                                                                              TextDirection.rtl,
                                                                          style: TextStyle(
                                                                              fontSize: 18.0,
                                                                              fontFamily: 'Aviny'),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Text(
                                                                          '1399/5/31',
                                                                          textDirection:
                                                                              TextDirection.rtl,
                                                                          style: TextStyle(
                                                                              fontSize: 18.0,
                                                                              fontFamily: 'Aviny'),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Text(
                                                                          '8:30',
                                                                          textDirection:
                                                                              TextDirection.rtl,
                                                                          style: TextStyle(
                                                                              fontSize: 18.0,
                                                                              fontFamily: 'Aviny'),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }

  TimeFrom() {
    var dayFrom = TextEditingController();
    var mountFrom = TextEditingController();
    var yearFrom = TextEditingController();
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            //this right here
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 35),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(45.0)),
                          color: color),
                      child: Center(
                        child: Text(
                          'انتخاب تاریخ',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'Aviny',
                              fontSize: 20.0,
                              color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 35),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Color(0xffeaeaea)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(
                                MediaQuery.of(context).size.width / 35),
                            color: Color(0xffeaeaea),
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                          color: color),
                                      child: Center(
                                        child: Text(
                                          'روز',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontFamily: 'Aviny',
                                              fontSize: 20.0,
                                              color: Colors.white),
                                        ),
                                      )),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        ' ',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                            fontFamily: 'Aviny',
                                            fontSize: 30.0,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                          color: color),
                                      child: Center(
                                        child: Text(
                                          'ماه',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontFamily: 'Aviny',
                                              fontSize: 20.0,
                                              color: Colors.white),
                                        ),
                                      )),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        ' ',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                            fontFamily: 'Aviny',
                                            fontSize: 30.0,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                          color: color),
                                      child: Center(
                                        child: Text(
                                          'سال',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontFamily: 'Aviny',
                                              fontSize: 20.0,
                                              color: Colors.white),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(
                                MediaQuery.of(context).size.width / 35),
                            color: Color(0xffeaeaea),
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Colors.white,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      maxLength: 2,
                                      controller: dayFrom,
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          counter: Offstage(),
                                          hintText: '00'),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        '/',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                            fontFamily: 'Aviny',
                                            fontSize: 30.0,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Colors.white,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      maxLength: 2,
                                      controller: mountFrom,
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          counter: Offstage(),
                                          hintText: '00',
                                          hintStyle: TextStyle()),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        '/',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                            fontFamily: 'Aviny',
                                            fontSize: 30.0,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    color: Colors.white,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: yearFrom,
                                      maxLength: 4,
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          counter: Offstage(),
                                          border: InputBorder.none,
                                          hintText: '00'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        if ((yearFrom.text.length == 4) &&
                            (int.parse(yearFrom.text) < 1500) &&
                            (int.parse(yearFrom.text) > 1300)) {
                          if ((mountFrom.text.length == 1) ||
                              (mountFrom.text.length == 2) &&
                                  (int.parse(mountFrom.text) < 13) &&
                                  (int.parse(mountFrom.text) > 0)) {
                            if ((int.parse(mountFrom.text) > 0) &&
                                (int.parse(mountFrom.text) < 7)) {
                              if ((dayFrom.text.length == 1) ||
                                  (dayFrom.text.length == 2) &&
                                      (int.parse(dayFrom.text) < 32) &&
                                      (int.parse(dayFrom.text) > 0)) {
                                timeFromshow = '${yearFrom.text}' +
                                    '/' +
                                    '${mountFrom.text}' +
                                    '/' +
                                    '${dayFrom.text}';
                                Navigator.pop(context);
                              }
                            } else if ((int.parse(mountFrom.text) > 0) &&
                                (int.parse(mountFrom.text) < 13)) {
                              if ((int.parse(mountFrom.text) > 6) &&
                                  (int.parse(mountFrom.text) < 13)) {
                                if ((dayFrom.text.length == 1) ||
                                    (dayFrom.text.length == 2) &&
                                        (int.parse(dayFrom.text) < 31) &&
                                        (int.parse(dayFrom.text) > 0)) {
                                  timeFromshow = '${yearFrom.text}' +
                                      '/' +
                                      '${mountFrom.text}' +
                                      '/' +
                                      '${dayFrom.text}';
                                  Navigator.pop(context);
                                }
                              }
                            }
                          }
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 35),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(45.0)),
                            color: color),
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
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  TimeTo() {
    var dayTo = TextEditingController();
    var mountTo = TextEditingController();
    var yearTo = TextEditingController();
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            //this right here
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 35),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(45.0)),
                          color: color),
                      child: Center(
                        child: Text(
                          'انتخاب تاریخ',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'Aviny',
                              fontSize: 20.0,
                              color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 35),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Color(0xffeaeaea)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(
                                MediaQuery.of(context).size.width / 35),
                            color: Color(0xffeaeaea),
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                          color: color),
                                      child: Center(
                                        child: Text(
                                          'روز',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontFamily: 'Aviny',
                                              fontSize: 20.0,
                                              color: Colors.white),
                                        ),
                                      )),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        ' ',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                            fontFamily: 'Aviny',
                                            fontSize: 30.0,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                          color: color),
                                      child: Center(
                                        child: Text(
                                          'ماه',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontFamily: 'Aviny',
                                              fontSize: 20.0,
                                              color: Colors.white),
                                        ),
                                      )),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        ' ',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                            fontFamily: 'Aviny',
                                            fontSize: 30.0,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                          color: color),
                                      child: Center(
                                        child: Text(
                                          'سال',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontFamily: 'Aviny',
                                              fontSize: 20.0,
                                              color: Colors.white),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(
                                MediaQuery.of(context).size.width / 35),
                            color: Color(0xffeaeaea),
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Colors.white,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      maxLength: 2,
                                      controller: dayTo,
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          counter: Offstage(),
                                          hintText: '00'),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        '/',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                            fontFamily: 'Aviny',
                                            fontSize: 30.0,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Colors.white,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      maxLength: 2,
                                      controller: mountTo,
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          counter: Offstage(),
                                          hintText: '00',
                                          hintStyle: TextStyle()),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        '/',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                            fontFamily: 'Aviny',
                                            fontSize: 30.0,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    color: Colors.white,
                                    child: TextField(
                                      controller: yearTo,
                                      keyboardType: TextInputType.number,
                                      maxLength: 4,
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          counter: Offstage(),
                                          border: InputBorder.none,
                                          hintText: '00'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        if ((yearTo.text.length == 4) &&
                            (int.parse(yearTo.text) < 1500) &&
                            (int.parse(yearTo.text) > 1300)) {
                          if ((mountTo.text.length == 1) ||
                              (mountTo.text.length == 2) &&
                                  (int.parse(mountTo.text) < 13) &&
                                  (int.parse(mountTo.text) > 0)) {
                            if ((int.parse(mountTo.text) > 0) &&
                                (int.parse(mountTo.text) < 7)) {
                              if ((dayTo.text.length == 1) ||
                                  (dayTo.text.length == 2) &&
                                      (int.parse(dayTo.text) < 32) &&
                                      (int.parse(dayTo.text) > 0)) {
                                timeToshow = '${yearTo.text}' +
                                    '/' +
                                    '${mountTo.text}' +
                                    '/' +
                                    '${dayTo.text}';
                                Navigator.pop(context);
                              }
                            } else if ((int.parse(mountTo.text) > 0) &&
                                (int.parse(mountTo.text) < 13)) {
                              if ((int.parse(mountTo.text) > 6) &&
                                  (int.parse(mountTo.text) < 13)) {
                                if ((dayTo.text.length == 1) ||
                                    (dayTo.text.length == 2) &&
                                        (int.parse(dayTo.text) < 31) &&
                                        (int.parse(dayTo.text) > 0)) {
                                  timeToshow = '${yearTo.text}' +
                                      '/' +
                                      '${mountTo.text}' +
                                      '/' +
                                      '${dayTo.text}';
                                  Navigator.pop(context);
                                }
                              }
                            }
                          }
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 35),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(45.0)),
                            color: color),
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
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  showDetailPage() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            //this right here
            child: Container(
              child: detailPage(),
            ),
          );
        });
  }
}

class GroupedBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  GroupedBarChart(this.seriesList, {this.animate});

  factory GroupedBarChart.withSampleData() {
    return GroupedBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
      barGroupingType: charts.BarGroupingType.grouped,
      defaultRenderer: new charts.BarRendererConfig(
          cornerStrategy: const charts.ConstCornerStrategy(10)),
    );
  }

  /// Create series list with multiple series
  static List<charts.Series<Les, String>> _createSampleData() {
    final desktopSalesData = [
      new Les('ریاضی', 5),
      new Les('فیزیک', 25),
      new Les('شیمی', 100),
      new Les('ادبیات', 75),
      new Les('عربی', 75),
      new Les('زبان انگلیسی', 75),
      new Les('دینی', 75),
    ];

    return [
      new charts.Series<Les, String>(
        id: 'Desktop',
        domainFn: (Les sales, _) => sales.lesson,
        measureFn: (Les sales, _) => sales.R_hour,
        data: desktopSalesData,
      ),
    ];
  }
}

/// Sample ordinal data type.
class Les {
  final String lesson;
  final int R_hour;

  Les(this.lesson, this.R_hour);
}

class SimplePieChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimplePieChart(this.seriesList, {this.animate});

  /// Creates a [PieChart] with sample data and no transition.
  factory SimplePieChart.withSampleData() {
    return new SimplePieChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.PieChart(seriesList, animate: animate);
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSalesP, int>> _createSampleData() {
    final data = [
      new LinearSalesP(0, 100),
      new LinearSalesP(1, 75),
      new LinearSalesP(2, 25),
      new LinearSalesP(3, 5),
    ];

    return [
      new charts.Series<LinearSalesP, int>(
        id: 'Sales',
        domainFn: (LinearSalesP sales, _) => sales.year,
        measureFn: (LinearSalesP sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

class LinearSalesP {
  final int year;
  final int sales;

  LinearSalesP(this.year, this.sales);
}

class SimpleLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleLineChart(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory SimpleLineChart.withSampleData() {
    return new SimpleLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(seriesList, animate: animate);
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 5),
      new LinearSales(1, 25),
      new LinearSales(2, 100),
      new LinearSales(3, 75),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}

class LessonNane extends StatefulWidget {
  @override
  _LessonNaneState createState() => _LessonNaneState();
}

class _LessonNaneState extends State<LessonNane> {
  String dropdownValueBase = null;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButton<String>(
        hint: Text(
          'انتخاب درس',
          textDirection: TextDirection.rtl,
          style: TextStyle(fontSize: 18.0, fontFamily: 'Aviny'),
        ),
        value: dropdownValueBase,
        underline: Container(),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(
            fontSize: 18.0, fontFamily: 'Aviny', color: Colors.black54),
        onChanged: (String newValue) {
          setState(() {});
        },
        items: <String>[
          "همه دروس",
          "ریاضی",
          "فیزیک",
          "شیمی",
          "ادبیات",
          "عربی",
          "دینی",
          "انگلیسی",
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
