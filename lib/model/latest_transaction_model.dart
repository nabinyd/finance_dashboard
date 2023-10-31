// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  LatestTransaction(
      {super.key,
      required this.tofrom,
      required this.date,
      required this.amount,
      required this.descrption,
      required this.status,
      required this.action});

  final String tofrom;
  final date;
  String descrption;
  int amount;
  String status;
  final action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Checkbox(
            value: false,
            onChanged: (newValue) {
              setState(
                () {
                  newValue;
                },
              );
            }),
        Text(tofrom),
        Text(date.toString()),
        Text(descrption),
        Text(amount.toString()),
        Text(status),
        const Row(
          children: [
            Icon(Icons.link),
            Icon(Icons.delete),
            Icon(Icons.more_horiz)
          ],
        ),
      ],
    );
  }
}

void setState(Null Function() param0) {}
