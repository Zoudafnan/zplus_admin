import 'package:admian_app/constant_widgets/drawer.dart';
import 'package:admian_app/constants/color.dart';
import 'package:admian_app/view_vendor_details/vendor_detail_widgets/demo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class vendorDetailTabTop extends StatefulWidget {
  const vendorDetailTabTop({Key? key}) : super(key: key);

  @override
  _vendorDetailTabTopState createState() => _vendorDetailTabTopState();
}

class _vendorDetailTabTopState extends State<vendorDetailTabTop> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.background,
      drawer: CustomDrawer(headerWidth: 150),
      body: RestaurantDetail(),
    );
  }
}
