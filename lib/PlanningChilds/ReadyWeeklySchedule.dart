import 'package:flutter/material.dart';
import 'package:mmtaz/PlanningChilds/WeekOfAzmons.dart';
import 'package:mmtaz/PlanningChilds/nameOFAzmoon.dart';
import 'package:mmtaz/widgets/Setting.dart';

class barname_moshaver extends StatefulWidget {
  @override
  _barname_moshaverState createState() => _barname_moshaverState();
}

class _barname_moshaverState extends State<barname_moshaver> {
  void _showScaffold(String message) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  void _showScaffold2(String message) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;
    var bb = 1;

    final snackBar = SnackBar(
      content: Text(
        'درخواست شما ثبت شد',
      ),
      action: SnackBarAction(
        label: 'تایید',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );
    final snackBar2 = SnackBar(
      content: Text(
        'درخواست شما ثبت شده است',
      ),
      action: SnackBarAction(
        label: 'تایید',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: pageHeight,
          width: pageWidth,
          child: ListView(
            children: <Widget>[
              InkWell(
                onTap: () {
                  if (bb == 1) {
                    Scaffold.of(context).showSnackBar(snackBar);
                    bb = 2;
                  } else if (bb == 2) {
                    Scaffold.of(context).showSnackBar(snackBar2);
                  }
                },
                child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/8888.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        border: Border.all(width: 0.5, color: Colors.black)),
                    width: pageWidth,
                    height: pageHeight / 2,
                    child: Stack(
                      children: <Widget>[
//                      Image.asset('images/6.jpg', fit: BoxFit.cover,),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 100.0,
                              right: 80.0,
                              left: 80.0,
                              bottom: 100.0),
                          color: Colors.black.withOpacity(0.3),
                          child: Center(
                            child: Text(
                              'برنامه هفتگی',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22.0,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => nameOfAzmoon()));
                },
                child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/9999.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        border: Border.all(width: 0.5, color: Colors.black)),
                    width: pageWidth,
                    height: pageHeight / 2,
                    child: Stack(
                      children: <Widget>[
//                      Image.asset('images/6.jpg', fit: BoxFit.cover,),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 100.0,
                              right: 80.0,
                              left: 80.0,
                              bottom: 100.0),
                          color: Colors.black.withOpacity(0.3),
                          child: Center(
                            child: Text(
                              'برنامه آزمونی',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22.0,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class barname_amade extends StatefulWidget {
  @override
  _barname_amadeState createState() => _barname_amadeState();
}

class _barname_amadeState extends State<barname_amade> {
  @override
  Widget build(BuildContext context) {
    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;
    var bb = 1;

    return MaterialApp(
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
                        'بر چه اساسی برنامه میخوای؟',
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
                                  },
                                  child: Container(
//                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.height / 4,
                                      child: Image(
                                    image: new AssetImage(
                                        'images/Calendar.gif'),
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
                                                nameOfAzmoon()));
                                  },
                                  child: Container(
//                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.height / 4,
                                      child: Image(
                                    image: new AssetImage(
                                        'images/Azmoon.gif'),
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

//          InkWell(
//            onTap: () {
//              Navigator.push(
//                  context, MaterialPageRoute(builder: (context) => ChatPage()));
//            },
//            child: Container(
//                decoration: BoxDecoration(
//                  color: Color(0xff00d170),
//                    image: DecorationImage(
//                        colorFilter: new ColorFilter.mode(
//                            Color(0xff00d170).withOpacity(0.7),
//                            BlendMode.dstATop),
//                        image: AssetImage('images/back.png'),
//                        fit: BoxFit.cover),
////                    image: DecorationImage(
////                      image: AssetImage("images/1111.png"),
////                      fit: BoxFit.cover,
////                    ),
//                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
////                    border: Border.all(width: 0.5, color: Colors.black)
//                ),
//                margin: const EdgeInsets.only(right: 25.0, left: 25.0),
//                width: pageWidth,
//                height: pageHeight / 4,
//                child: Stack(
//                  children: <Widget>[
//                    Container(
//                      margin: const EdgeInsets.only(
//                          top: 10.0, right: 20.0, left: 20.0, bottom: 10.0),
//
//                    )
//                  ],
//                )),
//          ),
//            InkWell(
//              onTap: () {
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => ChatPagesec()));
//              },
//              child: Container(
//                  decoration: BoxDecoration(
//                    gradient: LinearGradient(
//                      colors: [Color(0xff365de7), Color(0xffB97CF5)],
//                      begin: Alignment.centerLeft,
//                      end: Alignment.centerRight,
//                    ),
////                    image: DecorationImage(
////                      image: AssetImage("images/2222.png"),
////                      fit: BoxFit.cover,
////                    ),
//                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
////                    border: Border.all(width: 0.5, color: Colors.black)
//                  ),
//                  width: pageWidth / 2,
//                  height: pageHeight / 5,
//                  child: Container(
//                    decoration: BoxDecoration(
//                        image: DecorationImage(
//                            image: AssetImage('images/bac4.png'))),
//                    child: Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: <Widget>[
//                        Text(
//                          'پیام خصوصی',
//                          style: TextStyle(fontSize: 22.0),
//                        ),
//                        Text(
//                          'به مشاور',
//                          style: TextStyle(fontSize: 22.0),
//                        ),
//                      ],
//                    ),
//                  )),
//            ),
            ],
          ),
        ),
      ),
    );
  }
}
