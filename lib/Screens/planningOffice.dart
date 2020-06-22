import 'package:flutter/material.dart';
import 'package:mmtaz/models/lessonModel.dart';
import 'package:mmtaz/planningOfficeChilds/Weekly_Schedule.dart';
import 'package:mmtaz/planningOfficeChilds/fech_edu_Plan.dart';
import 'package:mmtaz/planningOfficeChilds/khodnevisi.dart';

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

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Khodnevisi(getep, getep.length)));
                        }else if(hafteNum[index] < numOfDay){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => zoodeh()));
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
}
