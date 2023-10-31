import 'package:finance_dashboard/style/styling.dart';
import 'package:flutter/material.dart';

class AppBarDashboard extends StatelessWidget {
  const AppBarDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const bgcolor = Color.fromRGBO(240, 240, 240, 1);
    const cardColor = Color.fromRGBO(255, 255, 255, 1);
    const bluecolor = Color.fromRGBO(20, 59, 127, 1);
    return Container(
      height: 80,
      // width: double.infinity,
      decoration: const BoxDecoration(color: cardColor),
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
                    vertical: 16,
                    horizontal: 32,
                    child: TextWidget(
                        title: 'CloudFinance',
                        fontsize: 20,
                        fontweight: FontWeight.w800,
                        textcolor: Colors.black),
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
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              fillColor: bgcolor,
                              icon: Icon(Icons.search),
                              label: Text('Search'))),
                    ),
                  ),
                  const Icon(Icons.notifications)
                ],
              ),
            ),
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: bluecolor,
                    ),
                    title: Text("Nabin Yadav"),
                    subtitle: Text('nabiny501@gmail.com,')),
              ),
            )
          ]),
    );
  }
}
