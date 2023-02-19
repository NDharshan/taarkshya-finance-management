import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pie_chart/pie_chart.dart';

class Visualize extends StatelessWidget {
  var cat;
  var expense;

  Visualize(this.cat, this.expense);

  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      'Income': 26,
      "Expend": 32,
      'Coupon': 26,
      'Sudexo': 32,
      'Gift Card': 48
    };
    // cat.map((e) => dataMap[e] = expense[cat.indexOf(e)]);

    final colorList = <Color>[
      Colors.greenAccent,
      Colors.blueAccent,
      Colors.orangeAccent,
      Colors.yellowAccent,
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Visualize!')),
      body: Center(
          child: PieChart(
        dataMap: dataMap,
        animationDuration: Duration(milliseconds: 800),
        chartLegendSpacing: 32,
        chartRadius: MediaQuery.of(context).size.width / 3,
        colorList: colorList,
        initialAngleInDegree: 0,
        chartType: ChartType.ring,
        ringStrokeWidth: 32,
        centerText: "Expenses Summary",
        legendOptions: LegendOptions(
          showLegendsInRow: false,
          legendPosition: LegendPosition.bottom,
          showLegends: true,
          // legendShape: _BoxShape.circle,
          legendTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        chartValuesOptions: ChartValuesOptions(
          showChartValueBackground: true,
          showChartValues: true,
          showChartValuesInPercentage: false,
          showChartValuesOutside: false,
          decimalPlaces: 1,
        ),
        // gradientList: ---To add gradient colors---
        // emptyColorGradient: ---Empty Color gradient---
      )),
    );
  }
}
