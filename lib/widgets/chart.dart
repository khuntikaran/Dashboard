import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart extends StatelessWidget {
  final List<FlSpot> dummyData1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<FlSpot> dummyData2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<FlSpot> dummyData3 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<String> days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Last Week',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey.shade300),
              ),
              Icon(
                Icons.arrow_drop_down_rounded,
                size: 40,
                color: Colors.grey.shade300,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            height: constraints.minHeight * 0.695,
            width: constraints.minWidth * 0.8,
            child: LineChart(
              LineChartData(
                axisTitleData: FlAxisTitleData(
                  topTitle: AxisTitle(
                    showTitle: true,
                    titleText: 'Analytic',
                    textAlign: TextAlign.start,
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey.shade800),
                  ),
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: SideTitles(
                    showTitles: true,
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 0:
                          return 'Mon';
                        case 1:
                          return 'Tue';
                        case 2:
                          return 'Wed';
                        case 3:
                          return 'Thu';
                        case 4:
                          return 'Fri';
                        case 5:
                          return 'Sat';
                        case 6:
                          return 'Sun';
                      }
                      return '';
                    },
                    getTextStyles: (value) =>
                        TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leftTitles: SideTitles(
                    showTitles: true,
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 0:
                          return '0';
                        case 1:
                          return '15';
                        case 2:
                          return '25';
                        case 3:
                          return '35';
                        case 4:
                          return '45';
                        case 5:
                          return '55';
                      }
                      return '';
                    },
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    isStrokeCapRound: true,
                    shadow: Shadow(
                      offset: Offset(0, 0.8),
                      //----------------------------------------------------------------
                      color: Colors.green.shade300,
                      blurRadius: 3,
                    ),
                    spots: dummyData2,
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(
                      gradientFrom: Offset(0, 0.5),
                      gradientTo: Offset(0, 0.9),
                      show: true,
                      colors: [
                        Colors.green.shade200,
                        Colors.green.shade100,
                        Colors.grey.shade100
                      ],
                    ),
                    isCurved: true,
                    barWidth: 3,
                    colors: [Colors.green.shade300],
                  ),
                ],
              ),
              swapAnimationCurve: Curves.linearToEaseOut,
              swapAnimationDuration: Duration(seconds: 5),
            ),
          ),
        ],
      );
    });
  }
}
