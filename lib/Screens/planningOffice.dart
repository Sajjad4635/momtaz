import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/models/lessonModel.dart';
import 'package:mmtaz/planningOfficeChilds/fechSavadData.dart';
import 'package:mmtaz/planningOfficeChilds/fechplenningnotebook.dart';
import 'package:mmtaz/planningOfficeChilds/planningnotebookModel.dart';
import 'package:mmtaz/widgets/Setting.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

var week = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
List<Lesson_Model> getep = new List();
var date;
var day;
List<getLessonModle> getSData = [];
List<getKhodnevisiInfo> getKhodnevisiDetails = [];

var LessonsD = List.generate(7, (i) => List(5), growable: false);

class planning_Office extends StatefulWidget {
  @override
  _planning_OfficeState createState() => _planning_OfficeState();
}

class _planning_OfficeState extends State<planning_Office> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25.0), topLeft: Radius.circular(25.0))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xffEAEAEA)),
              child: Container(
                decoration: BoxDecoration(
                    color: color,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(45.0))),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'برنامه ریزی داشته باش!',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(color: Colors.white, fontFamily: 'Aviny'),
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
                                image: new AssetImage('images/Schedule-amico.png'),
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
                                          builder: (context) => MyPlans()));
                                },
                                child: Container(
//                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.height / 4,
                                    child: Image(
                                  image: new AssetImage('images/Documents-amico.png'),
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
                                        color: color,
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
    setState(() {
      getDaysInfo();
    });
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
                  decoration: BoxDecoration(color: color),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
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
                                onTap: () {},
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
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
                                onTap: () {},
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
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

  getDaysInfo() async{
    var response = await get_Days_Info.get_days_info();
    setState(() {
      day = response['day'];
      date = response['date'];
    });
  }
}

int row = getep.length;
int col = 4;
var twoDList = List.generate(row, (i) => List(col), growable: false);

int row2 = getep.length;
int col2 = 4;
var twoDList2 = List.generate(row2, (i) => List(col2), growable: false);
DateTime h_Test = DateTime(0);
DateTime h_Read = DateTime(0);

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
    
    setState(() {
      getKhodnevisiDetail();
    });
    
    LessonsD[0][0] = 'ریاضی';
    LessonsD[1][0] = 'فیزیک';
    LessonsD[2][0] = 'شیمی';
    LessonsD[3][0] = 'ادبیات';
    LessonsD[4][0] = 'عربی';
    LessonsD[5][0] = 'انگلیسی';
    LessonsD[6][0] = 'دین و زندگی';

    LessonsD[0][1] = 0;
    LessonsD[1][1] = 1;
    LessonsD[2][1] = 2;
    LessonsD[3][1] = 3;
    LessonsD[4][1] = 4;
    LessonsD[5][1] = 5;
    LessonsD[6][1] = 6;
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
        debugShowCheckedModeBanner: false,
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
                                fontFamily: 'Aviny', color: Colors.white),
                          ),
                          Text(
                            '99/2/13',
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
                Container(
                    child: Center(
                  child: Text(
                    'برای تغییر دادن هر آیتم روش کلیک کن!',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontFamily: 'Aviny',
                        color: Colors.black54,
                        fontSize: 18.0),
                  ),
                )),
                Expanded(
                    flex: 7,
                    child: Container(
                      child: ListView.builder(
                        itemCount: LessonsD.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: <Widget>[
                              Container(
                                decoration:
                                    BoxDecoration(color: Color(0xffEAEAEA)),
                                child: Container(
                                    padding: EdgeInsets.all(0.0),
                                    margin: EdgeInsets.all(0.0),
                                    width: pageWidth - 5.0,
                                    height: pageHeight / 9,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      textDirection: TextDirection.rtl,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              '${LessonsD[index][0]}',
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
                                              InkWell(
                                                onTap: () {
                                                  H_Read(index);
                                                },
                                                child: Container(
                                                  width: pageWidth / 4,
                                                  child: Center(
                                                      child: Text(LessonsD[
                                                                  index][2] ==
                                                              null
                                                          ? '0:00'
                                                          : '${LessonsD[index][2]}')),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 3.0,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  H_Test(index);
                                                },
                                                child: Container(
                                                  width: pageWidth / 4,
                                                  child: Center(
                                                      child: Text(LessonsD[
                                                                  index][3] ==
                                                              null
                                                          ? '0:00'
                                                          : '${LessonsD[index][3]}')),
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
                                                    title: LessonsD[index][4] ==
                                                            null
                                                        ? '0'
                                                        : '${LessonsD[index][4]}',
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
                                color: color,
                              )
                            ],
                          );
                        },
                      ),
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
                            color: color,
                            borderRadius:
                                BorderRadius.all(Radius.circular(45.0))),
                        child: InkWell(
                          onTap: () {
                            print(LessonsD);
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

  H_Read(int id) {
    return showDialog(
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
                borderRadius: BorderRadius.circular(10.0),
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
                // To make the card compact
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'ساعت',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'Aviny',
                            color: color,
                            fontSize: 25.0,
                          ),
                        ),
                        Text(
                          'دقیقه',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'Aviny',
                            color: color,
                            fontSize: 25.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xffeaeaea),
                    child: Center(
                      child: TimePickerSpinner(
                        time: DateTime(0),
                        is24HourMode: true,
                        normalTextStyle:
                            TextStyle(fontSize: 24, color: Colors.black54),
                        highlightedTextStyle:
                            TextStyle(fontSize: 24, color: color),
                        spacing: 50,
                        itemHeight: 80,
                        isForce2Digits: true,
                        onTimeChange: (time) {
                          setState(() {
                            h_Read = time;
                          });
                        },
                      ),
                    ),
                  ),
                  InkWell(
                      child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 50,
                        bottom: MediaQuery.of(context).size.height / 50),
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.all(Radius.circular(45.0))),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          LessonsD[id][2] =
                              '${h_Read.hour}' + ':' + '${h_Read.minute}';
                        });
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'تایید',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'Aviny',
                                fontSize: 17.0,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ))
                ],
              ),
            ),
          );
        });
  }

  H_Test(int id) {
    return showDialog(
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
                borderRadius: BorderRadius.circular(10.0),
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
                // To make the card compact
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'ساعت',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'Aviny',
                            color: color,
                            fontSize: 25.0,
                          ),
                        ),
                        Text(
                          'دقیقه',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'Aviny',
                            color: color,
                            fontSize: 25.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xffeaeaea),
                    child: Center(
                      child: TimePickerSpinner(
                        time: DateTime(0),
                        is24HourMode: true,
                        normalTextStyle:
                            TextStyle(fontSize: 24, color: Colors.black54),
                        highlightedTextStyle:
                            TextStyle(fontSize: 24, color: color),
                        spacing: 50,
                        itemHeight: 80,
                        isForce2Digits: true,
                        onTimeChange: (time) {
                          setState(() {
                            h_Test = time;
                          });
                        },
                      ),
                    ),
                  ),
                  InkWell(
                      child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 50,
                        bottom: MediaQuery.of(context).size.height / 50),
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.all(Radius.circular(45.0))),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          LessonsD[id][3] =
                              '${h_Test.hour}' + ':' + '${h_Test.minute}';
                        });
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'تایید',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: 'Aviny',
                                fontSize: 17.0,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ))
                ],
              ),
            ),
          );
        });
  }

  getKhodnevisiDetail() async{
    var response = await get_Khodnevisi_Info.get_khodnevisi_info();
    setState(() {
      getKhodnevisiDetail().addAll(
          response['getLessonsDetail']);
    });
  }
}

class numTest extends StatefulWidget {
//  hours({Key key}) : super(key: key);
  int id;
  String title;

  numTest({Key key, this.id, this.title}) : super(key: key);

  @override
  _numTestState createState() => _numTestState(id, title);
}

class _numTestState extends State<numTest> {
  int id;
  String title;

  _numTestState(this.id, this.title);

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
                  widget.title,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontFamily: 'Aviny',
                      fontSize: 19.0,
                      color: Colors.black54),
                ),
                value: LessonsD[id][4],
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.black54),
                underline: SizedBox(),
                onChanged: (int newValue) {
                  setState(() {
                    LessonsD[id][4] = newValue;
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
                  50,
                  50,
                  51,
                  52,
                  53,
                  54,
                  55,
                  56,
                  57,
                  58,
                  59,
                  60,
                  61,
                  62,
                  63,
                  64,
                  65,
                  66,
                  67,
                  68,
                  69,
                  70,
                  71,
                  72,
                  73,
                  74,
                  75,
                  76,
                  77,
                  78,
                  79,
                  80,
                  81,
                  82,
                  83,
                  84,
                  85,
                  86,
                  87,
                  88,
                  89,
                  90,
                  91,
                  92,
                  93,
                  94,
                  95,
                  96,
                  97,
                  98,
                  99,
                  100,
                  101,
                  102,
                  103,
                  104,
                  105,
                  106,
                  107,
                  108,
                  109,
                  110,
                  111,
                  112,
                  113,
                  114,
                  115,
                  116,
                  117,
                  118,
                  119,
                  120,
                  121,
                  122,
                  123,
                  124,
                  125,
                  126,
                  127,
                  128,
                  129,
                  130,
                  131,
                  132,
                  133,
                  134,
                  135,
                  136,
                  137,
                  138,
                  139,
                  140,
                  141,
                  142,
                  143,
                  144,
                  145,
                  146,
                  147,
                  148,
                  149,
                  150,
                  150,
                  151,
                  152,
                  153,
                  154,
                  155,
                  156,
                  157,
                  158,
                  159,
                  160,
                  161,
                  162,
                  163,
                  164,
                  165,
                  166,
                  167,
                  168,
                  169,
                  170,
                  171,
                  172,
                  173,
                  174,
                  175,
                  176,
                  177,
                  178,
                  179,
                  180,
                  181,
                  182,
                  183,
                  184,
                  185,
                  186,
                  187,
                  188,
                  189,
                  190,
                  191,
                  192,
                  193,
                  194,
                  195,
                  196,
                  197,
                  198,
                  199,
                  200,
                  201,
                  202,
                  203,
                  204,
                  205,
                  206,
                  207,
                  208,
                  209,
                  210,
                  211,
                  212,
                  213,
                  214,
                  215,
                  216,
                  217,
                  218,
                  219,
                  220,
                  221,
                  222,
                  223,
                  224,
                  225,
                  226,
                  227,
                  228,
                  229,
                  230,
                  231,
                  232,
                  233,
                  234,
                  235,
                  236,
                  237,
                  238,
                  239,
                  240,
                  241,
                  242,
                  243,
                  244,
                  245,
                  246,
                  247,
                  248,
                  249,
                  250,
                  250,
                  251,
                  252,
                  253,
                  254,
                  255,
                  256,
                  257,
                  258,
                  259,
                  260,
                  261,
                  262,
                  263,
                  264,
                  265,
                  266,
                  267,
                  268,
                  269,
                  270,
                  271,
                  272,
                  273,
                  274,
                  275,
                  276,
                  277,
                  278,
                  279,
                  280,
                  281,
                  282,
                  283,
                  284,
                  285,
                  286,
                  287,
                  288,
                  289,
                  290,
                  291,
                  292,
                  293,
                  294,
                  295,
                  296,
                  297,
                  298,
                  299,
                  300
                ].map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              ),
            )));
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
                              color: color,
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
                                      color: color,
                                    )),
                                Text(
                                    'هنوز برنامه ای نداری برای گرفتن برنامه وارد بخش (برنامه) شو',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'Aviny',
                                      fontSize: 22.0,
                                      color: color,
                                    )),
                                Text('و برنامه مخصوص خودت رو دریافت کن!',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'Aviny',
                                      fontSize: 22.0,
                                      color: color,
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
                          Icon(Icons.shopping_basket, color: Colors.white),
                        ],
                      ),
                    )
                  ],
                ),
              ),
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
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child:
                                  Text('همه برنامه هایی که قبلا گرفتی اینجاست!',
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
//                                                myPlan()));
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
                                              '${week[index].toString()}',
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
        ),
      );
    }
  }
}

class Zoodeh extends StatefulWidget {
  @override
  _ZoodehState createState() => _ZoodehState();
}

class _ZoodehState extends State<Zoodeh> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: Center(
              child: Text(
                'این روز هنوز نیومده!!!',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontFamily: 'Aviny', fontSize: 20.0, color: color),
              ),
            ),
          ),
        ));
  }
}
