// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({
    super.key,
    required this.title,
    required this.fontsize,
    required this.fontweight,
    required this.textcolor,
  });

  String title;
  double fontsize;
  Color textcolor;
  FontWeight fontweight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: fontsize, color: textcolor, fontWeight: fontweight),
    );
  }
}

class PaddingSymmetric extends StatelessWidget {
  PaddingSymmetric(
      {super.key,
      required this.child,
      required this.horizontal,
      required this.vertical});

  double horizontal;
  double vertical;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: child,
    );
  }
}

class ColorList {
  Color bgcolor = const Color.fromRGBO(240, 240, 240, 1);
  Color cardColor = const Color.fromRGBO(255, 255, 255, 1);
  Color bluecolor = const Color.fromRGBO(20, 59, 127, 1);
  Color lighttext = const Color.fromRGBO(180, 180, 180, 1);
  Color blacktext = Colors.black;
}
