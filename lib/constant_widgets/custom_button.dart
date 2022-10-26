import 'package:flutter/material.dart';
import '../constants/color.dart';

class CustomButton extends StatelessWidget {
  final String inputText;
  final double height;
  final double width;
  final Function() onPressed;
  const CustomButton(
      {Key? key,
      required this.inputText,
      required this.height,
      required this.width,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: AppColor.primary.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5)),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(inputText,
            style: const TextStyle(
              color: AppColor.primary,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
