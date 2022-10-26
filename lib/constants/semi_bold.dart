import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SemiBoldText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  final int? maxLines;
  final TextOverflow? textOverflow;
  SemiBoldText(
      {Key? key,
      this.size = 15,
      required this.text,
      required this.color,
      this.maxLines,
      this.textOverflow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
