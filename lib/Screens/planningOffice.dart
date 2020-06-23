import 'package:flutter/material.dart';
import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/models/lessonModel.dart';
import 'package:mmtaz/planningOfficeChilds/Weekly_Schedule.dart';
import 'package:mmtaz/planningOfficeChilds/fech_edu_Plan.dart';
import 'package:mmtaz/planningOfficeChilds/khodnevisi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

List<Lesson_Model> getep = new List();
String date;
String day;

class planning_Office extends StatefulWidget {
  @override
  _planning_OfficeState createState() => _planning_OfficeState();
}

class _planning_OfficeState extends State<planning_Office> {
  @override
  Widget build(BuildContext context) {
    var aa = 2;
    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
        home: Scaffold(
      body: Container(
        height: pageHeight,
        width: pageWidth,
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
//                gggg();
                sendDataToServer();
              },
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/3333.jpg"),
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
                            top: 100.0, right: 80.0, left: 80.0, bottom: 100.0),
                        color: Colors.black.withOpacity(0.3),
                        child: Center(
                          child: Text(
                            'دفتر برنامه ریزی',
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
                if (aa == 1) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Weekly_Schedule()));
                }
                if (aa == 2) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Weekly_Schedule()));
                }
              },
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/55555.webp"),
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
                            top: 100.0, right: 80.0, left: 80.0, bottom: 100.0),
                        color: Colors.black.withOpacity(0.3),
                        child: Center(
                          child: Text(
                            'برنامه این هفته من',
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
    ));
  }

  sendDataToServer() async {
    var response = await get_Edu_Plan.get_edu_plan();
    setState(() {
      getep.addAll(response['getLesson']);
      date = response['date'];
      day = response['day'];
    });

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DaysOfWeek()));
  }

  gggg() async{
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

    return MaterialApp(
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
                        if (hafteNum[index] == numOfDay) {
                          sendToken(numOfDay, hafteNum[index]);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => new Khodnevisi1(getep.length)));
                        }else if(hafteNum[index] > numOfDay){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => zoodeh()));
                        }else if(hafteNum[index] < numOfDay){
                          sendToken(numOfDay, hafteNum[index]);
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.width / 7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
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

  sendToken(int numOfDay1, int clickedDay) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var token = prefs.getString('myIp_token');

//    print('${numOfDay1}');
//    print('${clickedDay}');
//    print(token);
    var res = await http.post(api.siteName + '/api/get_edu', body: {
      "toDay": '${numOfDay1}',
      "clickDay": '${clickedDay}',
      "token": '${token}'
    });
//    print(res.statusCode);
//    print(res.body);
  }
}

int row = getep.length;
int col = 4;
var twoDList = List.generate(row, (i) => List(col), growable: false);
class Khodnevisi1 extends StatefulWidget {
  int len;

  Khodnevisi1(this.len);

  @override
  _Khodnevisi1State createState() => _Khodnevisi1State(len);
}

class _Khodnevisi1State extends State<Khodnevisi1> {
  int len;

  _Khodnevisi1State(this.len);

  @override
  Widget build(BuildContext context) {
    var pageHeight = MediaQuery.of(context).size.height;
    var pageWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
          body: Column(
            children: <Widget>[
              Expanded(
                  flex: 9,
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
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Container(
                                        width: 120.0,
                                        child: Center(
                                          child: hours(
                                            id: index,
                                            n_Dd: 2,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Container(
                                        width: 120.0,
                                        child: Center(
                                          child: hours(
                                            id: index,
                                            n_Dd: 3,
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
    for (int i = 0; i < getep.length; i++) {
      twoDList[i][0] = getep[i].id;
    }
    print(twoDList);
    var response =
    await http.post('http://192.168.1.103:8080/api/send_edu', body: {
      "data": twoDList.toString(),
      "token": '888;27',
      "time": (new DateTime.now().millisecondsSinceEpoch / 1000).toString()
    });
    print(response.statusCode);
    print(response.body);



  }
}

class hours extends StatefulWidget {
//  hours({Key key}) : super(key: key);
  int id;
  int n_Dd;

  hours({Key key, this.id, this.n_Dd}) : super(key: key);

  @override
  _hoursState createState() => _hoursState(id, n_Dd);
}

class _hoursState extends State<hours> {
  int id;
  int n_Dd;

  _hoursState(this.id, this.n_Dd);

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
                hint: Text('ساعت مطالعه'),
                value: dropdownValue1,
//        icon: Icon(Icons.arrow_downward),
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