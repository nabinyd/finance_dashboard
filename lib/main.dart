// ignore_for_file: prefer_const_constructors

import 'package:finance_dashboard/components/appbar_dashboard.dart';
import 'package:finance_dashboard/components/cardwidget.dart';
import 'package:finance_dashboard/components/latest_transaction.dart';
import 'package:finance_dashboard/components/left_drawer.dart';
import 'package:finance_dashboard/components/statistics_dashboard.dart';
import 'package:finance_dashboard/style/styling.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  // widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bgcolor = Color.fromRGBO(240, 240, 240, 1);

    return Scaffold(
        appBar: AppBar(
          title: Text('Finance Dashboard'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Expanded(
              child: SizedBox(
                // width: size.width,
                child: Column(
                  children: [
                    // Appbar Dashboard
                    AppBarDashboard(),
                    //......................... main  dashboard....................................................................
                    Container(
                      color: bgcolor,
                      height: size.height * 1.2,
                      // width: size.width,
                      child: Row(
                        children: [
                          LeftDrawer(),

                          //whole body dashboard container....................
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SizedBox(
                                width: size.width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 20),
                                        child: TextWidget(
                                            title: 'Overview',
                                            fontsize: 25,
                                            fontweight: FontWeight.w800,
                                            textcolor: ColorList().blacktext)),

                                    // card widget.........................................
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: CardWidget(),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 15),
                                      child: StatisticsDashboard(),
                                    ),

                                    Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.symmetric(vertical: 5),
                                          child: TransactionDashboard(),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
