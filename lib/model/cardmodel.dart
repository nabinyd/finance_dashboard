// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:finance_dashboard/style/styling.dart';
import 'package:flutter/material.dart';

const cardColor = Color.fromRGBO(255, 255, 255, 1);

class CardModel extends StatefulWidget {
  CardModel(
      {super.key,
      required this.icon,
      required this.title,
      required this.price,
      required this.growthpercentage,
      required this.comparevalue});

  final icon;
  String title;
  double price;
  double growthpercentage;
  double comparevalue;

  @override
  State<CardModel> createState() => _CardModelState();
}

class _CardModelState extends State<CardModel> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            color: cardColor,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(widget.icon),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(widget.title),
                      ),
                    ],
                  ),
                  PaddingSymmetric(
                    horizontal: 0,
                    vertical: 10,
                    child: Row(
                      children: [
                        TextWidget(
                            title: "\$${widget.price}",
                            fontsize: 20,
                            fontweight: FontWeight.bold,
                            textcolor: Colors.black),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.green.shade200,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: Row(
                              children: [
                                const Icon(Icons.arrow_upward),
                                Text("${widget.growthpercentage}%")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text("${widget.comparevalue}%" "  than last month"),
                ],
              ),
            )),
      ),
    );
  }
}
