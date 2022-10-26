import 'package:flutter/cupertino.dart';

class Vendors extends StatelessWidget {
  final Widget vendorMobile;
  final Widget vendorTablet;
  final Widget vendorTabTop;
  final Widget vendorDesktop;

  const Vendors({
    Key? key, 
    required this.vendorMobile, 
    required this.vendorTablet, 
    required this.vendorTabTop, 
    required this.vendorDesktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return vendorMobile;
      } else if (constraints.maxWidth < 750) {
        return vendorTablet;
      } else if (constraints.maxWidth < 1100) {
        return vendorTabTop;
      } else {
        return vendorDesktop;
      }
    });
  }
}
