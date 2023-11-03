import 'package:finance_dashboard/components/left_drawer.dart';
import 'package:finance_dashboard/style/styling.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarchartComponent extends StatefulWidget {
  const BarchartComponent({super.key});

  @override
  State<BarchartComponent> createState() => _BarchartComponentState();
}

class _BarchartComponentState extends State<BarchartComponent> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Yearly';
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
        child: Column(
          children: [
            PaddingSymmetric(
              horizontal: 10,
              vertical: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextWidget(
                        title: 'Statistics',
                        fontsize: 16,
                        fontweight: FontWeight.w600,
                        textcolor: ColorList().blacktext),
                  ),
                  Row(
                    children: [
                      PaddingSymmetric(
                        horizontal: 8,
                        vertical: 0,
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: ColorList().earning,
                        ),
                      ),
                      const Text('Earnings'),
                      PaddingSymmetric(
                        horizontal: 8,
                        vertical: 0,
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: ColorList().savings,
                        ),
                      ),
                      const Text('savings'),
                      PaddingSymmetric(
                        horizontal: 8,
                        vertical: 0,
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          iconSize: 10,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                          underline: Container(
                            height: 1,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>[
                            'Yearly',
                            'Monthly',
                            'weekly',
                            'Daily'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
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
                            color: ColorList().earning,
                            borderRadius: BorderRadius.circular(10),
                            width: 40,
                          ),
                          BarChartRodData(
                            toY: 300,
                            color: ColorList().savings,
                            borderRadius: BorderRadius.circular(10),
                            width: 40,
                          ),
                        ]),
                        BarChartGroupData(x: 1, barRods: [
                          BarChartRodData(
                            toY: 400,
                            color: ColorList().earning,
                            borderRadius: BorderRadius.circular(10),
                            width: 40,
                          ),
                          BarChartRodData(
                            toY: 600,
                            color: ColorList().savings,
                            borderRadius: BorderRadius.circular(10),
                            width: 40,
                          ),
                        ]),
                        BarChartGroupData(x: 2, barRods: [
                          BarChartRodData(
                            toY: 800,
                            color: ColorList().earning,
                            borderRadius: BorderRadius.circular(10),
                            width: 40,
                          ),
                          BarChartRodData(
                            toY: 200,
                            color: ColorList().savings,
                            borderRadius: BorderRadius.circular(10),
                            width: 40,
                          ),
                        ]),
                        BarChartGroupData(x: 3, barRods: [
                          BarChartRodData(
                            toY: 800,
                            color: ColorList().earning,
                            borderRadius: BorderRadius.circular(10),
                            width: 40,
                          ),
                          BarChartRodData(
                            toY: 600,
                            color: ColorList().savings,
                            borderRadius: BorderRadius.circular(10),
                            width: 40,
                          ),
                        ]),
                        BarChartGroupData(x: 4, barRods: [
                          BarChartRodData(
                            toY: 1000,
                            color: ColorList().earning,
                            borderRadius: BorderRadius.circular(10),
                            width: 40,
                          ),
                          BarChartRodData(
                            toY: 400,
                            color: ColorList().savings,
                            borderRadius: BorderRadius.circular(10),
                            width: 40,
                          ),
                        ]),
                        BarChartGroupData(x: 5, barRods: [
                          BarChartRodData(
                            toY: 400,
                            color: ColorList().earning,
                            borderRadius: BorderRadius.circular(10),
                            width: 40,
                          ),
                          BarChartRodData(
                            toY: 800,
                            color: ColorList().savings,
                            borderRadius: BorderRadius.circular(10),
                            width: 40,
                          ),
                        ]),
                      ]),
                  swapAnimationCurve: Curves.linear,
                  swapAnimationDuration: const Duration(milliseconds: 800)),
            ),
          ],
        ),
      ),
    );
  }
}
