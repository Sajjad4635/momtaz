import 'package:flutter/material.dart';
import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/models/lessonModel.dart';
import 'package:mmtaz/planningOfficeChilds/fechSavadData.dart';
import 'package:mmtaz/planningOfficeChilds/fech_edu_Plan.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

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
                                        builder: (context) =>
                                            planning_Office()));
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
                                          builder: (context) =>
                                              planning_Office()));
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
        new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.deepPurple, primarySwatch: Colors.deepPurple),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text('${day}'),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text('${date}'),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(
                        top: 0.0, left: 20.0, right: 20.0, bottom: 10.0),
                    child: InkWell(
                      onTap: () {
                        if ((numOfDay - hafteNum[index] == 0) ||
                            (numOfDay - hafteNum[index] == 1)) {
                          print(twoDList);
                          getSavedData(numOfDay, hafteNum[index]);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => new Khodnevisi1(
                                      numOfDay, hafteNum[index])));
                        } else if (hafteNum[index] > numOfDay) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => zoodeh()));
                        } else if (numOfDay - hafteNum[index] >= 2) {
                          get_Saved_Data.get_saved_data(
                              numOfDay, hafteNum[index]);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      new khodnevisiDisable()));
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.width / 7,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            gradient: LinearGradient(
                                colors: [Color(0xff77C9EB), Color(0xff93F8E9)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight)),
                        child: Center(
                          child: Text('${hafte[index]}'),
                        ),
                      ),
                    ),
                  );
                },
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
        MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('وارد کردن ساعات مطالعاتی'),
            centerTitle: true,
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('نام درس'),
                    Text('ساعت مطالعه'),
                    Text('ساعت تست'),
                    Text('تعداد تست'),
                  ],
                ),
              ),
              Expanded(
                  flex: 8,
                  child: ListView.builder(
                    itemCount: getep.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Container(
                            width: pageWidth - 5.0,
                            height: pageHeight / 9,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Center(
                                    child: Text('${getep[index].title}'),
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
                                        width: 120.0,
                                        child: Center(
                                          child: hours(
                                            id: index,
                                            n_Dd: 1,
                                            title: '${twoDList[index][1]}',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Container(
                                        width: 120.0,
                                        child: Center(
                                          child: hoursTest(
                                            id: index,
                                            n_Dd: 2,
                                            title: '${twoDList[index][2]}',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Container(
                                        width: 120.0,
                                        child: Center(
                                          child: numTest(
                                            id: index,
                                            n_Dd: 3,
                                            title: '${twoDList[index][3]}',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      );
                    },
                  )),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    print(twoDList);
                    sendDataToServer();
                  },
                  child: Container(
                    child: Center(
                      child: Text('تایید'),
                    ),
                  ),
                ),
              )
            ],
          )),
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
                border: Border.all(width: 0.5, color: Colors.deepPurple),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Center(
              child: DropdownButton<int>(
                hint: Text(getSData.isEmpty ? '0' : '${widget.title}'),
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
                border: Border.all(width: 0.5, color: Colors.deepPurple),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Center(
              child: DropdownButton<int>(
                hint: Text(getSData.isEmpty ? '0' : '${widget.title}'),
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
                border: Border.all(width: 0.5, color: Colors.deepPurple),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Center(
              child: DropdownButton<int>(
                hint: Text(getSData.isEmpty ? '0' : '${widget.title}'),
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
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
          body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text('نام درس'),
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Expanded(
                    child: Center(
                      child: Text('ساعت مطالعاتی'),
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Expanded(
                    child: Center(
                      child: Text('ساعت تست'),
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Expanded(
                    child: Center(
                      child: Text('تعداد تست'),
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: ListView.builder(
              itemCount: getep.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    height: 70.0,
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        Expanded(
                          child: Center(
                            child: Text('${getep[index].title}'),
                          ),
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Expanded(
                          child: Center(
                            child: Text('75'),
                          ),
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Expanded(
                          child: Center(
                            child: Text('60'),
                          ),
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Expanded(
                          child: Center(
                            child: Text('40'),
                          ),
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      )),
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
