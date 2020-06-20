import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Pie_Carht2 extends StatefulWidget {
  @override
  _Pie_Carht2State createState() => _Pie_Carht2State();
}

class _Pie_Carht2State extends State<Pie_Carht2> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 7,
            child: pie_Chart2(),
          ),
          Expanded(flex: 3, child: TotalTable2())
        ],
      ),
    );
  }
}

class pie_Chart2 extends StatefulWidget {
  @override
  _pie_Chart2State createState() => _pie_Chart2State();
}

class _pie_Chart2State extends State<pie_Chart2> {
  Map<String, double> dataMap2 = Map();
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
  ];

  @override
  void initState() {
    super.initState();
    dataMap2.putIfAbsent("ریاضیات", () => 5);
    dataMap2.putIfAbsent("فیزیک", () => 3);
    dataMap2.putIfAbsent("شیمی", () => 2);
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
              dataMap: dataMap2,
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
            )
        ),
      ),
    );
  }
}


class TotalTable2 extends StatefulWidget {
  @override
  _TotalTable2State createState() => _TotalTable2State();
}

class _TotalTable2State extends State<TotalTable2> {
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
