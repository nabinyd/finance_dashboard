// ignore_for_file: prefer_const_constructors

import 'package:finance_dashboard/style/styling.dart';
import 'package:flutter/material.dart';

class AppBarDashboard extends StatelessWidget {
  const AppBarDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      // width: double.infinity,
      decoration: BoxDecoration(color: ColorList().cardColor),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  const Icon(Icons.cloud),
                  PaddingSymmetric(
                    horizontal: 5,
                    vertical: 0,
                    child: TextWidget(
                        title: 'CloudFinance',
                        fontsize: 20,
                        fontweight: FontWeight.w800,
                        textcolor: ColorList().blacktext),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      title: 'Dashboard',
                      fontsize: 25,
                      fontweight: FontWeight.w800,
                      textcolor: ColorList().blacktext),
                  Container(
                    height: 40,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              fillColor: ColorList().bgcolor,
                              icon: const Icon(Icons.search),
                              label: const Text('Search'))),
                    ),
                  ),
                  const Icon(Icons.notifications)
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                    leading: CircleAvatar(),
                    title: Text("Nabin Yadav"),
                    subtitle: Text('nabiny501@gmail.com')),
              ),
            )
          ]),
    );
  }
}
