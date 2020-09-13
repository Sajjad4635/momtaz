import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmtaz/models/lessonModel.dart';
import 'package:mmtaz/planningBookletChilds/LastWeeks/LastWeeks.dart';
import 'file:///E:/flutter%20projects/todo/mmtaz/lib/planningBookletChilds/PlanningNoteBook/daysOfWeek.dart';
import 'package:mmtaz/widgets/Setting.dart';
import 'package:shared_preferences/shared_preferences.dart';


List<Lesson_Model> getep = new List();
var flagKhodnevisidisable = 0;

class planningBooklet extends StatefulWidget {
  @override
  _planningBookletState createState() => _planningBookletState();
}

class _planningBookletState extends State<planningBooklet> {
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
                                          builder: (context) => LastWeeksDetail()));
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
  }


}



int row = getep.length;
int col = 4;
var twoDList = List.generate(row, (i) => List(col), growable: false);

int row2 = getep.length;
int col2 = 4;
var twoDList2 = List.generate(row2, (i) => List(col2), growable: false);