import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() => runApp(MiApp());

class MiApp extends StatefulWidget {
  @override
  _MiAppState createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {
  List<charts.Series<PieData, String>> _pieData;
  @override
  void initState() {
    super.initState();
    _pieData = List<charts.Series<PieData, String>>();
  }

  generateData() {
    var piedata = [
      new PieData('Work', 35.8),
      new PieData('Eat', 8.3),
      new PieData('Commute', 10.8),
      new PieData('TV', 15.6),
      new PieData('Sleep', 19.2),
      new PieData('Other', 10.3),
    ];
    _pieData.add(
      charts.Series(
        domainFn: (PieData data, _) => data.activity,
        measureFn: (PieData data, _) => data.time,
        id: 'Time spent',
        data: piedata,
        labelAccessorFn: (PieData row, _) => '${row.activity}',
      ),
    );
    return _pieData;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: charts.PieChart(
              generateData(),
              animate: true,
              animationDuration: Duration(seconds: 5),
              defaultRenderer: new charts.ArcRendererConfig(
                arcWidth: 100,
                arcRendererDecorators: [
                  new charts.ArcLabelDecorator(
                      labelPosition: charts.ArcLabelPosition.inside)
                ],
              ),
            ),
          ),
        ));
  }
}

class PieData {
  String activity;
  double time;
  PieData(this.activity, this.time);
}
