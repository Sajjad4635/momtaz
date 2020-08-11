import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/models/lessonModel.dart';
import 'package:mmtaz/planningOfficeChilds/fechSavadData.dart';
import 'package:mmtaz/planningOfficeChilds/fech_edu_Plan.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

var week = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
var date1 = [
  '5/1',
  '5/8',
  '5/15',
  '5/22',
  '5/29',
  '6/6',
  '6/13',
  '6/20',
  '6/27',
  '7/4'
];
List<Lesson_Model> getep = new List();
String date;
String day;
List<getLessonModle> getSData = [];

class planning_Office extends StatefulWidget {
  @override
  _planning_OfficeState createState() => _planning_OfficeState();
}

class _planning_OfficeState extends State<planning_Office> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    saveData();
  }

  saveData() async {
    var response = await get_Edu_Plan.get_edu_plan();
    getep.clear();
    getep.addAll(response['getLesson']);
    date = response['date'];
    day = response['day'];
    print(getep);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff00d170),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25.0), topLeft: Radius.circular(25.0))),
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
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(45.0))),
                child: Center(
                  child: Text(
                    'برنامه ریزی داشته باش!',
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DaysOfWeek()));
                              },
                              child: Container(
//                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.height / 4,
                                  child: Image(
                                image: new AssetImage('images/Schedule.gif'),
                              )),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Center(
                                child: Text(
                                  'دفتر برنامه ریزی',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Color(0xff00d170),
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
                                          builder: (context) => MyPlans()));
                                },
                                child: Container(
//                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.height / 4,
                                    child: Image(
                                  image: new AssetImage('images/Lastplans.gif'),
                                )),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: Center(
                                  child: Text(
                                    'برنامه های من',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Color(0xff00d170),
                                        fontFamily: 'Aviny'),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  gggg() async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    await shared.remove('myIp_token');
    print('remm');
  }
}

class DaysOfWeek extends StatefulWidget {
  @override
  _DaysOfWeekState createState() => _DaysOfWeekState();
}

class _DaysOfWeekState extends State<DaysOfWeek> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var numOfDay;
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
    var hafte = [
      'شنبه',
      'یکشنبه',
      'دوشنبه',
      'سه شنبه',
      'چهارشنبه',
      'پنج شنبه',
      'جمعه',
    ];

    var hafteNum = [0, 1, 2, 3, 4, 5, 6];

    return
//      getSData.isEmpty?
//        Material(
//          child: Container(
//            child: Center(
//              child: CircularProgressIndicator(),
//            ),
//          ),
//        ):
        new SafeArea(
      child: MaterialApp(
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
                      Icon(Icons.shopping_basket, color: Colors.white),
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
                        color: Color(0xff00d170),
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
                          '99/5/16',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'Aviny', color: Colors.white),
                        ),
                        Text(
                          'پنجشنبه',
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
                  decoration: BoxDecoration(color: Color(0xff00d170)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xffEAEAEA),
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(45.0))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              khodnevisiDisable()));
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  decoration: BoxDecoration(
                                      color: Color(0xff00d170),
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Khodnevisi1(0, 0)));
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  decoration: BoxDecoration(
                                      color: Color(0xff00d170),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  decoration: BoxDecoration(
                                      color: Color(0xff00d170),
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
                                onTap: () {},
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  decoration: BoxDecoration(
                                      color: Color(0xff00d170),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  decoration: BoxDecoration(
                                      color: Color(0xff00d170),
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
                                onTap: () {},
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  decoration: BoxDecoration(
                                      color: Color(0xff00d170),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  decoration: BoxDecoration(
                                      color: Color(0xff00d170),
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
                    'فراموش نکن برنامتو حتمی تا ساعت 9 شب برای مشاورت ارسال کن!',
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
//      home: DefaultTabController(
//        length: 7,
//        child: Scaffold(
//            appBar: GradientAppBar(
//              gradient: LinearGradient(
//                  colors: [Color(0xff102ECC), Color(0xffBFE1F9)]),
//              centerTitle: true,
//              bottom: PreferredSize(
//                  child: TabBar(
//                      isScrollable: true,
//                      unselectedLabelColor: Colors.white.withOpacity(0.3),
//                      indicatorColor: Colors.white,
//                      tabs: [
//                        Tab(
//                          child: Text(
//                            'شنبه',
//                            style: myStyle,
//                          ),
//                        ),
//                        Tab(
//                          child: Text(
//                            'یک شنبه',
//                            style: myStyle,
//                          ),
//                        ),
//                        Tab(
//                          child: Text(
//                            'دو شنبه',
//                            style: myStyle,
//                          ),
//                        ),
//                        Tab(
//                          child: Text(
//                            'سه شنبه',
//                            style: myStyle,
//                          ),
//                        ),
//                        Tab(
//                          child: Text(
//                            'چهار شنبه',
//                            style: myStyle,
//                          ),
//                        ),
//                        Tab(
//                          child: Text(
//                            'پنج شنبه',
//                            style: myStyle,
//                          ),
//                        ),
//                        Tab(
//                          child: Text(
//                            'جمعه',
//                            style: myStyle,
//                          ),
//                        )
//                      ]),
//                  preferredSize: Size.fromHeight(30.0)),
//              actions: <Widget>[
//                Padding(
//                  padding: const EdgeInsets.only(right: 16.0, left: 16.0),
//                  child: Center(
//                    child: Text('${date}'),
//                  ),
//                ),
//              ],
//            ),
//            body: TabBarView(
//              children: <Widget>[
//                khodnevisi(),
//                khodnevisi(),
//                khodnevisi(),
//                khodnevisi(),
//                khodnevisi(),
//                khodnevisi(),
//                khodnevisi(),
//              ],
//            )),
//      ),
      ),
    );
  }

  getSavedData(int numOfDay1, int clickedDay) async {
    var response = await get_Saved_Data.get_saved_data(numOfDay1, clickedDay);
    setState(() {
      getSData.clear();
      getSData.addAll(response['getLesson']);
    });
    print(response['getLesson']);
//    setintwodlist();
  }

  setintwodlist() {
    print(twoDList);
    for (int i = 0; i < getep.length; i++) {
      twoDList[i][0] = getep[i].id;
    }
    print(twoDList);
    for (int i = 0; i < getep.length; i++) {
      if (twoDList[i][0] == getSData[i].l_id) {
        twoDList[i][1] = getSData[i].study_time;
        twoDList[i][2] = getSData[i].test_time;
        twoDList[i][3] = getSData[i].test_count;
      }
    }
    print(twoDList);
  }
}

int row = getep.length;
int col = 4;
var twoDList = List.generate(row, (i) => List(col), growable: false);

int row2 = getep.length;
int col2 = 4;
var twoDList2 = List.generate(row2, (i) => List(col2), growable: false);

class Khodnevisi1 extends StatefulWidget {
  int toDay, clickDay;

  Khodnevisi1(
    this.toDay,
    this.clickDay,
  );

  @override
  _Khodnevisi1State createState() => _Khodnevisi1State(toDay, clickDay);
}

class _Khodnevisi1State extends State<Khodnevisi1> {
  int toDay, clickDay;

  _Khodnevisi1State(
    this.toDay,
    this.clickDay,
  );

  @override
  Widget build(BuildContext context) {
    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;
    return
//      getSData.isEmpty
//          ? Material(
//        child: Container(
//          child: Center(
//            child: CircularProgressIndicator(),
//          ),
//        ),
//      ) :
        SafeArea(
      child: MaterialApp(
        debugShowMaterialGrid: false,
        home: Scaffold(
            resizeToAvoidBottomInset: false,
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
                          color: Color(0xff00d170),
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
                                fontFamily: 'Aviny', color: Colors.white),
                          ),
                          Text(
                            '99/2/14',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'Aviny', color: Colors.white),
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
                          color: Color(0xff00d170),
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
                                    fontFamily: 'Aviny', color: Colors.white),
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
                                    fontFamily: 'Aviny', color: Colors.white),
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
                                    fontFamily: 'Aviny', color: Colors.white),
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
                                    fontFamily: 'Aviny', color: Colors.white),
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
                    flex: 7,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Column(
                          children: <Widget>[
                            Container(
                              decoration:
                                  BoxDecoration(color: Color(0xffEAEAEA)),
                              child: Container(
                                  width: pageWidth - 5.0,
                                  height: pageHeight / 9,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    textDirection: TextDirection.rtl,
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
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
                                        flex: 8,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          reverse: true,
                                          children: <Widget>[
                                            Container(
                                              width: pageWidth / 4,
                                              child: Center(
                                                child: hours(
                                                  id: index,
                                                  n_Dd: 1,
                                                  title: '0',
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3.0,
                                            ),
                                            Container(
                                              width: pageWidth / 4,
                                              child: Center(
                                                child: hoursTest(
                                                  id: index,
                                                  n_Dd: 2,
                                                  title: '0',
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3.0,
                                            ),
                                            Container(
                                              width: pageWidth / 4,
                                              child: Center(
                                                child: numTest(
                                                  id: index,
                                                  n_Dd: 3,
                                                  title: '0',
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 12,
                                right: MediaQuery.of(context).size.width / 12,
                              ),
                              height: 0.5,
                              color: Color(0xff00d170),
                            )
                          ],
                        );
                      },
                    )),
                Expanded(
                  flex: 1,
                  child: Container(
//                  width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Color(0xffEAEAEA)),
                      child: Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 50,
                            bottom: MediaQuery.of(context).size.height / 50),
                        width: MediaQuery.of(context).size.width / 5,
                        decoration: BoxDecoration(
                            color: Color(0xff00d170),
                            borderRadius:
                                BorderRadius.all(Radius.circular(45.0))),
                        child: InkWell(
                          onTap: () {
                            print(twoDList);
//                    sendDataToServer();
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                'تایید',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontFamily: 'Aviny', color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )),
                )
              ],
            )),
      ),
    );
  }

  sendDataToServer() async {
    print(twoDList);
    print('${widget.toDay}');
    print('${widget.clickDay}');
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var token = prefs.getString('myIp_token');
    var response = await http.post(api.siteName + '/api/send_edu', body: {
      "data": twoDList.toString(),
      "token": '${token}',
      "time": (new DateTime.now().millisecondsSinceEpoch / 1000).toString(),
      "toDay": '${widget.toDay}',
      "clickDay": '${widget.clickDay}'
    });
    print(response.statusCode);
  }
}

class hours extends StatefulWidget {
//  hours({Key key}) : super(key: key);
  int id;
  int n_Dd;
  String title;

  hours({Key key, this.id, this.n_Dd, this.title}) : super(key: key);

  @override
  _hoursState createState() => _hoursState(id, n_Dd, title);
}

class _hoursState extends State<hours> {
  int id;
  int n_Dd;
  String title;

  _hoursState(this.id, this.n_Dd, this.title);

  int dropdownValue1 = null;

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Center(
              child: DropdownButton<int>(
                hint: Text(
                  getSData.isEmpty ? '0' : '${widget.title}',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontFamily: 'Aviny',
                      fontSize: 19.0,
                      color: Colors.black54),
                ),
                value: dropdownValue1,
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                underline: SizedBox(),
                onChanged: (int newValue) {
                  setState(() {
                    dropdownValue1 = newValue;
                    sendValue(widget.id, widget.n_Dd);
                  });
                },
                items: <int>[
                  15,
                  30,
                  45,
                  60,
                  75,
                  90,
                  105,
                  120,
                ].map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              ),
            )));
  }

  sendValue(var tit, var nDd) {
    print(dropdownValue1);
    print('${getep[tit].id}');
    print(tit);
    print(nDd);
    setState(() {
      twoDList[tit][nDd] = dropdownValue1;
      twoDList[tit][0] = getep[tit].id;
    });
  }
}

class hoursTest extends StatefulWidget {
//  hours({Key key}) : super(key: key);
  int id;
  int n_Dd;
  String title;

  hoursTest({Key key, this.id, this.n_Dd, this.title}) : super(key: key);

  @override
  _hoursTestState createState() => _hoursTestState(id, n_Dd, title);
}

class _hoursTestState extends State<hoursTest> {
  int id;
  int n_Dd;
  String title;

  _hoursTestState(this.id, this.n_Dd, this.title);

  int dropdownValue1 = null;

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Center(
              child: DropdownButton<int>(
                hint: Text(
                  getSData.isEmpty ? '0' : '${widget.title}',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontFamily: 'Aviny',
                      fontSize: 19.0,
                      color: Colors.black54),
                ),
                value: dropdownValue1,
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                underline: SizedBox(),
                onChanged: (int newValue) {
                  setState(() {
                    dropdownValue1 = newValue;
                    sendValue(widget.id, widget.n_Dd);
                  });
                },
                items: <int>[
                  15,
                  30,
                  45,
                  60,
                  75,
                  90,
                  105,
                  120,
                ].map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              ),
            )));
  }

  sendValue(var tit, var nDd) {
    print(dropdownValue1);
    print('${getep[tit].id}');
    print(tit);
    print(nDd);
    setState(() {
      twoDList[tit][nDd] = dropdownValue1;
      twoDList[tit][0] = getep[tit].id;
    });
  }
}

class numTest extends StatefulWidget {
//  hours({Key key}) : super(key: key);
  int id;
  int n_Dd;
  String title;

  numTest({Key key, this.id, this.n_Dd, this.title}) : super(key: key);

  @override
  _numTestState createState() => _numTestState(id, n_Dd, title);
}

class _numTestState extends State<numTest> {
  int id;
  int n_Dd;
  String title;

  _numTestState(this.id, this.n_Dd, this.title);

  int dropdownValue1 = null;

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Center(
              child: DropdownButton<int>(
                hint: Text(
                  getSData.isEmpty ? '0' : '${widget.title}',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontFamily: 'Aviny',
                      fontSize: 19.0,
                      color: Colors.black54),
                ),
                value: dropdownValue1,
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                underline: SizedBox(),
                onChanged: (int newValue) {
                  setState(() {
                    dropdownValue1 = newValue;
                    sendValue(widget.id, widget.n_Dd);
                  });
                },
                items: <int>[
                  1,
                  2,
                  3,
                  4,
                  5,
                  6,
                  7,
                  8,
                  9,
                  10,
                  11,
                  12,
                  13,
                  14,
                  15,
                  16,
                  17,
                  18,
                  19,
                  20,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  31,
                  32,
                  33,
                  34,
                  35,
                  36,
                  37,
                  38,
                  39,
                  40,
                  41,
                  42,
                  43,
                  44,
                  45,
                  46,
                  47,
                  48,
                  49,
                  50
                ].map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              ),
            )));
  }

  sendValue(var tit, var nDd) {
    print(dropdownValue1);
    print('${getep[tit].id}');
    print(tit);
    print(nDd);
    setState(() {
      twoDList[tit][nDd] = dropdownValue1;
      twoDList[tit][0] = getep[tit].id;
    });
  }
}

class khodnevisiDisable extends StatefulWidget {
  @override
  _khodnevisiDisableState createState() => _khodnevisiDisableState();
}

class _khodnevisiDisableState extends State<khodnevisiDisable> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowMaterialGrid: false,
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
                          color: Color(0xff00d170),
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
                                fontFamily: 'Aviny', color: Colors.white),
                          ),
                          Text(
                            '99/2/14',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'Aviny', color: Colors.white),
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
                          color: Color(0xff00d170),
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
                                    fontFamily: 'Aviny', color: Colors.white),
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
                                    fontFamily: 'Aviny', color: Colors.white),
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
                                    fontFamily: 'Aviny', color: Colors.white),
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
                                    fontFamily: 'Aviny', color: Colors.white),
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
                              color: Color(0xff00d170),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class zoodeh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'امروز هنوز نیومده!!!',
            textDirection: TextDirection.rtl,
          ),
        ),
      ),
    );
  }
}

class MyPlans extends StatefulWidget {
  @override
  _MyPlansState createState() => _MyPlansState();
}

class _MyPlansState extends State<MyPlans> {
  var flag = 1;

  @override
  Widget build(BuildContext context) {
    if (flag == 0) {
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
                          color: Color(0xff00d170),
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
                                      color: Color(0xff00d170),
                                    )),
                                Text(
                                    'هنوز برنامه ای نداری برای گرفتن برنامه وارد بخش (برنامه) شو',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'Aviny',
                                      fontSize: 22.0,
                                      color: Color(0xff00d170),
                                    )),
                                Text('و برنامه مخصوص خودت رو دریافت کن!',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'Aviny',
                                      fontSize: 22.0,
                                      color: Color(0xff00d170),
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
      );
    } else if (flag == 1) {
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
              decoration: BoxDecoration(
                color: Color(0xff00d170)
              ),
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
                            child: Text('همه برنامه هایی که قبلا گرفتی اینجاست!',
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
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xffEAEAEA),
                          borderRadius:
                          BorderRadius.only(topRight: Radius.circular(45.0)),
                        ),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffEAEAEA),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(45.0))),
                            child: GridView.builder(
                              itemCount: week.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 4.0,
                                      mainAxisSpacing: 4.0),
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
//                                    Navigator.push(
//                                        context,
//                                        MaterialPageRoute(
//                                            builder: (context) =>
//                                                pieChartHome()));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff00d170),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Text(
                                            'هفته ' +
                                                '${week[index].toString()}',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                                fontFamily: 'Aviny',
                                                fontSize: 20.0,
                                                color: Color(0xffEAEAEA)),
                                          ),
                                        ),
                                        Center(
                                          child: Text(
                                            '${date1[index].toString()}',
                                            style: TextStyle(
                                                fontFamily: 'Aviny',
                                                fontSize: 20.0,
                                                color: Color(0xffEAEAEA)),
                                          ),
                                        )
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
      );
    }
  }
}
