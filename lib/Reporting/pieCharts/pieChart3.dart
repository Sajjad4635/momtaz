import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

var GeneralCourses = [
  'ادبیات',
  'عربی',
  'زبان انگلیسی',
  'تعلیمات دینی',
];

var GeneralNum = [
  '5',
  '3',
  '0',
  '2',
];

var DedicatedCourses = [
  'ریاضیات',
  'فیزیک',
  'شیمی',
];

var DedicatedNum = [
  '12',
  '8',
  '5',
];

var TotalCourses = [
  'ریاضیات',
  'فیزیک',
  'شیمی',
  'ادبیات',
  'عربی',
  'زبان انگلیسی',
  'تعلیمات دینی',
];

var TotalNum = [
  '12',
  '8',
  '5',
  '5',
  '3',
  '0',
  '2',
];

class detail extends StatefulWidget {
  @override
  _detailState createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
                height: 50.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                            gradient: LinearGradient(colors: [
                              Color(0xff5883F1),
                              Color(0xff58E2F1)
                            ])),
                        width: 80.0,
                        child: Center(
                          child: Text('گزارش این هفته'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                )),
            SizedBox(
              height: 7.0,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  gradient: LinearGradient(colors: [
                    Color(0xff3568F4),
                    Color(0xff64D2F3),
                  ])),
              height: pageHeight / 9,
              width: pageWidth - 10.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: Text('ساعت مطالعه'),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('ساعت تست'),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('تعداد تست'),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('مطالعه و تست'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: Text('175'),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('200'),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('80'),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text('375'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: pageHeight / 2,
              child: pie_Chart3(),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: pageHeight / 2,
              child: Row(
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              gradient: LinearGradient(colors: [Color(0xff5896F1), Color(0xff58EBF1)])
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 30.0,
                                child: Center(
                                  child: Text('مجموع ساعات دروس'),
                                ),
                              ),
                              SizedBox(height: 3.0,),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: TotalCourses.length,
                                  itemBuilder: (context, index){
                                    return Card(
                                      child: Row(
                                        textDirection: TextDirection.rtl,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 7,
                                            child: Center(
                                              child: Text('${TotalCourses[index]}'),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Center(
                                              child: Text('${TotalNum[index]}'),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          )
                      )
                  ),
                  SizedBox(width: 3.0,),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                            flex: 5,
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    gradient: LinearGradient(colors: [Color(0xff40F048), Color(0xff81F286)])
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 30.0,
                                      child: Center(
                                        child: Text('ساعات دروس اختصاصی'),
                                      ),
                                    ),
                                    SizedBox(height: 3.0,),
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: DedicatedCourses.length,
                                        itemBuilder: (context, index){
                                          return Card(
                                            child: Row(
                                              textDirection: TextDirection.rtl,
                                              children: <Widget>[
                                                Expanded(
                                                  flex: 7,
                                                  child: Center(
                                                    child: Text('${DedicatedCourses[index]}'),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Center(
                                                    child: Text('${DedicatedNum[index]}'),
                                                  ),
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                )
                            )
                        ),
                        SizedBox(height: 3.0,),
                        Expanded(
                            flex: 5,
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    gradient: LinearGradient(colors: [Color(0xffEA9D18), Color(0xffF9C56A)])
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 30.0,
                                      child: Center(
                                        child: Text('ساعات مطالعه عمومی'),
                                      ),
                                    ),
                                    SizedBox(height: 3.0,),
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: GeneralCourses.length,
                                        itemBuilder: (context, index){
                                          return Card(
                                            child: Row(
                                              textDirection: TextDirection.rtl,
                                              children: <Widget>[
                                                Expanded(
                                                  flex: 7,
                                                  child: Center(
                                                    child: Text('${GeneralCourses[index]}'),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Center(
                                                    child: Text('${GeneralNum[index]}'),
                                                  ),
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class pie_Chart3 extends StatefulWidget {
  @override
  _pie_Chart3State createState() => _pie_Chart3State();
}

class _pie_Chart3State extends State<pie_Chart3> {
  Map<String, double> dataMap3 = Map();
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.deepPurple,
    Colors.deepOrangeAccent,
    Colors.pinkAccent,
  ];

  @override
  void initState() {
    super.initState();
    dataMap3.putIfAbsent("ریاضیات", () => 5);
    dataMap3.putIfAbsent("فیزیک", () => 3);
    dataMap3.putIfAbsent("شیمی", () => 2);
    dataMap3.putIfAbsent("عربی", () => 5);
    dataMap3.putIfAbsent("ادبیات فارسی", () => 3);
    dataMap3.putIfAbsent("دینی", () => 2);
    dataMap3.putIfAbsent("زبان انگلیسی", () => 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
////        title: Text("Pie Chart"),
//      ),
      body: Container(
        child: Center(
            child: PieChart(
              dataMap: dataMap3,
              animationDuration: Duration(milliseconds: 800),
              chartLegendSpacing: 32.0,
              chartRadius: MediaQuery.of(context).size.width / 2.7,
              showChartValuesInPercentage: true,
              showChartValues: true,
              showChartValuesOutside: false,
              chartValueBackgroundColor: Colors.grey[200],
              colorList: colorList,
              showLegends: true,
              legendPosition: LegendPosition.right,
              decimalPlaces: 1,
              showChartValueLabel: true,
              initialAngle: 0,
              chartValueStyle: defaultChartValueStyle.copyWith(
                color: Colors.blueGrey[900].withOpacity(0.9),
              ),
              chartType: ChartType.disc,
            )),
      ),
    );
  }
}
