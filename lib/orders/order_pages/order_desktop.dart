import 'package:admian_app/orders/order_widgets/tab_data.dart';
import 'package:flutter/material.dart';

import '../../constant_widgets/appbar.dart';
import '../../constant_widgets/drawer.dart';
import '../../constants/color.dart';

class OrderDesktop extends StatefulWidget {
  const OrderDesktop({Key? key}) : super(key: key);

  @override
  _OrderDesktopState createState() => _OrderDesktopState();
}

class _OrderDesktopState extends State<OrderDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.background,
        appBar: const CustomAppBar(
            title: "ORDERS",
            centerTitle: false,
            image: "unnamed copy.png",
            textSize: 16,
            titleSpacing: 330,
            elevation: 0,
            radius: 18),
        body:
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: const [
          // Drawer
          CustomDrawer(headerWidth: 150),
          // Rest of the body
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(25.0),
              child: TabData(),
            ),
          )
        ]));
  }
}
