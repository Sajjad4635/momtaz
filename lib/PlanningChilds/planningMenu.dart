import 'package:flutter/material.dart';
import 'package:mmtaz/PlanningChilds/ReadyWeeklySchedule.dart';
import 'package:mmtaz/widgets/Setting.dart';

class planningMenu extends StatefulWidget {
  @override
  _planningMenuState createState() => _planningMenuState();
}

class _planningMenuState extends State<planningMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color,
//          color: Color(0xffEAEAEA),
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
                    'با برنامه درس بخون!',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
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
                                        builder: (context) => barname_amade()));
                              },
                              child: Container(
//                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.height / 4,
                                  child: Image(
                                image:
                                    new AssetImage('images/Marketlaunch-pana.png'),
                              )),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Center(
                                child: Text(
                                  'دریافت سریع برنامه',
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
                                        builder: (context) =>
                                            barname_moshaver()));
                              },
                              child: Container(
//                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.height / 4,
                                  child: Image(
                                image: new AssetImage('images/Visualdata-pana.png'),
                              )),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Center(
                                child: Text(
                                  'دریافت برنامه از مشاور',
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
