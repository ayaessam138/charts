import 'dart:convert';

import 'package:chart/fetchdata.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    api(dio: Dio()).getdata();
    super.initState();
  }

  // List<SalesData> data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter chart'),
      ),
      // body: Column(children: [
      //   SfCartesianChart(
      //       primaryXAxis: CategoryAxis(),
      //       title: ChartTitle(text: 'Half yearly sales analysis'),
      //       // Enable legend
      //       legend: Legend(isVisible: true),
      //       // Enable tooltip
      //       tooltipBehavior: TooltipBehavior(enable: true),
      //       series: <ChartSeries<SalesData, String>>[
      //         LineSeries<SalesData, String>(
      //             dataSource: data,
      //             xValueMapper: (SalesData sales, _) => sales.year,
      //             yValueMapper: (SalesData sales, _) => sales.sales,
      //             name: 'Sales',
      //             // Enable data label
      //             dataLabelSettings: DataLabelSettings(isVisible: true))
      //       ]),
      //   Expanded(
      //     child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       //Initialize the spark charts widget
      //       child: SfSparkLineChart.custom(
      //         //Enable the trackball
      //         trackball: SparkChartTrackball(
      //             activationMode: SparkChartActivationMode.tap),
      //         //Enable marker
      //         marker: SparkChartMarker(
      //             displayMode: SparkChartMarkerDisplayMode.all),
      //         //Enable data label
      //         labelDisplayMode: SparkChartLabelDisplayMode.all,
      //         xValueMapper: (int index) => data[index].year,
      //         yValueMapper: (int index) => data[index].sales,
      //         dataCount: 5,
      //       ),
      //     ),
      //   )
      // ])
    );
  }
}

class SalesData {
  SalesData({required this.year, required this.sales});

  final String year;
  final double sales;
  factory SalesData.fromjson(jsondata) {
    return SalesData(year: jsondata[''], sales: jsondata['']);
  }
}
