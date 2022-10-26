import 'package:admian_app/constant_widgets/drawer.dart';
import 'package:admian_app/constants/color.dart';
import 'package:admian_app/view_vendor_details/vendor_detail_widgets/demo.dart';
import 'package:flutter/material.dart';

class vendorDetailTablet extends StatefulWidget {
  const vendorDetailTablet({Key? key}) : super(key: key);

  @override
  _vendorDetailTabletState createState() => _vendorDetailTabletState();
}

class _vendorDetailTabletState extends State<vendorDetailTablet> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.background,
      drawer: CustomDrawer(headerWidth: 150),
      body: RestaurantDetail(),
    );
  }
}
