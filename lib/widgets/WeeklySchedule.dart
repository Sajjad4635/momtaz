import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/Wallet.dart';
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              MediaQuery.of(context).size.height / 8,
            ),
            child: AppBar(
              elevation: 0.0,
              backgroundColor: Color(0xff00d170),
              actions: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff00d170),
                  ),
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
                              'برنامه هفتگی',
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => wallet(),
                              ));
                        },
                        child: Icon(Icons.shopping_basket, color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          body: Container(
            color: Color(0xffEAEAEA),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(color: Color(0xffEAEAEA)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff00d170),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45.0),
                              bottomRight: Radius.circular(45.0))),
                      child: Center(
                        child: Text(
                          'برنامه ریزی تحصیلی داشته باش!',
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
                  flex: 8,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(
                        height: pageHeight / 50,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: pageWidth / 20),
                          width: pageWidth - 15,
                          height: pageHeight / 8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(45.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.black,
//                      ),
                          ),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff00d170),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(45.0),
                                        bottomRight: Radius.circular(45.0)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'شنبه',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.white,
                                          fontFamily: 'Aviny'),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: pageHeight / 50,
                                      bottom: pageHeight / 50),
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    reverse: true,
                                    children: <Widget>[
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang1()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang2()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang3()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang4()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang5()),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                        height: pageHeight / 50,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: pageWidth / 20),
                          width: pageWidth - 15,
                          height: pageHeight / 8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(45.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.black,
//                      ),
                          ),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff00d170),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(45.0),
                                        bottomRight: Radius.circular(45.0)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'یکشنبه',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.white,
                                          fontFamily: 'Aviny'),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: pageHeight / 50,
                                      bottom: pageHeight / 50),
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    reverse: true,
                                    children: <Widget>[
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang1()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang2()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang3()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang4()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang5()),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                        height: pageHeight / 50,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: pageWidth / 20),
                          width: pageWidth - 15,
                          height: pageHeight / 8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(45.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.black,
//                      ),
                          ),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff00d170),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(45.0),
                                        bottomRight: Radius.circular(45.0)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'دوشنبه',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.white,
                                          fontFamily: 'Aviny'),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: pageHeight / 50,
                                      bottom: pageHeight / 50),
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    reverse: true,
                                    children: <Widget>[
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang1()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang2()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang3()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang4()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang5()),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                        height: pageHeight / 50,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: pageWidth / 20),
                          width: pageWidth - 15,
                          height: pageHeight / 8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(45.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.black,
//                      ),
                          ),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff00d170),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(45.0),
                                        bottomRight: Radius.circular(45.0)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'سه شنبه',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.white,
                                          fontFamily: 'Aviny'),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: pageHeight / 50,
                                      bottom: pageHeight / 50),
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    reverse: true,
                                    children: <Widget>[
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang1()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang2()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang3()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang4()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang5()),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                        height: pageHeight / 50,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: pageWidth / 20),
                          width: pageWidth - 15,
                          height: pageHeight / 8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(45.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.black,
//                      ),
                          ),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff00d170),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(45.0),
                                        bottomRight: Radius.circular(45.0)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'چهارشنبه',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.white,
                                          fontFamily: 'Aviny'),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: pageHeight / 50,
                                      bottom: pageHeight / 50),
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    reverse: true,
                                    children: <Widget>[
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang1()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang2()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang3()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang4()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang5()),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                        height: pageHeight / 50,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: pageWidth / 20),
                          width: pageWidth - 15,
                          height: pageHeight / 8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(45.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.black,
//                      ),
                          ),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff00d170),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(45.0),
                                        bottomRight: Radius.circular(45.0)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'پنج شنبه',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.white,
                                          fontFamily: 'Aviny'),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: pageHeight / 50,
                                      bottom: pageHeight / 50),
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    reverse: true,
                                    children: <Widget>[
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang1()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang2()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang3()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang4()),
                                      ),
                                      SizedBox(
                                        width: pageWidth / 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        decoration: BoxDecoration(
//                                    color: Color(0xff00d170),
                                          border: Border.all(
                                            width: 2.0,
                                            color: Color(0xff00d170),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0)),
                                        ),
                                        child: Center(child: zang5()),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                        height: pageHeight / 50,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: pageWidth / 5,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 50,
                        bottom: MediaQuery.of(context).size.height / 50),
                    decoration: BoxDecoration(
                        color: Color(0xff00d170),
                        borderRadius: BorderRadius.all(Radius.circular(45.0))),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        child: Center(
                          child: Text(
                            'تایید',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'Aviny', color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
