import 'package:flutter/material.dart';

import '../../constant_widgets/appbar.dart';
import '../../constant_widgets/custom_button.dart';
import '../../constant_widgets/drawer.dart';
import '../../constants/bold_text.dart';
import '../../constants/color.dart';
import '../widgets/product_card.dart';
import '../../constant_widgets/search_bar.dart';

class MenuMobile extends StatefulWidget {
  const MenuMobile({Key? key}) : super(key: key);

  @override
  _MenuMobileState createState() => _MenuMobileState();
}

class _MenuMobileState extends State<MenuMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
            title: 'MENU ITEMS',
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
                    inputText: "+ Add Item",
                    height: 35,
                    width: 100,
                    onPressed: () {
                      Navigator.pushNamed(context, '/addItems');
                    })
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            //Products listing
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
                                maxCrossAxisExtent: 200,
                                crossAxisSpacing: 20,
                                childAspectRatio: 1,
                                mainAxisSpacing: 10),
                        itemBuilder: (BuildContext, int index) {
                          return const ProductCard(
                            cardHeight: 200,
                            imageHeight: 40,
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
                                maxCrossAxisExtent: 200,
                                crossAxisSpacing: 20,
                                childAspectRatio: 1,
                                mainAxisSpacing: 10),
                        itemBuilder: (BuildContext, int index) {
                          return const ProductCard(
                            cardHeight: 200,
                            imageHeight: 40,
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
                                maxCrossAxisExtent: 200,
                                crossAxisSpacing: 20,
                                childAspectRatio: 1,
                                mainAxisSpacing: 10),
                        itemBuilder: (BuildContext, int index) {
                          return const ProductCard(
                            cardHeight: 200,
                            imageHeight: 40,
                          );
                        }),
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}
