import 'package:finance_dashboard/style/styling.dart';
import 'package:flutter/material.dart';

const bgcolor = Color.fromRGBO(240, 240, 240, 1);
const cardColor = Color.fromRGBO(255, 255, 255, 1);
const bluecolor = Color.fromRGBO(20, 59, 127, 1);

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        width: size.width,
        color: cardColor,
        child: ListView(
          children: [
            const ListTile(title: Text('Menu')),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: TextWidget(
                  title: 'Overview',
                  fontsize: 18,
                  fontweight: FontWeight.normal,
                  textcolor: ColorList().lighttext),
            ),
            ListTile(
              leading: const Icon(Icons.bar_chart),
              title: TextWidget(
                  title: 'Overview',
                  fontsize: 18,
                  fontweight: FontWeight.normal,
                  textcolor: ColorList().lighttext),
            ),
            ListTile(
              leading: const Icon(Icons.save_as_outlined),
              title: TextWidget(
                  title: 'Overview',
                  fontsize: 18,
                  fontweight: FontWeight.normal,
                  textcolor: ColorList().lighttext),
            ),
            ListTile(
              leading: const Icon(Icons.pie_chart),
              title: TextWidget(
                  title: 'Overview',
                  fontsize: 18,
                  fontweight: FontWeight.normal,
                  textcolor: ColorList().lighttext),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_downward)),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: TextWidget(
                  title: 'Overview',
                  fontsize: 18,
                  fontweight: FontWeight.normal,
                  textcolor: ColorList().lighttext),
              trailing: const Badge(
                backgroundColor: Colors.red,
                label: Text('25'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dataset),
              title: TextWidget(
                  title: 'Overview',
                  fontsize: 18,
                  fontweight: FontWeight.normal,
                  textcolor: ColorList().lighttext),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              title: TextWidget(
                  title: 'Overview',
                  fontsize: 18,
                  fontweight: FontWeight.normal,
                  textcolor: ColorList().lighttext),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: TextWidget(
                  title: 'Overview',
                  fontsize: 18,
                  fontweight: FontWeight.normal,
                  textcolor: ColorList().lighttext),
            ),
            ListTile(
              leading: const Icon(Icons.photo_album_outlined),
              title: TextWidget(
                  title: 'Overview',
                  fontsize: 18,
                  fontweight: FontWeight.normal,
                  textcolor: ColorList().lighttext),
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: TextWidget(
                  title: 'Overview',
                  fontsize: 18,
                  fontweight: FontWeight.normal,
                  textcolor: ColorList().lighttext),
            ),
          ],
        ),
      ),
    );
  }
}
