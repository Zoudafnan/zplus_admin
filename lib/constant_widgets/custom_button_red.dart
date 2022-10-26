import 'package:flutter/material.dart';
import '../constants/color.dart';

class CustomButtonRed extends StatelessWidget {
  final String inputText;
  final double height;
  final double width;
  final double font;
  final Function() onPressed;
  const CustomButtonRed(
      {Key? key,
      required this.inputText,
      required this.height,
      required this.width,
      required this.onPressed,
      required this.font})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: AppColor.primary, borderRadius: BorderRadius.circular(5)),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(inputText,
            style: TextStyle(
              color: Colors.white,
              fontSize: font,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
