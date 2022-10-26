import 'package:flutter/cupertino.dart';

class AddItem extends StatelessWidget {
  final Widget addItemMobile;
  final Widget addItemTablet;
  final Widget addItemTabTop;
  final Widget addItemDesktop;

  const AddItem({
    Key? key, 
    required this.addItemMobile, 
    required this.addItemTablet, 
    required this.addItemTabTop, 
    required this.addItemDesktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return addItemMobile;
      } else if (constraints.maxWidth < 750) {
        return addItemTablet;
      } else if (constraints.maxWidth < 1100) {
        return addItemTabTop;
      } else {
        return addItemDesktop;
      }
    });
  }
}
