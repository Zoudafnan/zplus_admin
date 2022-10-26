import 'package:admian_app/Vendors/widgets/vendor_card.dart';
import 'package:flutter/material.dart';

import '../../constant_widgets/appbar.dart';
import '../../constant_widgets/custom_button.dart';
import '../../constant_widgets/drawer.dart';
import '../../constant_widgets/search_bar.dart';
import '../../constant_widgets/view_vendor_request_data_table.dart';
import '../../constants/color.dart';

class VendorTabTop extends StatefulWidget {
  const VendorTabTop({Key? key}) : super(key: key);

  @override
  _VendorTabTopState createState() => _VendorTabTopState();
}

class _VendorTabTopState extends State<VendorTabTop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
            title: "SELLERS",
            image: "unnamed copy.png",
            textSize: 16,
            centerTitle: true,
            elevation: 2,
            radius: 16),
        backgroundColor: AppColor.background,
        drawer: const CustomDrawer(headerWidth: 150),
        body: Padding(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 10, bottom: 10),
            child: Column(children: [
              Row(
                children: [
                  const Expanded(
                      child: SearchBar(hintText: "Search products....")),
                  const SizedBox(
                    width: 100,
                  ),
                  CustomButton(
                      inputText: "View requests",
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
                height: 15,
              ),
              Expanded(
                child: GridView.builder(
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 260),
                    itemBuilder: (context, int index) {
                      return const VendorCard(cardHeight: 210, cardWidth: 180);
                    }),
              )
            ])));
  }
}
