import 'package:flutter/material.dart';
import 'package:mmtaz/Reporting/charts.dart';

class pieChartHome extends StatefulWidget {
  @override
  _pieChartHomeState createState() => _pieChartHomeState();
}

class _pieChartHomeState extends State<pieChartHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            MediaQuery.of(context).size.height / 8,
          ),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: Color(0xff00d170),
            actions: <Widget>[
              Container(
                decoration: BoxDecoration(color: Color(0xff00d170)),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 40),
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
                            'ممتاز',
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
                    Icon(Icons.shopping_basket, color: Colors.white),
                  ],
                ),
              )
            ],
          ),
        ),
        body: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(0.0),
                  child: TabBar(indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xff00d170)
                            )
                          )
//                          color: Color(0xff00d170)
                          ),
                      tabs: [
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45.0),
//                                border: Border.all(
//                                    color: Color(0xff00d170), width: 1)
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "عمومی",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'Aviny',
                                  color: Color(0xff00d170),
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
//                                border: Border.all(
//                                    color: Color(0xff00d170), width: 1)
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "اختصاصی",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'Aviny',
                                  color: Color(0xff00d170),
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
//                                border: Border.all(
//                                    color: Color(0xff00d170), width: 1)
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "کل دروس",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontFamily: 'Aviny',
                                  color: Color(0xff00d170),
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              body: TabBarView(children: [
                Pie_chart_general(),
                Pie_chart_dedicated(),
                Pie_chart_totalLessons()
              ]),
            )),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
