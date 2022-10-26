import 'package:flutter/cupertino.dart';

class vendorDetail extends StatelessWidget {
  final Widget vendorDetailMobile;
  final Widget vendorDetailTablet;
  final Widget vendorDetailTabTop;
  final Widget vendorDetailDesktop;

  const vendorDetail({
    Key? key, 
    required this.vendorDetailMobile, 
    required this.vendorDetailTablet, 
    required this.vendorDetailTabTop, 
    required this.vendorDetailDesktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return vendorDetailMobile;
      } else if (constraints.maxWidth < 750) {
        return vendorDetailTablet;
      } else if (constraints.maxWidth < 1100) {
        return vendorDetailTabTop;
      } else {
        return vendorDetailDesktop;
      }
    });
  }
}
