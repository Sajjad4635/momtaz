import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mmtaz/models/api.dart';
import 'package:mmtaz/models/lessonModel.dart';
import 'package:mmtaz/planningOfficeChilds/Weekly_Schedule.dart';
import 'package:http/http.dart' as http;
import 'package:mmtaz/planningOfficeChilds/fech_edu_Plan.dart';
import 'package:mmtaz/planningOfficeChilds/khodnevisi.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:mmtaz/widgets/WeeklySchedule.dart';

List<Lesson_Model> getep = [];
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
                print('11111111111');
                sendDataToServer();
                print('22222222222');
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
    print('333333333');
    var response = await get_Edu_Plan.get_edu_plan();
    print('444444444444');
    setState(() {
      print('555555555555');
      getep.addAll(response['getLesson']);
      date = response['date'];
      day = response['day'];
    });

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DaysOfWeek()));
  }
}

class DaysOfWeek extends StatefulWidget {
  @override
  _DaysOfWeekState createState() => _DaysOfWeekState();
}

class _DaysOfWeekState extends State<DaysOfWeek> {
  @override
  Widget build(BuildContext context) {
    var myStyle =
        TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'vazir');

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.deepPurple, primarySwatch: Colors.deepPurple),
      home: DefaultTabController(
        length: 7,
        child: Scaffold(
            appBar: GradientAppBar(
              gradient: LinearGradient(
                  colors: [Color(0xff102ECC), Color(0xffBFE1F9)]),
              centerTitle: true,
              bottom: PreferredSize(
                  child: TabBar(
                      isScrollable: true,
                      unselectedLabelColor: Colors.white.withOpacity(0.3),
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(
                          child: Text(
                            'شنبه',
                            style: myStyle,
                          ),
                        ),
                        Tab(
                          child: Text(
                            'یک شنبه',
                            style: myStyle,
                          ),
                        ),
                        Tab(
                          child: Text(
                            'دوشنبه',
                            style: myStyle,
                          ),
                        ),
                        Tab(
                          child: Text(
                            'سه شنبه',
                            style: myStyle,
                          ),
                        ),
                        Tab(
                          child: Text(
                            'چهارشنبه',
                            style: myStyle,
                          ),
                        ),
                        Tab(
                          child: Text(
                            'پنج شنبه',
                            style: myStyle,
                          ),
                        ),
                        Tab(
                          child: Text(
                            'جمعه',
                            style: myStyle,
                          ),
                        )
                      ]),
                  preferredSize: Size.fromHeight(30.0)),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                  child: Center(
                    child: Text('${date}'),
                  ),
                ),
              ],
            ),
            body: TabBarView(
              children: <Widget>[
                khodnevisiDisable(),
                khodnevisi(),
                khodnevisi(),
                zoodeh(),
                zoodeh(),
                zoodeh(),
                zoodeh(),
              ],
            )),
      ),
    );
  }
}
