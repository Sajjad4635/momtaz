import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/EnterPage.dart';
import 'package:mmtaz/widgets/Wallet.dart';
import 'package:mmtaz/widgets/WeeklySchedule.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffEAEAEA),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            MediaQuery.of(context).size.height / 8,
          ),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: Color(0xff00d170),
            actions: <Widget>[
              Container(
                decoration: BoxDecoration(color: Color(0xff00d170)),
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
          decoration: BoxDecoration(color: Color(0xff00d170)),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff00d170),
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
                          color: Color(0xff00d170),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45.0))),
                      child: Center(
                        child: Text(
                          'سجاد حاجی زاده عزیز خوش اومدی!',
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
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xffEAEAEA),
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(45.0)),
                      ),
                      child: ListView(
                        children: <Widget>[
                          Container(
                            child: Container(
                                height: MediaQuery.of(context).size.height / 10,
                                decoration: BoxDecoration(
                                    color: Color(0xff00d170),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10000.0))),
                                child: Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'نام و نام خانوادگی :',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'سجاد حاجی زاده',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 40,
                          ),
                          Container(
                            child: Container(
                                height: MediaQuery.of(context).size.height / 10,
                                decoration: BoxDecoration(
                                    color: Color(0xff00d170),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10000.0))),
                                child: Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'مشاور',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'سعید عبدی',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 40,
                          ),
                          Container(
                            child: Container(
                                height: MediaQuery.of(context).size.height / 10,
                                decoration: BoxDecoration(
                                    color: Color(0xff00d170),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10000.0))),
                                child: Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'کد ملی :',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    ),
                                    Text(
                                      '4900711012',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 40,
                          ),
                          Container(
                            child: Container(
                                height: MediaQuery.of(context).size.height / 10,
                                decoration: BoxDecoration(
                                    color: Color(0xff00d170),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10000.0))),
                                child: Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'پایه :',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'دوادزهم',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 40,
                          ),
                          Container(
                            child: Container(
                                height: MediaQuery.of(context).size.height / 10,
                                decoration: BoxDecoration(
                                    color: Color(0xff00d170),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10000.0))),
                                child: Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'رشته :',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'ریاضی و فیزیک',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 40,
                          ),
                          Container(
                            child: Container(
                                height: MediaQuery.of(context).size.height / 10,
                                decoration: BoxDecoration(
                                    color: Color(0xff00d170),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10000.0))),
                                child: Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'کد مشاور :',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'GT-12853',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'Aviny',
                                          color: Colors.white),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 40,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => WeeklySchedule()));
                                  },
                                  child: Container(
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                10,
                                        decoration: BoxDecoration(
                                            color: Color(0xff00d170),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10000.0))),
                                        child: Center(
                                          child: Text(
                                            'برنامه هفتگی',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Aviny',
                                                color: Colors.white),
                                          ),
                                        )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Enter_page()));
                                  },
                                  child: Container(
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                10,
                                        decoration: BoxDecoration(
                                            color: Color(0xff00d170),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10000.0))),
                                        child: Center(
                                          child: Text(
                                            'ویرایش اطلاعات',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Aviny',
                                                color: Colors.white),
                                          ),
                                        )),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
