import 'package:admian_app/constants/bold_text.dart';
import 'package:admian_app/constants/color.dart';
import 'package:admian_app/constants/regular_text.dart';
import 'package:admian_app/constants/semi_bold.dart';
import 'package:flutter/material.dart';

class CustomGrid extends StatelessWidget {
  final String title;
  final String count;
  final Color textColor;
  final image;
  final double iconBoxWidth;
  final double iconBoxHeight;
  const CustomGrid({
    Key? key,
    required this.title,
    required this.count,
    required this.image,
    required this.textColor,
    required this.iconBoxWidth,
    required this.iconBoxHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 200,
      child: Card(
        shape:
            const RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
        elevation: 0,
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SemiBoldText(text: title, color: AppColor.textLight),
                BoldText(
                  text: count,
                  size: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RegularText(text: 'View details', color: textColor),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: iconBoxWidth,
                      height: iconBoxHeight,
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
