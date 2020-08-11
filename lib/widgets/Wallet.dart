import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/raidioButton.dart';

class wallet extends StatefulWidget {
  @override
  _walletState createState() => _walletState();
}

class _walletState extends State<wallet> {
  @override
  Widget build(BuildContext context) {
    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;
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
                      Icon(Icons.shopping_basket, color: Colors.white),
                    ],
                  ),
                )
              ],
            ),
          ),
          body: Container(
            decoration: BoxDecoration(color: Color(0xff00d170)),
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
                              color: Color(0xff00d170),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(45.0))),
                          child: Center(
                            child: Text(
                                'کیف پولتو شارژ کن تا همیشه برنامه داشته باشی!',
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
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(45.0)),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffEAEAEA),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(45.0))),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width /
                                                50.0,
                                        right:
                                            MediaQuery.of(context).size.width /
                                                50.0,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Color(0xff00d170),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(45.0))),
                                      child: Row(
                                        textDirection: TextDirection.rtl,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text('موجودی شما',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                fontFamily: 'Aviny',
                                                fontSize: 18.0,
                                                color: Colors.white,
                                              )),
                                          Text('20000  تومان',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                fontFamily: 'Aviny',
                                                fontSize: 18.0,
                                                color: Colors.white,
                                              )),
                                        ],
                                      )),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 50.0,
                                ),
                                Expanded(
                                  flex: 8,
                                  child: CustomRadio(),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 50.0,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    decoration: BoxDecoration(
                                        color: Color(0xff00d170),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(45.0))),
                                    child: Center(
                                      child: Text('پرداخت',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                            fontFamily: 'Aviny',
                                            fontSize: 20.0,
                                            color: Colors.white,
                                          )),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))
                  ]),
            ),
          )),
    );
  }
}
