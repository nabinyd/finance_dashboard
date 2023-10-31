import 'package:finance_dashboard/components/left_drawer.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarchartComponent extends StatelessWidget {
  const BarchartComponent({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Widget bottomTitles(double value, TitleMeta meta) {
      const style = TextStyle(fontSize: 10);
      String text;
      switch (value.toInt()) {
        case 0:
          text = 'Apr';
          break;
        case 1:
          text = 'May';
          break;
        case 2:
          text = 'Jun';
          break;
        case 3:
          text = 'Jul';
          break;
        case 4:
          text = 'Aug';
          break;
        default:
          text = '';
          break;
      }
      return SideTitleWidget(
        axisSide: meta.axisSide,
        child: Text(text, style: style),
      );
    }

    Widget leftTitles(double value, TitleMeta meta) {
      if (value == meta.max) {
        return Container();
      }
      const style = TextStyle(
        fontSize: 10,
      );
      return SideTitleWidget(
        axisSide: meta.axisSide,
        child: Text(
          meta.formattedValue,
          style: style,
        ),
      );
    }

    return Expanded(
      flex: 2,
      child: Container(
        height: size.height * 0.5,
        decoration: const BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: BarChart(
            BarChartData(
                borderData: FlBorderData(show: true),
                alignment: BarChartAlignment.spaceEvenly,
                groupsSpace: 20,
                titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) =>
                          bottomTitles(value, meta),
                    )),
                    leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 30,
                            getTitlesWidget: (value, meta) =>
                                leftTitles(value, meta)))),
                gridData: const FlGridData(
                    drawHorizontalLine: true, horizontalInterval: 30),
                barGroups: [
                  BarChartGroupData(x: 0, barRods: [
                    BarChartRodData(
                      toY: 500,
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10),
                      width: 40,
                    ),
                    BarChartRodData(
                      toY: 300,
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10),
                      width: 40,
                    ),
                  ]),
                  BarChartGroupData(x: 1, barRods: [
                    BarChartRodData(
                      toY: 400,
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10),
                      width: 40,
                    ),
                    BarChartRodData(
                      toY: 600,
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10),
                      width: 40,
                    ),
                  ]),
                  BarChartGroupData(x: 2, barRods: [
                    BarChartRodData(
                      toY: 800,
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10),
                      width: 40,
                    ),
                    BarChartRodData(
                      toY: 200,
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10),
                      width: 40,
                    ),
                  ]),
                  BarChartGroupData(x: 3, barRods: [
                    BarChartRodData(
                      toY: 800,
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10),
                      width: 40,
                    ),
                    BarChartRodData(
                      toY: 600,
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10),
                      width: 40,
                    ),
                  ]),
                  BarChartGroupData(x: 4, barRods: [
                    BarChartRodData(
                      toY: 1000,
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10),
                      width: 40,
                    ),
                    BarChartRodData(
                      toY: 400,
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10),
                      width: 40,
                    ),
                  ]),
                  BarChartGroupData(x: 5, barRods: [
                    BarChartRodData(
                      toY: 400,
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10),
                      width: 40,
                    ),
                    BarChartRodData(
                      toY: 800,
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10),
                      width: 40,
                    ),
                  ]),
                ]),
            swapAnimationCurve: Curves.linear,
            swapAnimationDuration: const Duration(milliseconds: 800)),
      ),
    );
  }
}
