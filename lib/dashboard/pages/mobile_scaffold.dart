import 'package:admian_app/constants/color.dart';
import 'package:admian_app/constant_widgets/appbar.dart';
import 'package:admian_app/dashboard/widget/charts.dart';
import 'package:admian_app/dashboard/widget/manu_data_tables.dart';
import 'package:admian_app/constant_widgets/drawer.dart';
import 'package:admian_app/dashboard/widget/grid_box.dart';
import 'package:flutter/material.dart';

import '../widget/restrnt_data_table.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  _MobileScaffoldState createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Dashboard',
        image: "unnamed copy.png",
        radius: 15,
        textSize: 15,
        centerTitle: true,
        elevation: 1,
      ),
      backgroundColor: AppColor.background,
      drawer: const CustomDrawer(
        headerWidth: 120,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            // 4 grid box
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 3.8 / 2.3,
                children: [
                  CustomGrid(
                    image: "orders.png",
                    count: "234",
                    title: 'TOTAL ORDERS',
                    textColor: const Color(0xfffba83c),
                    iconBoxWidth: width / 12,
                    iconBoxHeight: width / 12,
                  ),
                  CustomGrid(
                    image: "dlivered.png",
                    count: "23",
                    title: 'DELIVERED',
                    textColor: const Color(0xffff2d55),
                    iconBoxWidth: width / 12,
                    iconBoxHeight: width / 12,
                  ),
                  CustomGrid(
                    image: "processing.png",
                    count: "32",
                    title: 'PROCESSING',
                    textColor: const Color(0xff50c878),
                    iconBoxWidth: width / 12,
                    iconBoxHeight: width / 12,
                  ),
                  CustomGrid(
                    image: "rejected.png",
                    count: "23",
                    title: 'REJECTED',
                    textColor: const Color(0xff9747FF),
                    iconBoxWidth: width / 12,
                    iconBoxHeight: width / 12,
                  ),
                ],
              ),
            ),
            Charts(
              chartHeight: 500,
            ),
            const SizedBox(
              height: 10,
            ),
            const MenuDataTable(
              heading: "MENU ITEMS",
              actions: "+ Add Items",
            ),
            const SizedBox(
              height: 10,
            ),
            const RestDataTable(
              heading: "RESTAURANTS",
              actions: "View Requests",
            ),
          ]),
        ),
      ),
    );
  }
}
