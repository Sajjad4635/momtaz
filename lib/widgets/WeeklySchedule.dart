import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/zangHa.dart';

class WeeklySchedule extends StatefulWidget {
  @override
  _WeeklyScheduleState createState() => _WeeklyScheduleState();
}

class _WeeklyScheduleState extends State<WeeklySchedule> {
  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;
    var myStyle = TextStyle(
        fontSize: 14.0,
        color: Colors.black,
        fontFamily: 'vazir',
        fontWeight: FontWeight.w600);

    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.deepPurple, primarySwatch: Colors.deepPurple),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'برنامه هفتگی',
              style: TextStyle(
                fontFamily: 'vazir',
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            centerTitle: true,
          ),
          body: ListView(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Container(
                  width: pageWidth - 15,
                  height: pageHeight / 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(
                      width: 0.5,
                      color: Colors.deepPurple,
                    ),
                  ),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFBC94F6), Colors.white],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(
                              width: 0.1,
                              color: Colors.deepPurple,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'شنبه',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'vazir'),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          reverse: true,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang1()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang2()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang3()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang4()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang5()),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 7.0,
              ),
              Container(
                  width: pageWidth - 15,
                  height: pageHeight / 9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(
                      width: 0.5,
                      color: Colors.deepPurple,
                    ),
                  ),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFBC94F6), Colors.white],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(
                              width: 0.1,
                              color: Colors.deepPurple,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'یک شنبه',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'vazir'),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          reverse: true,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang1()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang2()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang3()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang4()),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 7.0,
              ),
              Container(
                  width: pageWidth - 15,
                  height: pageHeight / 9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(
                      width: 0.5,
                      color: Colors.deepPurple,
                    ),
                  ),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFBC94F6), Colors.white],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(
                              width: 0.1,
                              color: Colors.deepPurple,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'دوشنبه',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'vazir'),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          reverse: true,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang1()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang2()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang3()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang4()),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 7.0,
              ),
              Container(
                  width: pageWidth - 15,
                  height: pageHeight / 9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(
                      width: 0.5,
                      color: Colors.deepPurple,
                    ),
                  ),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFBC94F6), Colors.white],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(
                              width: 0.1,
                              color: Colors.deepPurple,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'سه شنبه',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'vazir'),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          reverse: true,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang1()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang2()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang3()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang4()),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 7.0,
              ),
              Container(
                  width: pageWidth - 15,
                  height: pageHeight / 9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(
                      width: 0.5,
                      color: Colors.deepPurple,
                    ),
                  ),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFBC94F6), Colors.white],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(
                              width: 0.1,
                              color: Colors.deepPurple,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'چهارشنبه',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'vazir'),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          reverse: true,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang1()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang2()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang3()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang4()),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 7.0,
              ),
              Container(
                  width: pageWidth - 15,
                  height: pageHeight / 9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(
                      width: 0.5,
                      color: Colors.deepPurple,
                    ),
                  ),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFBC94F6), Colors.white],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(
                              width: 0.1,
                              color: Colors.deepPurple,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'پنج شنبه',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'vazir'),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          reverse: true,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang1()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang2()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang3()),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.deepPurple,
//                      ),
//                    ),
                              child: Center(child: zang4()),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 7.0,
              ),
              Container(
                  width: pageWidth - 15,
                  height: pageHeight / 8,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFBC94F6), Colors.white],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.deepPurple,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'تایید',
                        style: myStyle,
                      ),
                    ),
                  ))
            ],
          )),
    );
  }
}
