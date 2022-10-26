import 'package:admian_app/constants/color.dart';
import 'package:flutter/material.dart';

import '../../constant_widgets/appbar.dart';
import '../../constant_widgets/drawer.dart';
import '../../constants/bold_text.dart';
import '../../constants/regular_text.dart';
import '../vendor_detail_widgets/colo_box.dart';
import '../vendor_detail_widgets/demo2.dart';

class vendorDetailDesktop extends StatefulWidget {
  const vendorDetailDesktop({Key? key}) : super(key: key);

  @override
  _vendorDetailDesktopState createState() => _vendorDetailDesktopState();
}

class _vendorDetailDesktopState extends State<vendorDetailDesktop> {
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
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(
                                'https://media.istockphoto.com/photos/empty-tabletop-in-the-coffe-shop-picture-id1191879835?k=20&m=1191879835&s=612x612&w=0&h=WM--FehE2sULPmRB5Kz0s0uL8Oxh5sk3mZZqyIwVJZc='))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 800,
                        child: Row(
                          children: const [
                            ColorBox(
                              topColor: Colors.red,
                              heading: "Orders",
                              number: "25",
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            ColorBox(
                              topColor: Colors.green,
                              heading: "Menu Items",
                              number: "12",
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            ColorBox(
                              topColor: Colors.purple,
                              heading: "Item Category",
                              number: "7",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Container(
                        width: 800,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RegularText(
                                    text: "NAME",
                                    color: AppColor.textLight,
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  BoldText(text: "Shisha Food Hub")
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const ResText(
                                  text1: "EMAIL", text2: "example@gmail.com"),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    ResText(
                                        text1: "PHONE", text2: "12345684784"),
                                    ResText(
                                        text1: "ALTERNATE PHONE",
                                        text2: "26152647838")
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const ResText(
                                  text1: "ADDRESS",
                                  text2:
                                      "Holla Compound BV Road Malpe Vadabandeshwraa bailakere"),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    ResText(
                                        text1: "AVERAGE WAITING TIME",
                                        text2: "15min"),
                                    ResText(
                                        text1: "WORKING HOURS",
                                        text2: "12AM to 10PM"),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const ResText(
                                  text1: "TYPE", text2: "Veg & Non-veg"),
                              const SizedBox(
                                height: 20,
                              ),
                              const ResText(
                                  text1: "DESCRIPTION",
                                  text2:
                                      "Here goes the description of the restautant ")
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
        ]));
  }
}
