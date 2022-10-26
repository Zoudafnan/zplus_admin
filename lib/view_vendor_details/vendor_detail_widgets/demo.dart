import 'package:admian_app/view_vendor_details/vendor_detail_widgets/colo_box.dart';
import 'package:flutter/material.dart';

import '../../constants/bold_text.dart';
import '../../constants/color.dart';
import '../../constants/regular_text.dart';
import '../../constants/semi_bold.dart';
import 'demo2.dart';

class RestaurantDetail extends StatefulWidget {
  const RestaurantDetail({Key? key}) : super(key: key);

  @override
  _RestaurantDetailState createState() => _RestaurantDetailState();
}

class _RestaurantDetailState extends State<RestaurantDetail> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.background,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(
                              "https://cdn.dribbble.com/users/6268398/screenshots/14607836/restaurant-logo-5.png")),
                      const SizedBox(
                        width: 10,
                      ),
                      SemiBoldText(
                        text: "Shisha Food Hub",
                        color: Colors.white,
                        size: 12,
                      ),
                    ],
                  ),
                ),
                background: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(1.0), BlendMode.softLight),
                      image: const NetworkImage(
                        'https://images.unsplash.com/photo-1571168136613-46401b03904e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTMyfHxjYWZlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"',
                      ),
                    ),
                  ),
                )),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    width: 1000,
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
                    width: 1000,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                ResText(text1: "PHONE", text2: "12345684784"),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          const ResText(text1: "TYPE", text2: "Veg & Non-veg"),
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
