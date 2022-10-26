import 'package:admian_app/constant_widgets/drawer.dart';
import 'package:admian_app/constants/color.dart';
import 'package:admian_app/view_vendor_details/vendor_detail_widgets/demo.dart';
import 'package:flutter/material.dart';

class vendorDetailMobile extends StatefulWidget {
  const vendorDetailMobile({Key? key}) : super(key: key);

  @override
  _vendorDetailMobileState createState() => _vendorDetailMobileState();
}

class _vendorDetailMobileState extends State<vendorDetailMobile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.background,
      drawer: CustomDrawer(headerWidth: 120),
      body: RestaurantDetail(),
    );
  }
}
