import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Pie_Carht1 extends StatefulWidget {
  @override
  _Pie_Carht1State createState() => _Pie_Carht1State();
}

class _Pie_Carht1State extends State<Pie_Carht1> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 7,
            child: pie_Chart1(),
          ),
          Expanded(flex: 3, child: TotalTable1())
        ],
      ),
    );
  }
}

class pie_Chart1 extends StatefulWidget {
  @override
  _pie_Chart1State createState() => _pie_Chart1State();
}

class _pie_Chart1State extends State<pie_Chart1> {
  bool toggle = false;
  Map<String, double> dataMap1 = Map();
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  @override
  void initState() {
    super.initState();
    dataMap1.putIfAbsent("عربی", () => 5);
    dataMap1.putIfAbsent("ادبیات فارسی", () => 3);
    dataMap1.putIfAbsent("دینی", () => 2);
    dataMap1.putIfAbsent("زبان انگلیسی", () => 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

          child: PieChart(
            dataMap: dataMap1,
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
    );
  }
}

class TotalTable1 extends StatefulWidget {
  @override
  _TotalTable1State createState() => _TotalTable1State();
}

class _TotalTable1State extends State<TotalTable1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          gradient: LinearGradient(colors: [Color(0xff5FBCF7), Color(0xffA5D8F9)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight),
        ),
        child: Table(
          textDirection: TextDirection.rtl,
//          defaultColumnWidth:
//              FixedColumnWidth(MediaQuery.of(context).size.width / 3),
          border: TableBorder.all(
              color: Colors.black26, width: 1, style: BorderStyle.none),
          children: [
            TableRow(children: [
              TableCell(child: Center(child: Text('ساعات مطالعه'))),
              TableCell(child: Center(child: Text('ساعات تست'))),
              TableCell(child: Center(child: Text('تعداد تست'))),
              TableCell(child: Center(child: Text('مطالعه و تست'))),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('150'))),
              TableCell(child: Center(child: Text('200'))),
              TableCell(child: Center(child: Text('500'))),
              TableCell(child: Center(child: Text('350'))),
            ]),
          ],
        ),
      ),
    );
  }
}
