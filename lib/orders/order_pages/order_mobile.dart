import 'package:admian_app/constant_widgets/appbar.dart';
import 'package:admian_app/constant_widgets/drawer.dart';
import 'package:admian_app/constants/color.dart';
import 'package:admian_app/orders/order_widgets/tab_data.dart';
import 'package:flutter/material.dart';

class OrderMobile extends StatefulWidget {
  const OrderMobile({Key? key}) : super(key: key);

  @override
  _OrderMobileState createState() => _OrderMobileState();
}

class _OrderMobileState extends State<OrderMobile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(
            title: 'ORDERS',
            image: 'unnamed copy.png',
            textSize: 15,
            radius: 15,
            elevation: 1,
            centerTitle: true),
        backgroundColor: AppColor.background,
        drawer: CustomDrawer(headerWidth: 120),
        body: TabData());
  }
}
