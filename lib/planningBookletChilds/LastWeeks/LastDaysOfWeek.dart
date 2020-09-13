import 'package:flutter/material.dart';
import 'package:mmtaz/planningBookletChilds/LastWeeks/visitLastStudyHours.dart';
import 'package:mmtaz/widgets/Setting.dart';



class LastDaysOfWeek extends StatefulWidget {

  var weekId, clickDay;


  LastDaysOfWeek(this.weekId, this.clickDay);

  @override
  _LastDaysOfWeekState createState() => _LastDaysOfWeekState(weekId, clickDay);
}

class _LastDaysOfWeekState extends State<LastDaysOfWeek> {
  var weekId, clickDay;

  _LastDaysOfWeekState(this.weekId, this.clickDay);

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_forward, color: Colors.white,),
                          ),
                        ),
                        Expanded(
                          flex: 9,
                          child: Container(
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                'ساعات مطالعاتی روزهای قبل رو اینجا ببین!',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontFamily: 'Aviny', color: Colors.white),
                              ),
                            ),
                          ),
                        )
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
                                  checkDay(widget.weekId, 0, 'شنبه');
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
                                  checkDay(widget.weekId, 1, 'یکشنبه');
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
                                  checkDay(widget.weekId, 2, 'دوشنبه');
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
                                  checkDay(widget.weekId, 3, 'سه شنبه');
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
                                  checkDay(widget.weekId, 4, 'چهارشنبه');
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
                                  checkDay(widget.weekId, 5, 'پنج شنبه');
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
                                  checkDay(widget.weekId, 6, 'جمعه');
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
            ],
          ),
        ),
      );
  }
  checkDay(int weekId, int dayIndex, String dayTitle) {
    flagLastDaysOfWeek = 0;
    Navigator.push(context, MaterialPageRoute(builder: (context) => LastStudyHours(weekId, dayIndex, dayTitle)));
  }

}