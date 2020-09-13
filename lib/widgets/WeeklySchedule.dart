import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/Setting.dart';
import 'package:mmtaz/widgets/Wallet.dart';
import 'package:mmtaz/widgets/WeeklyScheduleChilds/WeeklyScheduleModel.dart';
import 'package:mmtaz/widgets/WeeklyScheduleChilds/fechWeeklySchedule.dart';
import 'package:mmtaz/widgets/zangHa.dart';

var nullParts = [
  'زنگ اول',
  'زنگ دوم',
  'زنگ سوم',
  'زنگ چهارم',
  'زنگ پنجم',
];
List<getLessons> lessons = new List();
List<getWeeklySchedule> weeklyScheduleDetail = new List();
String dropdownValue;
var flagWeeklySchedule = 0;

class WeeklySchedule extends StatefulWidget {
  @override
  _WeeklyScheduleState createState() => _WeeklyScheduleState();
}

class _WeeklyScheduleState extends State<WeeklySchedule> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      if (flagWeeklySchedule == 0) {
        lessons.clear();
        weeklyScheduleDetail.clear();
        getWeeklyScheduleDetail();
        flagWeeklySchedule = 1;
      }
    });

    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;

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
                  decoration: BoxDecoration(
                    color: color,
                  ),
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
                              'برنامه هفتگی',
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => wallet(),
                              ));
                        },
                        child: Icon(Icons.shopping_basket, color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          body: Container(
            color: Color(0xffEAEAEA),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(color: Color(0xffEAEAEA)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45.0),
                              bottomRight: Radius.circular(45.0))),
                      child: Center(
                        child: Text(
                          'برنامه ریزی تحصیلی داشته باش!',
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
                  flex: 8,
                  child: Container(
                    padding: EdgeInsets.all(pageWidth/30.0),
                    child: ListView.builder(
                      itemCount: weeklyScheduleDetail.length,
                      itemBuilder: (context, dayIndex){
                        return Container(
                            margin: EdgeInsets.only(
                                bottom: pageHeight/40.0
                            ),
                            padding: EdgeInsets.only(left: pageWidth / 20),
                            width: pageWidth - 15,
                            height: pageHeight / 8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(45.0)),
//                      border: Border.all(
//                        width: 0.5,
//                        color: Colors.black,
//                      ),
                            ),
                            child: Row(
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: color,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(45.0),
                                          bottomRight: Radius.circular(45.0)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        weeklyScheduleDetail[dayIndex].day == 0
                                        ? 'شنبه'
                                        : weeklyScheduleDetail[dayIndex].day == 1
                                            ? 'یک شنبه'
                                            : weeklyScheduleDetail[dayIndex].day == 2
                                            ? 'دوشنبه'
                                            : weeklyScheduleDetail[dayIndex].day == 3
                                            ? 'سه شنبه'
                                            : weeklyScheduleDetail[dayIndex].day == 4
                                            ? 'چهارشنبه'
                                            : '${weeklyScheduleDetail[dayIndex].day}',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.white,
                                            fontFamily: 'Aviny'),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        top: pageHeight / 50,
                                        bottom: pageHeight / 50),
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      reverse: true,
                                      itemCount: 5,
                                      itemBuilder: (context, partIndex) {
                                        return InkWell(
                                          onTap: () {
                                            print(dayIndex);
                                            print(partIndex);
                                            chooseLesson(dayIndex, partIndex);
                                          },
                                          child: Container(
                                            width: pageWidth / 5,
                                            child: Center(
                                              child: Text(weeklyScheduleDetail[
                                              partIndex]
                                                  .part ==
                                                  null
                                                  ? '${nullParts[partIndex]}'
                                                  : '${weeklyScheduleDetail[partIndex].part}'),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ));
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: pageWidth / 5,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 50,
                        bottom: MediaQuery.of(context).size.height / 50),
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.all(Radius.circular(45.0))),
                    child: InkWell(
                      onTap: () {},
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
                  ),
                )
              ],
            ),
          )),
    );
  }

  getWeeklyScheduleDetail() async {
    var response = await get_Weekly_Schedule.get_weekly_schedule();
    setState(() {
      lessons.addAll(response['getLessons']);
      weeklyScheduleDetail.addAll(response['getWeeklySchedule']);
    });
  }

  chooseLesson(dayIndex, partIndex) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            //this right here
            child: Container(
              padding: EdgeInsets.all(15.0),
              decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15.0),
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
                  Expanded (
                    flex: 1,
                    child: Container(
                      child: Center(
                        child: Text(
                          'یک درس رو انتخاب کن!',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'Aviny', color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(

                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
