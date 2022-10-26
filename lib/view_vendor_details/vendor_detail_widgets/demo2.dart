import 'package:admian_app/constants/color.dart';
import 'package:flutter/material.dart';

import '../../constants/regular_text.dart';
import '../../constants/semi_bold.dart';

class ResText extends StatelessWidget {
  final String text1;
  final String text2;
  const ResText({Key? key, required this.text1, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RegularText(
          text: text1,
          size: 12,
          color: AppColor.textLight,
        ),
        const SizedBox(
          height: 4,
        ),
        SemiBoldText(
          text: text2,
          color: Colors.black,
        )
      ],
    );
  }
}
