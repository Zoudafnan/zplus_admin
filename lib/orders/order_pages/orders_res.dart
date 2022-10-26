import 'package:flutter/cupertino.dart';

class Orders extends StatelessWidget {
  final Widget orderMobile;
  final Widget orderTablet;
  final Widget orderTabTop;
  final Widget orderDesktop;

  const Orders({
    Key? key, 
    required this.orderMobile, 
    required this.orderTablet, 
    required this.orderTabTop, 
    required this.orderDesktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return orderMobile;
      } else if (constraints.maxWidth < 750) {
        return orderTablet;
      } else if (constraints.maxWidth < 1100) {
        return orderTabTop;
      } else {
        return orderDesktop;
      }
    });
  }
}
