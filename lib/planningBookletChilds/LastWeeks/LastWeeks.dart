import 'package:flutter/material.dart';
import 'package:mmtaz/planningBookletChilds/LastWeeks/LastDaysOfWeek.dart';
import 'package:mmtaz/planningBookletChilds/LastWeeks/LastWeeksModel.dart';
import 'package:mmtaz/planningBookletChilds/LastWeeks/fechLastWeekDetail.dart';
import 'package:mmtaz/widgets/LoadingPage.dart';
import 'package:mmtaz/widgets/Setting.dart';

List<getLastWeeks> LastWeeks = new List();
var flagLastWeeksDetail = 0;
var flagStatus = 1;

class LastWeeksDetail extends StatefulWidget {
  @override
  _LastWeeksDetailState createState() => _LastWeeksDetailState();
}

class _LastWeeksDetailState extends State<LastWeeksDetail> {
  @override
  Widget build(BuildContext context) {
    if (flagStatus == 0) {
      return SafeArea(
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
                          Icon(Icons.shopping_basket, color: color),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              body: Container(
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
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(45.0))),
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text('برای پیشرفت نیاز به برنامه داری!',
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
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: color,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffEAEAEA),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(45.0))),
                            child: Container(
                              child: Center(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('هنوز برنامه ای نداری!',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontFamily: 'Aviny',
                                        fontSize: 22.0,
                                        color: Colors.black54,
                                      )),
                                  Text(
                                      'هنوز برنامه ای نداری برای گرفتن برنامه وارد بخش (برنامه) شو',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontFamily: 'Aviny',
                                        fontSize: 22.0,
                                        color: Colors.black54,
                                      )),
                                  Text('و برنامه مخصوص خودت رو دریافت کن!',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontFamily: 'Aviny',
                                        fontSize: 22.0,
                                        color: Colors.black54,
                                      )),
                                ],
                              )),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ),
      );
    } else if (flagStatus == 1) {
      setState(() {
        if (flagLastWeeksDetail == 0) {
          LastWeeks.clear();
          getLastWeekDetail();
          flagLastWeeksDetail = 1;
        }
      });
      return LastWeeks.isEmpty
          ? LoadingPage()
          : SafeArea(
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Scaffold(
                    body: Container(
                  decoration: BoxDecoration(color: color),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Color(0xffEAEAEA),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(45.0))),
                              child: Row(
                                textDirection: TextDirection.rtl,
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 9,
                                    child: Container(
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                            'همه برنامه هایی که قبلا گرفتی اینجاست!',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              fontFamily: 'Aviny',
                                              color: Colors.white,
                                            )),
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
                                child: GridView.builder(
                                  itemCount: LastWeeks.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 8.0,
                                          mainAxisSpacing: 8.0),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LastDaysOfWeek(
                                                        LastWeeks[index].weekId,
                                                        index)));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: color,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0))),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              child: Center(
                                                child: Text(
                                                  'هفته ' +
                                                      '${LastWeeks[index].weekNumber}',
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  style: TextStyle(
                                                      fontFamily: 'Aviny',
                                                      fontSize: 20.0,
                                                      color: Color(0xffEAEAEA)),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                textDirection:
                                                    TextDirection.rtl,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: <Widget>[
                                                  Container(
                                                    child: Center(
                                                      child: Text(
                                                        'از :',
                                                        textDirection:
                                                            TextDirection.rtl,
                                                        style: TextStyle(
                                                            fontFamily: 'Aviny',
                                                            fontSize: 17,
                                                            color: Color(
                                                                0xffEAEAEA)),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Center(
                                                      child: Text(
                                                        '${LastWeeks[index].startWeekDate}',
                                                        style: TextStyle(
                                                            fontFamily: 'Aviny',
                                                            fontSize: 17,
                                                            color: Color(
                                                                0xffEAEAEA)),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                textDirection:
                                                    TextDirection.rtl,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: <Widget>[
                                                  Container(
                                                    child: Center(
                                                      child: Text(
                                                        'تا :',
                                                        textDirection:
                                                            TextDirection.rtl,
                                                        style: TextStyle(
                                                            fontFamily: 'Aviny',
                                                            fontSize: 17,
                                                            color: Color(
                                                                0xffEAEAEA)),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Center(
                                                      child: Text(
                                                        '${LastWeeks[index].endWeekDate}',
                                                        style: TextStyle(
                                                            fontFamily: 'Aviny',
                                                            fontSize: 17,
                                                            color: Color(
                                                                0xffEAEAEA)),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
              ),
            );
    }
  }

  getLastWeekDetail() async {
    var response = await get_Last_Weeks_Detail.get_last_weeks_detail();
    setState(() {
      LastWeeks.clear();
      LastWeeks.addAll(response['getLastWeeksDetail']);
    });
  }
}
