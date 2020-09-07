import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/Setting.dart';

class detailPage extends StatefulWidget {
  @override
  _detailPageState createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xffEAEAEA),
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffEAEAEA),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.height / 32,
                        left: MediaQuery.of(context).size.height / 32),
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45.0),
                            bottomRight: Radius.circular(45.0))),
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
                        Text(
                          'شنبه',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'Aviny', color: Colors.white,
                          fontSize: 17.0),
                        ),
                        Text(
                          '99/2/14',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'Aviny', color: Colors.white,
                              fontSize: 17.0),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding:
                  EdgeInsets.all(MediaQuery.of(context).size.width / 50),
                  decoration: BoxDecoration(
                    color: Color(0xffEAEAEA),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius:
                        BorderRadius.all(Radius.circular(45.0))),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        Expanded(
                          child: Center(
                            child: Text(
                              'نام درس',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontFamily: 'Aviny', color: Colors.white,
                                  fontSize: 17.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'ساعت مطالعاتی',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontFamily: 'Aviny', color: Colors.white,
                                  fontSize: 17.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'ساعت تست',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontFamily: 'Aviny', color: Colors.white,
                                  fontSize: 17.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'تعداد تست',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontFamily: 'Aviny', color: Colors.white,
                                  fontSize: 17.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Color(0xffEAEAEA),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height / 10,
                            child: Row(
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'ریاضی',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontFamily: 'Aviny',
                                          fontSize: 19.0,
                                          color: Colors.black54),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      '75',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontFamily: 'Aviny',
                                          fontSize: 19.0,
                                          color: Colors.black54),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      '60',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontFamily: 'Aviny',
                                          fontSize: 19.0,
                                          color: Colors.black54),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      '40',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontFamily: 'Aviny',
                                          fontSize: 19.0,
                                          color: Colors.black54),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 12,
                              right: MediaQuery.of(context).size.width / 12,
                            ),
                            height: 0.5,
                            color: color,
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}