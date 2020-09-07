import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/Setting.dart';

var selected = Colors.green;
var unselected = Colors.white;
var g1 = unselected;
var g2 = unselected;
var g3 = unselected;
var g4 = unselected;

class examPage extends StatefulWidget {
  @override
  _examPageState createState() => _examPageState();
}

class _examPageState extends State<examPage> {
  @override
  void dispose() {
    openDialog();
  }
  @override
  Widget build(BuildContext context) {
    var qnum = 0;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xffeaeaea),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width/90.0,
                    bottom: MediaQuery.of(context).size.width/90.0,
                    left: MediaQuery.of(context).size.width/30.0,
                    right: MediaQuery.of(context).size.width/30.0
                  ),
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width/30.0,
                    right: MediaQuery.of(context).size.width/30.0
                  ),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        onTap: (){

                        },
                        child: Text(
                          'سوال بعدی',
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'Aviny',
                              color: Colors.white,
                              fontSize: 17.0
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            '${qnum+1}'+'/'+'20',
                            style: TextStyle(
                                fontFamily: 'Aviny',
                                color: Colors.white,
                                fontSize: 17.0
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){

                        },
                        child: Text(
                          'سوال قبلی',
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'Aviny',
                              color: Colors.white,
                              fontSize: 17.0
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Container(
                        margin: EdgeInsets.all(MediaQuery.of(context).size.width/30.0),
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width/90.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                  child: ListView(
                    children: <Widget>[
                      Text('سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره سعید خره ',
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Aviny',
                        fontSize: 17.0
                      ),
                      )
                    ],
                  ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          setState(() {
                            g1 = selected;
                            g2 = unselected;
                            g3 = unselected;
                            g4 = unselected;
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height/12,
                          margin: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width/30.0,
                            left: MediaQuery.of(context).size.width/30.0
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              border: Border.all(
                                  color: color
                              ),
                              color: g1
                          ),
                          child: Center(
                            child: Text(
                              'گزینه 1',
                              style: TextStyle(
                                  fontFamily: 'Aviny',
                                  fontSize: 17.0,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            g1 = unselected;
                            g2 = selected;
                            g3 = unselected;
                            g4 = unselected;
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height/12,
                          margin: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width/30.0,
                              left: MediaQuery.of(context).size.width/30.0
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              border: Border.all(
                                  color: color
                              ),
                              color: g2
                          ),
                          child: Center(
                            child: Text(
                              'گزینه 1',
                              style: TextStyle(
                                  fontFamily: 'Aviny',
                                  fontSize: 17.0,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            g1 = unselected;
                            g2 = unselected;
                            g3 = selected;
                            g4 = unselected;
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height/12,
                          margin: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width/30.0,
                              left: MediaQuery.of(context).size.width/30.0
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              border: Border.all(
                                  color: color
                              ),
                              color: g3
                          ),
                          child: Center(
                            child: Text(
                              'گزینه 1',
                              style: TextStyle(
                                  fontFamily: 'Aviny',
                                  fontSize: 17.0,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            g1 = unselected;
                            g2 = unselected;
                            g3 = unselected;
                            g4 = selected;
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height/12,
                          margin: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width/30.0,
                              left: MediaQuery.of(context).size.width/30.0
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              border: Border.all(
                                  color: color
                              ),
                              color: g4
                          ),
                          child: Center(
                            child: Text(
                              'گزینه 1',
                              style: TextStyle(
                                  fontFamily: 'Aviny',
                                  fontSize: 17.0,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }

  openDialog() {
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
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                              builder: (context) => finalPage(2)));
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
}
