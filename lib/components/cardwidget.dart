import 'package:boxicons/boxicons.dart';
import 'package:finance_dashboard/model/cardmodel.dart';

import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CardModel(
            icon: Icons.attach_money,
            title: 'Earnings',
            price: 100.5,
            growthpercentage: 8,
            comparevalue: 2),
        CardModel(
            icon: Icons.shop,
            title: 'Spendings',
            price: 100.5,
            growthpercentage: 8,
            comparevalue: 2),
        CardModel(
            icon: Icons.group,
            title: 'Investment',
            price: 100.5,
            growthpercentage: 8,
            comparevalue: 2),
        CardModel(
            icon: Icons.save,
            title: 'Savings',
            price: 100.5,
            growthpercentage: 8,
            comparevalue: 2),
      ],
    );
  }
}
