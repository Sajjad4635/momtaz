import 'package:flutter/material.dart';
import 'package:mmtaz/widgets/EnterPage.dart';
import 'package:mmtaz/PlanningChilds/planningMenu.dart';

class Planning extends StatefulWidget {
  @override
  _PlanningState createState() => _PlanningState();
}

class _PlanningState extends State<Planning> {
  @override
  Widget build(BuildContext context) {
    var myStyle =
    TextStyle(fontSize: 16.0, color: Colors.black, fontFamily: 'vazir');

    var aa = 2;
    if (aa == 1) {
      return Container(
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
                            bottomLeft: Radius.circular(45.0)
                        )
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                    color: Color(0xff00d170),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xffEAEAEA),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(45.0)
                        )
                    ),
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
                              color: Colors.black54
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Enter_page()));
                          },
                          child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(25.0)),
                                color: Color(0xff00d170)
                            ),
                            child: Center(
                              child: Text(
                                'تکمیل پروفایل',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontFamily: 'Aviny',
                                    color: Colors.black54
                                ),
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
    } else if (aa == 2) {
      return planningMenu();
    }
  }
}
