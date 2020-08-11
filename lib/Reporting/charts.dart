import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Pie_chart_general extends StatefulWidget {
  @override
  _Pie_chart_generalState createState() => _Pie_chart_generalState();
}

class _Pie_chart_generalState extends State<Pie_chart_general> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Color(0xff00d170)
          ),
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height/50,
            bottom: MediaQuery.of(context).size.height/50
          ),
          height: MediaQuery.of(context).size.height/10,
          child: Center(
            child: Center(
              child: Text(
                'ساعاتی که درس میخوندی',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 18.0, fontFamily: 'Aviny',
              color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2,
          child: GroupedBarChart.withSampleData(),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xff00d170)
          ),
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height/50,
              bottom: MediaQuery.of(context).size.height/50
          ),
          height: MediaQuery.of(context).size.height/10,
          child: Center(
            child: Center(
              child: Text(
                'ببین هر درس چند درصد از ساعت مطالعاتیت سهم داره',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 18.0, fontFamily: 'Aviny',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2,
          child: SimplePieChart.withSampleData(),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xff00d170)
          ),
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height/50,
              bottom: MediaQuery.of(context).size.height/50
          ),
          height: MediaQuery.of(context).size.height/10,
          child: Center(
            child: Center(
              child: Text(
                'ببین نسبت به ماه قبل چقدر پیشرفت کردی',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 18.0, fontFamily: 'Aviny',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2,
          child: SimpleLineChart.withSampleData(),
        )
      ],
    );
  }
}


class Pie_chart_dedicated extends StatefulWidget {
  @override
  _Pie_chart_dedicatedState createState() => _Pie_chart_dedicatedState();
}

class _Pie_chart_dedicatedState extends State<Pie_chart_dedicated> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Color(0xff00d170)
          ),
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height/50,
              bottom: MediaQuery.of(context).size.height/50
          ),
          height: MediaQuery.of(context).size.height/10,
          child: Center(
            child: Center(
              child: Text(
                'ساعاتی که درس میخوندی',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 18.0, fontFamily: 'Aviny',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2,
          child: GroupedBarChart.withSampleData(),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xff00d170)
          ),
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height/50,
              bottom: MediaQuery.of(context).size.height/50
          ),
          height: MediaQuery.of(context).size.height/10,
          child: Center(
            child: Center(
              child: Text(
                'ببین هر درس چند درصد از ساعت مطالعاتیت سهم داره',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 18.0, fontFamily: 'Aviny',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2,
          child: SimplePieChart.withSampleData(),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xff00d170)
          ),
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height/50,
              bottom: MediaQuery.of(context).size.height/50
          ),
          height: MediaQuery.of(context).size.height/10,
          child: Center(
            child: Center(
              child: Text(
                'ببین نسبت به ماه قبل چقدر پیشرفت کردی',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 18.0, fontFamily: 'Aviny',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2,
          child: SimpleLineChart.withSampleData(),
        )
      ],
    );
  }
}

class Pie_chart_totalLessons extends StatefulWidget {
  @override
  _Pie_chart_totalLessonsState createState() => _Pie_chart_totalLessonsState();
}

class _Pie_chart_totalLessonsState extends State<Pie_chart_totalLessons> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Color(0xff00d170)
          ),
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height/50,
              bottom: MediaQuery.of(context).size.height/50
          ),
          height: MediaQuery.of(context).size.height/10,
          child: Center(
            child: Center(
              child: Text(
                'ساعاتی که درس میخوندی',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 18.0, fontFamily: 'Aviny',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2,
          child: GroupedBarChart.withSampleData(),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xff00d170)
          ),
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height/50,
              bottom: MediaQuery.of(context).size.height/50
          ),
          height: MediaQuery.of(context).size.height/10,
          child: Center(
            child: Center(
              child: Text(
                'ببین هر درس چند درصد از ساعت مطالعاتیت سهم داره',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 18.0, fontFamily: 'Aviny',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2,
          child: SimplePieChart.withSampleData(),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xff00d170)
          ),
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height/50,
              bottom: MediaQuery.of(context).size.height/50
          ),
          height: MediaQuery.of(context).size.height/10,
          child: Center(
            child: Center(
              child: Text(
                'ببین نسبت به ماه قبل چقدر پیشرفت کردی',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 18.0, fontFamily: 'Aviny',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2,
          child: SimpleLineChart.withSampleData(),
        )
      ],
    );
  }
}

class GroupedBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  GroupedBarChart(this.seriesList, {this.animate});

  factory GroupedBarChart.withSampleData() {
    return new GroupedBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      barGroupingType: charts.BarGroupingType.grouped,
    );
  }

  /// Create series list with multiple series
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final desktopSalesData = [
      new OrdinalSales('2014', 5),
      new OrdinalSales('2015', 25),
      new OrdinalSales('2016', 100),
      new OrdinalSales('2017', 75),
    ];

    final tableSalesData = [
      new OrdinalSales('2014', 25),
      new OrdinalSales('2015', 50),
      new OrdinalSales('2016', 10),
      new OrdinalSales('2017', 20),
    ];

    final mobileSalesData = [
      new OrdinalSales('2014', 10),
      new OrdinalSales('2015', 15),
      new OrdinalSales('2016', 50),
      new OrdinalSales('2017', 45),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Desktop',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: desktopSalesData,
      ),
      new charts.Series<OrdinalSales, String>(
        id: 'Tablet',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: tableSalesData,
      ),
      new charts.Series<OrdinalSales, String>(
        id: 'Mobile',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: mobileSalesData,
      ),
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}

class SimplePieChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimplePieChart(this.seriesList, {this.animate});

  /// Creates a [PieChart] with sample data and no transition.
  factory SimplePieChart.withSampleData() {
    return new SimplePieChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.PieChart(seriesList, animate: animate);
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSalesP, int>> _createSampleData() {
    final data = [
      new LinearSalesP(0, 100),
      new LinearSalesP(1, 75),
      new LinearSalesP(2, 25),
      new LinearSalesP(3, 5),
    ];

    return [
      new charts.Series<LinearSalesP, int>(
        id: 'Sales',
        domainFn: (LinearSalesP sales, _) => sales.year,
        measureFn: (LinearSalesP sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

class LinearSalesP {
  final int year;
final int sales;

LinearSalesP(this.year, this.sales);
}

class SimpleLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleLineChart(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory SimpleLineChart.withSampleData() {
    return new SimpleLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(seriesList, animate: animate);
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 5),
      new LinearSales(1, 25),
      new LinearSales(2, 100),
      new LinearSales(3, 75),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}
