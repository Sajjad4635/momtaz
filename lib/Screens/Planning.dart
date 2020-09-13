import 'package:flutter/material.dart';
import 'package:mmtaz/PlanningChilds/fechDataPlanning.dart';
import 'package:mmtaz/Screens/HomePage.dart';
import 'package:mmtaz/global/globalVariables.dart';
import 'package:mmtaz/widgets/EnterPage.dart';
import 'package:mmtaz/PlanningChilds/planningMenu.dart';
import 'package:mmtaz/widgets/LoadingPage.dart';
import 'package:mmtaz/widgets/Setting.dart';

var flagGetStudentStatus = 0;

class Planning extends StatefulWidget {
  @override
  _PlanningState createState() => _PlanningState();
}

class _PlanningState extends State<Planning> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      if (flagGetStudentStatus == 0) {
        getStudentStatus();
        flagGetStudentStatus = 1;
      }
    });

    if (studentStatus == 2) {
      return studentStatus == null
      ? CircularProgressIndicator()
      : Container(
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
                        borderRadius:
                        BorderRadius.only(topRight: Radius.circular(45.0))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'برای دریافت برنامه پروفایل خود را تکمیل کنید!',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'Aviny',
                              fontSize: 25.0,
                              color: color),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Enter_page()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.height / 12,
                            decoration: BoxDecoration(
                              border: Border.all(color: color),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                'تکمیل پروفایل',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontFamily: 'Aviny',
                                    fontSize: 18.0,
                                    color: color),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    } else if (studentStatus == 3) {
      return studentStatus == null
      ? LoadingPage()
      : planningMenu();
    }
  }

  getStudentStatus() async {
    var response = await get_Student_Status.get_student_status();
    setState(() {
      studentStatus = response['studentStatus'];
    });
  }
}
