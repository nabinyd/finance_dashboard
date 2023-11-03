import 'package:finance_dashboard/components/bar_chart_component.dart';
import 'package:finance_dashboard/model/cardmodel.dart';
import 'package:flutter/material.dart';

class StatisticsDashboard extends StatefulWidget {
  const StatisticsDashboard({super.key});

  @override
  State<StatisticsDashboard> createState() => _StatisticsDashboardState();
}

class _StatisticsDashboardState extends State<StatisticsDashboard> {
  RangeValues value = const RangeValues(0, 200);
  final bgcolor = const Color.fromRGBO(240, 240, 240, 1);
  final cardColor = const Color.fromRGBO(255, 255, 255, 1);
  final bluecolor = const Color.fromRGBO(20, 59, 127, 1);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const BarchartComponent(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: size.height * 0.5,
                decoration: BoxDecoration(
                    color: cardColor, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      CardModel(
                          icon: Icons.attach_money,
                          title: 'Earnings',
                          price: 140.5,
                          growthpercentage: 12.8,
                          comparevalue: 11),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 15),
                        child: Column(
                          children: [
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Dream Studio'),
                                Text('\$251.9/\$750')
                              ],
                            ),
                            Slider(
                              min: 0,
                              max: 200,
                              value: 10,
                              onChanged: (newvalue) {
                                setState(() {
                                  value = newvalue as RangeValues;
                                });
                              },
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text('Education'), Text('80%')],
                            ),
                            Slider(
                              min: 0,
                              max: 200,
                              value: 100,
                              onChanged: (newvalue) {
                                setState(() {
                                  value = newvalue as RangeValues;
                                });
                              },
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('health care'),
                                Text('\$251.9/\$750')
                              ],
                            ),
                            Slider(
                              min: 0,
                              max: 200,
                              value: 100,
                              onChanged: (newvalue) {
                                setState(() {
                                  value = newvalue as RangeValues;
                                });
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
