import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/Setting.dart';
import 'package:mmtaz/widgets/login.dart';

class Enter_page extends StatefulWidget {
  @override
  _Enter_pageState createState() => _Enter_pageState();
}

class _Enter_pageState extends State<Enter_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffEAEAEA),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45.0),
                            bottomRight: Radius.circular(45.0)),
                      ),
                      child: Center(
                        child: Text(
                          'داستان موفقیتت رو شروع کن!',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'Aviny',
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                flex: 8,
                child: Container(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 10,
                    right: MediaQuery.of(context).size.width / 10,
                  ),
                  color: Color(0xffEAEAEA),
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(45.0)),
                        ),
                        child: Center(
                          child: TextField(
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(80.0),
                                ),
                                borderSide: new BorderSide(),
                              ),
                              hintText: 'نام و نام خانوادگی',
                              hintStyle: TextStyle(
                                fontFamily: 'Aviny',
                                fontSize: 18.0,
                              ),
                            ),
//                          controller: myController,
                            cursorColor: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40.0,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(45.0)),
                        ),
                        child: Center(
                          child: TextField(
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(80.0),
                                ),
                                borderSide: new BorderSide(),
                              ),
                              hintText: 'کد ملی',
                              hintStyle: TextStyle(
                                fontFamily: 'Aviny',
                                fontSize: 18.0,
                              ),
                            ),
//                          controller: myController,
                            cursorColor: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40.0,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(45.0)),
                        ),
                        child: Center(
                          child: TextField(
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(80.0),
                                ),
                                borderSide: new BorderSide(),
                              ),
                              hintText: 'کد مشاور',
                              hintStyle: TextStyle(
                                fontFamily: 'Aviny',
                                fontSize: 18.0,
                              ),
                            ),
//                          controller: myController,
                            cursorColor: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40.0,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 10.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(45.0)),
                                border: Border.all(
                                  width: 0.7,
                                  color: Colors.black54
                                )
                              ),
                              width: MediaQuery.of(context).size.width / 3,
                              child: Center(
                                child: paye(),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(45.0)),
                                  border: Border.all(
                                      width: 0.7,
                                      color: Colors.black54
                                  )
                              ),
                              width: MediaQuery.of(context).size.width / 3,
                              child: Center(
                                child: reshte(),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40.0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(45.0)),
                              border: Border.all(
                                  width: 0.7,
                                  color: Colors.black54
                              )
                          ),
                          child: Center(
                            child: Text(
                              'برنامه هفتگی',
                              style: TextStyle(
                                fontFamily: 'Aviny',
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40.0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(45.0)),
                              border: Border.all(
                                  width: 0.7,
                                  color: Colors.black54
                              )
                          ),
                          child: Center(
                            child: Text(
                              'تایید',
                              style: TextStyle(
                                fontFamily: 'Aviny',
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class paye extends StatefulWidget {
  paye({Key key}) : super(key: key);

  @override
  _payeState createState() => _payeState();
}

class _payeState extends State<paye> {
  String dropdownValue = null;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButton<String>(
        hint: Text(
          'پایه',
          style: TextStyle(
            fontFamily: 'Aviny',
            fontSize: 18.0,
          ),
        ),
        value: dropdownValue,
//        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(
            color: Colors.black54, fontFamily: 'Aviny', fontSize: 18.0),
        underline: Container(),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          "ریاضی",
          "فیزیک",
          "شیمی",
          "ادبیات",
          "عربی",
          "زبان انگلیسی",
          "تعلیمات دینی",
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

class reshte extends StatefulWidget {
  reshte({Key key}) : super(key: key);

  @override
  _reshteState createState() => _reshteState();
}

class _reshteState extends State<reshte> {
  String dropdownValue = null;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownButton<String>(
        hint: Text(
          'رشته',
          style: TextStyle(
            fontFamily: 'Aviny',
            fontSize: 18.0,
          ),
        ),
        value: dropdownValue,
//        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(
            color: Colors.black54, fontFamily: 'Aviny', fontSize: 18.0),
        underline: Container(),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          "ریاضی",
          "فیزیک",
          "شیمی",
          "ادبیات",
          "عربی",
          "زبان انگلیسی",
          "تعلیمات دینی",
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
