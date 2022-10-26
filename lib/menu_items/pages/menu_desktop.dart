import 'package:admian_app/constant_widgets/custom_button.dart';
import 'package:admian_app/constants/bold_text.dart';
import 'package:admian_app/menu_items/widgets/product_card.dart';
import 'package:admian_app/constant_widgets/search_bar.dart';
import 'package:flutter/material.dart';

import '../../constant_widgets/appbar.dart';
import '../../constant_widgets/drawer.dart';
import '../../constants/color.dart';

class MenuDesktop extends StatefulWidget {
  const MenuDesktop({Key? key}) : super(key: key);

  @override
  _MenuDesktopState createState() => _MenuDesktopState();
}

class _MenuDesktopState extends State<MenuDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.background,
        appBar: const CustomAppBar(
            title: "MENU ITEMS",
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
                          child: SearchBar(hintText: "Search products....")),
                      const SizedBox(
                        width: 300,
                      ),
                      CustomButton(
                          inputText: "+ Add Item",
                          height: 35,
                          width: 120,
                          onPressed: () {
                            Navigator.pushNamed(context, '/addItems');
                          })
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Category name 1
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BoldText(text: "Starters"),
                          const SizedBox(
                            height: 5,
                          ),
                          // Grid elements
                          GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 10,
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 210,
                                      crossAxisSpacing: 20,
                                      childAspectRatio: 1,
                                      mainAxisSpacing: 10),
                              itemBuilder: (BuildContext, int index) {
                                return const ProductCard(
                                  cardHeight: 210,
                                  imageHeight: 50,
                                );
                              }),
                          const SizedBox(
                            height: 10,
                          ),
                          BoldText(text: "Rice"),
                          const SizedBox(
                            height: 5,
                          ),
                          // Grid elements
                          GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 8,
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 210,
                                      crossAxisSpacing: 20,
                                      childAspectRatio: 1,
                                      mainAxisSpacing: 10),
                              itemBuilder: (BuildContext, int index) {
                                return const ProductCard(
                                  cardHeight: 200,
                                  imageHeight: 50,
                                );
                              }),
                          const SizedBox(
                            height: 10,
                          ),
                          BoldText(text: "Chinese"),
                          const SizedBox(
                            height: 5,
                          ),
                          // Grid elements
                          GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 4,
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 210,
                                      crossAxisSpacing: 20,
                                      childAspectRatio: 1,
                                      mainAxisSpacing: 10),
                              itemBuilder: (BuildContext, int index) {
                                return const ProductCard(
                                  cardHeight: 200,
                                  imageHeight: 50,
                                );
                              }),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
