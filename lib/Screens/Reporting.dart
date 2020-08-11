import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmtaz/Reporting/pieChartMenu.dart';

class Reporting extends StatefulWidget {
  @override
  _ReportingState createState() => _ReportingState();
}

class _ReportingState extends State<Reporting> {
  @override
  Widget build(BuildContext context) {
    var week = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    var date = [
      '5/1',
      '5/8',
      '5/15',
      '5/22',
      '5/29',
      '6/6',
      '6/13',
      '6/20',
      '6/27',
      '7/4'
    ];
    return Container(
        child: Column(children: <Widget>[
      Expanded(
        flex: 1,
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xff00d170),
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(45.0))),
          child: Container(
            child: Center(
              child: Text(
                'مسیر پیشرفتت رو رصد کن!',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: 25.0, color: Colors.white, fontFamily: 'Aviny'),
              ),
            ),
          ),
        ),
      ),
      Expanded(
        flex: 9,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff00d170),
          ),
          child: Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
              decoration: BoxDecoration(
                color: Color(0xffEAEAEA),
                borderRadius:
                    BorderRadius.only(topRight: Radius.circular(45.0)),
              ),
              child: GridView.builder(
                itemCount: week.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => pieChartHome()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff00d170),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text('هفته ' + '${week[index].toString()}',
                            textDirection: TextDirection.rtl,
                              style: TextStyle(
                              fontFamily: 'Aviny',
                              fontSize: 20.0,
                              color: Color(0xffEAEAEA)
                            ),),
                          ),
                          Center(
                            child: Text('${date[index].toString()}',
                              style: TextStyle(
                                  fontFamily: 'Aviny',
                                  fontSize: 20.0,
                                  color: Color(0xffEAEAEA)
                              ),),
                          )
                        ],
                      ),
                    ),
                  );
                },
              )),
        ),
      ),
    ]));
  }
}
