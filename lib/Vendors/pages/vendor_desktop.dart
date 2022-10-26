import 'package:admian_app/Vendors/widgets/vendor_card.dart';
import 'package:admian_app/constant_widgets/view_vendor_request_data_table.dart';
import 'package:flutter/material.dart';

import '../../constant_widgets/appbar.dart';
import '../../constant_widgets/custom_button.dart';
import '../../constant_widgets/drawer.dart';
import '../../constant_widgets/search_bar.dart';
import '../../constants/color.dart';

class VendorDesktop extends StatefulWidget {
  const VendorDesktop({Key? key}) : super(key: key);

  @override
  _VendorDesktopState createState() => _VendorDesktopState();
}

class _VendorDesktopState extends State<VendorDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.background,
        appBar: const CustomAppBar(
            title: "SELLERS",
            centerTitle: false,
            image: "unnamed copy.png",
            textSize: 16,
            titleSpacing: 330,
            elevation: 0,
            radius: 18),
        body: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Drawer
          const CustomDrawer(headerWidth: 150),
          // Rest of the body
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Search bar and button
                        Row(
                          children: [
                            const Expanded(
                                child:
                                    SearchBar(hintText: "Search products....")),
                            const SizedBox(
                              width: 300,
                            ),
                            CustomButton(
                                inputText: "View Requests",
                                height: 30,
                                width: 120,
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
                          height: 20,
                        ),
                        Expanded(
                            child: GridView.builder(
                                itemCount: 10,
                                gridDelegate:
                                    const SliverGridDelegateWithMaxCrossAxisExtent(
                                        crossAxisSpacing: 20,
                                        maxCrossAxisExtent: 258),
                                itemBuilder: (context, int index) {
                                  return const VendorCard(
                                      cardHeight: 210, cardWidth: 180);
                                }))
                      ])))
        ]));
  }
}
