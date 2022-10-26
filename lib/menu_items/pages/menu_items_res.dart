import 'package:flutter/cupertino.dart';

class MenuItems extends StatelessWidget {
  final Widget menuMobile;
  final Widget menuTablet;
  final Widget menuTabTop;
  final Widget menuDesktop;

  const MenuItems({
    Key? key, 
    required this.menuMobile, 
    required this.menuTablet, 
    required this.menuTabTop, 
    required this.menuDesktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return menuMobile;
      } else if (constraints.maxWidth < 750) {
        return menuTablet;
      } else if (constraints.maxWidth < 1100) {
        return menuTabTop;
      } else {
        return menuDesktop;
      }
    });
  }
}
