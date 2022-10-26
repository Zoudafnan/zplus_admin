import 'package:admian_app/constant_widgets/custom_button_red.dart';
import 'package:admian_app/constants/bold_text.dart';
import 'package:admian_app/constants/color.dart';
import 'package:admian_app/constants/regular_text.dart';
import 'package:flutter/material.dart';

import '../../constants/semi_bold.dart';

class VendorCard extends StatelessWidget {
  final double cardWidth;
  final double cardHeight;

  const VendorCard({
    Key? key,
    required this.cardHeight,
    required this.cardWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Center(
        child: Card(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            width: cardWidth,
            height: cardHeight,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                        radius: 18,
                        backgroundImage: NetworkImage(
                            "https://cdn.dribbble.com/users/6268398/screenshots/14607836/restaurant-logo-5.png")),
                    const SizedBox(
                      height: 15,
                    ),
                    //Product Name
                    SemiBoldText(
                      text: "Shisha Food Hub",
                      color: Colors.black,
                      size: 12,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    // Open and Close Time
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.access_time,
                          size: 15,
                          color: AppColor.textLight,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        RegularText(
                          text: "12AM to 10PM",
                          color: AppColor.textLight,
                          size: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: cardHeight * 0.05,
                    ),
                    // Items and Orders
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              BoldText(
                                text: "25",
                                size: 12,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              RegularText(
                                text: "Menu Items",
                                color: AppColor.textLight,
                                size: 10,
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const VerticalDivider(),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              BoldText(
                                text: "25",
                                size: 12,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              RegularText(
                                text: "Orders",
                                color: AppColor.textLight,
                                size: 10,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: cardHeight * 0.08,
                    ),
                    // Button
                    Flexible(
                      child: CustomButtonRed(
                          inputText: 'View details',
                          height: 25,
                          width: cardWidth / 1.09,
                          onPressed: () {
                            Navigator.pushNamed(context, '/vendorDetails');
                          },
                          font: 10),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
