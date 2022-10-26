import 'package:admian_app/orders/order_widgets/tab_data.dart';
import 'package:flutter/material.dart';

import '../../constant_widgets/appbar.dart';
import '../../constant_widgets/drawer.dart';
import '../../constants/color.dart';

class OrderTablet extends StatefulWidget {
  const OrderTablet({Key? key}) : super(key: key);

  @override
  _OrderTabletState createState() => _OrderTabletState();
}

class _OrderTabletState extends State<OrderTablet> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(
            title: "ORDERS",
            image: "unnamed copy.png",
            textSize: 16,
            centerTitle: true,
            elevation: 2,
            radius: 16),
        backgroundColor: AppColor.background,
        drawer: CustomDrawer(headerWidth: 150),
        body: TabData());
  }
}
