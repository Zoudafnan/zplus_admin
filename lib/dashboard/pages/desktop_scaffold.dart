import 'package:admian_app/constants/bold_text.dart';
import 'package:admian_app/constants/color.dart';
import 'package:admian_app/constant_widgets/appbar.dart';
import 'package:admian_app/dashboard/widget/charts.dart';
import 'package:admian_app/constant_widgets/drawer.dart';
import 'package:admian_app/dashboard/widget/grid_box.dart';
import 'package:flutter/material.dart';

import '../widget/manu_data_tables.dart';
import '../widget/restrnt_data_table.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  _DesktopScaffoldState createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: const CustomAppBar(
          title: "DASHBOARD",
          centerTitle: false,
          image: "unnamed copy.png",
          textSize: 16,
          titleSpacing: 330,
          elevation: 0,
          radius: 18),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Drawer
          const CustomDrawer(headerWidth: 150),
          // Rest of the body
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 20, bottom: 10, right: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoldText(text: "Overview"),
                      const SizedBox(
                        height: 10,
                      ),
                      // 4 grid box
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: GridView.count(
                          shrinkWrap: true,
                          crossAxisCount: 4,
                          physics: const NeverScrollableScrollPhysics(),
                          childAspectRatio: 3.8 / 2.3,
                          children: [
                            CustomGrid(
                              image: "orders.png",
                              count: "234",
                              title: 'TOTAL ORDERS',
                              textColor: const Color(0xfffba83c),
                              iconBoxWidth: width / 28,
                              iconBoxHeight: width / 28,
                            ),
                            CustomGrid(
                              image: "dlivered.png",
                              count: "23",
                              title: 'DELIVERED',
                              textColor: const Color(0xffff2d55),
                              iconBoxWidth: width / 28,
                              iconBoxHeight: width / 28,
                            ),
                            CustomGrid(
                              image: "processing.png",
                              count: "32",
                              title: 'PROCESSING',
                              textColor: const Color(0xff50c878),
                              iconBoxWidth: width / 28,
                              iconBoxHeight: width / 28,
                            ),
                            CustomGrid(
                              image: "rejected.png",
                              count: "23",
                              title: 'REJECTED',
                              textColor: const Color(0xff9747FF),
                              iconBoxWidth: width / 28,
                              iconBoxHeight: width / 28,
                            ),
                          ],
                        ),
                      ),
                      Charts(chartHeight: 350),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: MenuDataTable(
                              tableWidth: width / 2.6,
                              heading: "MENU ITEMS",
                              actions: "+ Add Items",
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: RestDataTable(
                              tableWidth: width / 2.6,
                              heading: "RESTAURANTS",
                              actions: "View Requests",
                            ),
                          )
                        ],
                      )
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
