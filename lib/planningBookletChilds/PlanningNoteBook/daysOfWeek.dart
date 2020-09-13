import 'package:flutter/material.dart';
import 'package:mmtaz/planningBookletChilds/PlanningNoteBook/fechplenningnotebook.dart';
import 'package:mmtaz/widgets/LoadingPage.dart';
import 'file:///E:/flutter%20projects/todo/mmtaz/lib/planningBookletChilds/PlanningNoteBook/KhodnevisiDisable.dart';
import 'file:///E:/flutter%20projects/todo/mmtaz/lib/planningBookletChilds/PlanningNoteBook/Khodnevisienable.dart';
import 'file:///E:/flutter%20projects/todo/mmtaz/lib/planningBookletChilds/PlanningNoteBook/zoodeh.dart';
import 'package:mmtaz/widgets/Setting.dart';

var numOfDay;
var date;
var day;
var flagDaysOfWeek = 0;

class DaysOfWeek extends StatefulWidget {
  @override
  _DaysOfWeekState createState() => _DaysOfWeekState();
}

class _DaysOfWeekState extends State<DaysOfWeek> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    setState(() {
      setDay();
      if(flagDaysOfWeek == 0){
        getDaysInfo();
        flagDaysOfWeek = 1;
      }
    });

    return (day == null)&&(date == null)
        ? Scaffold(
      body: Container(
        child: Center(
          child: LoadingPage(),
        ),
      ),
    )
        : SafeArea(
            child: MaterialApp(
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
//                  margin: EdgeInsets.only(
//                      top: MediaQuery.of(context).size.height / 40),
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
                            Icon(Icons.shopping_basket, color: color),
                          ],
                        ),
                      )
                    ],
                  ),
                  key: _scaffoldKey,
                ),
                body: Column(
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
                          child: Row(
                            textDirection: TextDirection.rtl,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'امروز :',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontFamily: 'Aviny', color: Colors.white),
                              ),
                              Text(
                                '${day.toString()}',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontFamily: 'Aviny', color: Colors.white),
                              ),
                              Text(
                                '${date.toString()}',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontFamily: 'Aviny', color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Container(
                        decoration: BoxDecoration(color: color),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffEAEAEA),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(45.0))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  textDirection: TextDirection.rtl,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        checkDay(0, 'شنبه');
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                8,
                                        decoration: BoxDecoration(
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                color: Colors.black45,
                                                offset: Offset(1.0, 3.0),
                                                blurRadius: 5.0,
                                              ),
                                            ],
                                            color: color,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25.0))),
                                        child: Center(
                                          child: Text(
                                            'شنبه',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontFamily: 'Aviny',
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        checkDay(1, 'یکشنبه');
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                8,
                                        decoration: BoxDecoration(
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                color: Colors.black45,
                                                offset: Offset(1.0, 3.0),
                                                blurRadius: 5.0,
                                              ),
                                            ],
                                            color: color,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25.0))),
                                        child: Center(
                                          child: Text(
                                            'یکشنبه',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontFamily: 'Aviny',
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        checkDay(2, 'دوشنبه');
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                8,
                                        decoration: BoxDecoration(
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                color: Colors.black45,
                                                offset: Offset(1.0, 3.0),
                                                blurRadius: 5.0,
                                              ),
                                            ],
                                            color: color,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25.0))),
                                        child: Center(
                                          child: Text(
                                            'دوشنبه',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontFamily: 'Aviny',
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        checkDay(3, 'سه شنبه');
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                8,
                                        decoration: BoxDecoration(
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                color: Colors.black45,
                                                offset: Offset(1.0, 3.0),
                                                blurRadius: 5.0,
                                              ),
                                            ],
                                            color: color,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25.0))),
                                        child: Center(
                                          child: Text(
                                            'سه شنبه',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontFamily: 'Aviny',
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        checkDay(4, 'چهارشنبه');
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                8,
                                        decoration: BoxDecoration(
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                color: Colors.black45,
                                                offset: Offset(1.0, 3.0),
                                                blurRadius: 5.0,
                                              ),
                                            ],
                                            color: color,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25.0))),
                                        child: Center(
                                          child: Text(
                                            'چهارشنبه',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontFamily: 'Aviny',
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        checkDay(5, 'پنج شنبه');
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                8,
                                        decoration: BoxDecoration(
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                color: Colors.black45,
                                                offset: Offset(1.0, 3.0),
                                                blurRadius: 5.0,
                                              ),
                                            ],
                                            color: color,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25.0))),
                                        child: Center(
                                          child: Text(
                                            'پنج شنبه',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontFamily: 'Aviny',
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  textDirection: TextDirection.rtl,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        checkDay(6, 'جمعه');
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                8,
                                        decoration: BoxDecoration(
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                color: Colors.black45,
                                                offset: Offset(1.0, 3.0),
                                                blurRadius: 5.0,
                                              ),
                                            ],
                                            color: color,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25.0))),
                                        child: Center(
                                          child: Text(
                                            'جمعه',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontFamily: 'Aviny',
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      child: Center(
                        child: Text(
                          'فراموش نکن برنامتو حتمی تا ساعت 11 شب برای مشاورت ارسال کن!',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'Aviny',
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
  }

  getDaysInfo() async {
    var response = await get_Days_Info.get_days_info();
    setState(() {
      day = response['day'];
      date = response['date'];
    });
  }

  checkDay(int dayIndex, String dayTitle) {
    if (dayIndex == numOfDay) {
      flagKhodnevisienable = 0;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => KhodnevisiEnable(numOfDay, dayIndex, dayTitle)));
    } else if (numOfDay - dayIndex == 1) {
      flagKhodnevisienable = 0;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => KhodnevisiEnable(numOfDay, dayIndex, dayTitle)));
    } else if (dayIndex < numOfDay - 1) {
      flagKhodnevisiDisable = 0;
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => khodnevisiDisable(numOfDay, dayIndex, dayTitle)));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  zoodeh()));
    }
  }

  setDay() {
    if (day == 'شنبه') {
      numOfDay = 0;
    } else if (day == 'یکشنبه') {
      numOfDay = 1;
    } else if (day == 'دوشنبه') {
      numOfDay = 2;
    } else if (day == 'سه شنبه') {
      numOfDay = 3;
    } else if (day == 'چهارشنبه') {
      numOfDay = 4;
    } else if (day == 'پنج شنبه') {
      numOfDay = 5;
    } else if (day == 'جمعه') {
      numOfDay = 6;
    }
  }
}
