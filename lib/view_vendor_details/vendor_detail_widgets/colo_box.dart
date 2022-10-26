import 'package:admian_app/constants/color.dart';
import 'package:admian_app/constants/regular_text.dart';
import 'package:admian_app/constants/semi_bold.dart';
import 'package:flutter/material.dart';

class ColorBox extends StatelessWidget {
  final String number;
  final String heading;
  final Color topColor;
  const ColorBox(
      {Key? key,
      required this.number,
      required this.heading,
      required this.topColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Flexible(
      child: Container(
        height: 55,
        width: width / 3,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: topColor, width: 2))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SemiBoldText(text: number, color: Colors.black),
            RegularText(text: heading, color: AppColor.textLight)
          ],
        ),
      ),
    );
  }
}
