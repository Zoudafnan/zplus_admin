import 'package:admian_app/orders/order_widgets/tab_data.dart';
import 'package:flutter/material.dart';

import '../../constant_widgets/appbar.dart';
import '../../constant_widgets/drawer.dart';
import '../../constants/color.dart';

class OrderTabTop extends StatefulWidget {
  const OrderTabTop({Key? key}) : super(key: key);

  @override
  _OrderTabTopState createState() => _OrderTabTopState();
}

class _OrderTabTopState extends State<OrderTabTop> {
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
