
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:mmtaz/Reporting/pieCharts/piChart2.dart';
import 'package:mmtaz/Reporting/pieCharts/pieChart.dart';
import 'package:mmtaz/Reporting/pieCharts/pieChart3.dart';
import 'package:shifting_tabbar/shifting_tabbar.dart';

class pieChartHome extends StatefulWidget {
  @override
  _pieChartHomeState createState() => _pieChartHomeState();
}

class _pieChartHomeState extends State<pieChartHome> {
  @override
  Widget build(BuildContext context) {
    var myStyle =
    TextStyle(fontSize: 14.0, color: Colors.white, fontFamily: 'vazir');

    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xff043B61), primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: GradientAppBar(
              title: Text('گزارش هفته'),
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
                            'دروس عمومی',
                            style: myStyle,
                          ),
                        ),
                        Tab(
                          child: Text(
                            'دروس اختصاصی',
                            style: myStyle,
                          ),
                        ),
                        Tab(
                          child: Text(
                            'همه دروس',
                            style: myStyle,
                          ),
                        ),
                      ]),
                  preferredSize: Size.fromHeight(30.0)),
            ),
            body: TabBarView(
              children: <Widget>[
                Pie_Carht1(),
                Pie_Carht2(),
                detail(),
              ],
            )),
      ),
    );
  }
}
