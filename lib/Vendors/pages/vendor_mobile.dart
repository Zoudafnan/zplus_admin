import 'package:admian_app/Vendors/widgets/vendor_card.dart';
import 'package:flutter/material.dart';

import '../../constant_widgets/appbar.dart';
import '../../constant_widgets/custom_button.dart';
import '../../constant_widgets/drawer.dart';
import '../../constant_widgets/search_bar.dart';
import '../../constant_widgets/view_vendor_request_data_table.dart';
import '../../constants/color.dart';

class VendorMobile extends StatefulWidget {
  const VendorMobile({Key? key}) : super(key: key);

  @override
  _VendorMobileState createState() => _VendorMobileState();
}

class _VendorMobileState extends State<VendorMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
            title: 'SELLERS',
            image: 'unnamed copy.png',
            textSize: 15,
            radius: 15,
            elevation: 1,
            centerTitle: true),
        backgroundColor: AppColor.background,
        drawer: const CustomDrawer(headerWidth: 120),
        body: Padding(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 10, bottom: 10),
            child: Column(children: [
              Row(
                children: [
                  const Expanded(
                      child: SearchBar(hintText: "Search products....")),
                  const SizedBox(
                    width: 50,
                  ),
                  CustomButton(
                      inputText: "View Requests",
                      height: 30,
                      width: 100,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const Center(
                                child: Card(child: vendorRequest()),
                              );
                            });
                      })
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                  child: GridView.count(
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 0.8,
                crossAxisCount: 2,
                children: const [
                  VendorCard(cardHeight: 210, cardWidth: 180),
                  VendorCard(cardHeight: 210, cardWidth: 180),
                  VendorCard(cardHeight: 210, cardWidth: 180),
                  VendorCard(cardHeight: 210, cardWidth: 180),
                  VendorCard(cardHeight: 210, cardWidth: 180),
                ],
              )),
            ])));
  }
}
