import 'package:admian_app/constant_widgets/appbar.dart';
import 'package:admian_app/dashboard/widget/charts.dart';
import 'package:admian_app/constant_widgets/drawer.dart';
import 'package:flutter/material.dart';
import '../../constants/color.dart';
import '../widget/manu_data_tables.dart';
import '../widget/grid_box.dart';
import '../widget/restrnt_data_table.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TabletScaffoldState createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const CustomAppBar(
          title: "Dashboard",
          image: "unnamed copy.png",
          textSize: 16,
          centerTitle: true,
          elevation: 2,
          radius: 16),
      backgroundColor: AppColor.background,
      drawer: const CustomDrawer(headerWidth: 150),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            // 4 grid box
            GridView.count(
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
                  iconBoxWidth: width / 20,
                  iconBoxHeight: width / 20,
                ),
                CustomGrid(
                  image: "dlivered.png",
                  count: "23",
                  title: 'DELIVERED',
                  textColor: const Color(0xffff2d55),
                  iconBoxWidth: width / 20,
                  iconBoxHeight: width / 20,
                ),
                CustomGrid(
                  image: "processing.png",
                  count: "32",
                  title: 'PROCESSING',
                  textColor: const Color(0xff50c878),
                  iconBoxWidth: width / 20,
                  iconBoxHeight: width / 20,
                ),
                CustomGrid(
                  image: "rejected.png",
                  count: "23",
                  title: 'REJECTED',
                  textColor: const Color(0xff9747FF),
                  iconBoxWidth: width / 20,
                  iconBoxHeight: width / 20,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Charts(chartHeight: 350),
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
