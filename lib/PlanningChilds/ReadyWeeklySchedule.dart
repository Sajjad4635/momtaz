import 'package:flutter/material.dart';
import 'package:mmtaz/PlanningChilds/WeekOfAzmons.dart';
import 'package:mmtaz/PlanningChilds/nameOFAzmoon.dart';

class barname_moshaver extends StatefulWidget {
  @override
  _barname_moshaverState createState() => _barname_moshaverState();
}

class _barname_moshaverState extends State<barname_moshaver> {

  void _showScaffold(String message) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
  void _showScaffold2(String message) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
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
      content: Text('درخواست شما ثبت شد',),
      action: SnackBarAction(
        label: 'تایید',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );
    final snackBar2 = SnackBar(
      content: Text('درخواست شما ثبت شده است',),
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
                onTap: (){
                  if (bb == 1){
                    Scaffold.of(context).showSnackBar(snackBar);
                    bb = 2;
                  }else if (bb == 2){
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
                        border: Border.all(
                            width: 0.5,
                            color: Colors.black
                        )
                    ),
                    width: pageWidth,
                    height: pageHeight/2,
                    child: Stack(
                      children: <Widget>[
//                      Image.asset('images/6.jpg', fit: BoxFit.cover,),
                        Container(
                          margin: const EdgeInsets.only(top: 100.0, right: 80.0,left: 80.0,bottom: 100.0),
                          color: Colors.black.withOpacity(0.3),
                          child: Center(
                            child: Text('برنامه هفتگی',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22.0,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                ),
              ),
              SizedBox(height: 10.0,),
              InkWell(
                onTap: (){
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
                        border: Border.all(
                            width: 0.5,
                            color: Colors.black
                        )
                    ),
                    width: pageWidth,
                    height: pageHeight/2,
                    child: Stack(
                      children: <Widget>[
//                      Image.asset('images/6.jpg', fit: BoxFit.cover,),
                        Container(
                          margin: const EdgeInsets.only(top: 100.0, right: 80.0,left: 80.0,bottom: 100.0),
                          color: Colors.black.withOpacity(0.3),
                          child: Center(
                            child: Text('برنامه آزمونی',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22.0,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                ),
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
        body: Container(
          height: pageHeight,
          width: pageWidth,
          child: ListView(
            children: <Widget>[
              InkWell(
                onTap: (){
                },
                child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/8888.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        border: Border.all(
                            width: 0.5,
                            color: Colors.black
                        )
                    ),
                    width: pageWidth,
                    height: pageHeight/2,
                    child: Stack(
                      children: <Widget>[
//                      Image.asset('images/6.jpg', fit: BoxFit.cover,),
                        Container(
                          margin: const EdgeInsets.only(top: 100.0, right: 80.0,left: 80.0,bottom: 100.0),
                          color: Colors.black.withOpacity(0.3),
                          child: Center(
                            child: Text('برنامه هفتگی',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22.0,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                ),
              ),
              SizedBox(height: 10.0,),
              InkWell(
                onTap: (){
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
                        border: Border.all(
                            width: 0.5,
                            color: Colors.black
                        )
                    ),
                    width: pageWidth,
                    height: pageHeight/2,
                    child: Stack(
                      children: <Widget>[
//                      Image.asset('images/6.jpg', fit: BoxFit.cover,),
                        Container(
                          margin: const EdgeInsets.only(top: 100.0, right: 80.0,left: 80.0,bottom: 100.0),
                          color: Colors.black.withOpacity(0.3),
                          child: Center(
                            child: Text('برنامه آزمونی',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22.0,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
