import 'package:flutter/material.dart';

import '../constants/bold_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double? height;
  final image;
  final double textSize;
  final double radius;
  final double elevation;
  final double? titleSpacing;
  final bool? centerTitle;

  const CustomAppBar({
    super.key,
    required this.title,
    this.height = kToolbarHeight,
    required this.image,
    required this.textSize,
    required this.radius,
    required this.elevation,
    this.titleSpacing,
    required this.centerTitle,
  });

  @override
  Size get preferredSize => Size.fromHeight(height!);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      titleSpacing: titleSpacing,
      centerTitle: centerTitle,
      elevation: elevation,
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      title: BoldText(
        text: title,
        size: textSize,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
            radius: radius,
            backgroundImage: AssetImage("assets/" + image),
          ),
        ),
      ],
    );
  }
}
