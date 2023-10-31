import 'package:finance_dashboard/model/latest_transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionDashboard extends StatefulWidget {
  const TransactionDashboard({super.key});

  @override
  State<TransactionDashboard> createState() => _TransactionDashboardState();
}

class _TransactionDashboardState extends State<TransactionDashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const cardColor = Color.fromRGBO(255, 255, 255, 1);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Container(
          width: size.width,
          decoration: const BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: ListView(
            children: [
              const ListTile(
                leading: Text('Latest Transaction'),
                trailing: Text('view all'),
              ),
              Row(
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
                  const Text('ToolForm'),
                  const Text('Date'),
                  const Text('Description'),
                  const Text('Amount'),
                  const Text('Status'),
                  const Text('Action'),
                ],
              ),
              LatestTransaction(
                  tofrom: 'elevate agency',
                  date: DateTime.now(),
                  amount: 1000,
                  descrption: 'monthly Salary',
                  status: 'success',
                  action: 'update'),
              LatestTransaction(
                  tofrom: 'elevate agency',
                  date: DateTime.now(),
                  amount: 1000,
                  descrption: 'monthly Salary',
                  status: 'success',
                  action: 'update'),
              LatestTransaction(
                  tofrom: 'elevate agency',
                  date: DateTime.now(),
                  amount: 1000,
                  descrption: 'monthly Salary',
                  status: 'success',
                  action: 'update'),
              LatestTransaction(
                  tofrom: 'elevate agency',
                  date: DateTime.now(),
                  amount: 1000,
                  descrption: 'monthly Salary',
                  status: 'success',
                  action: 'update'),
              LatestTransaction(
                  tofrom: 'elevate agency',
                  date: DateTime.now(),
                  amount: 1000,
                  descrption: 'monthly Salary',
                  status: 'success',
                  action: 'update'),
              LatestTransaction(
                  tofrom: 'elevate agency',
                  date: DateTime.now(),
                  amount: 1000,
                  descrption: 'monthly Salary',
                  status: 'success',
                  action: 'update'),
              LatestTransaction(
                  tofrom: 'elevate agency',
                  date: DateTime.now(),
                  amount: 1000,
                  descrption: 'monthly Salary',
                  status: 'success',
                  action: 'update'),
            ],
          ),
        ),
      ),
    );
  }
}
