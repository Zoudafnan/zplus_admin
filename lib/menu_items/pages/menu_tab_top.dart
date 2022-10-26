import 'package:admian_app/constant_widgets/custom_button.dart';
import 'package:admian_app/constant_widgets/search_bar.dart';
import 'package:flutter/material.dart';

import '../../constant_widgets/appbar.dart';
import '../../constant_widgets/drawer.dart';
import '../../constants/bold_text.dart';
import '../../constants/color.dart';
import '../widgets/product_card.dart';

class MenuTabTop extends StatefulWidget {
  const MenuTabTop({Key? key}) : super(key: key);

  @override
  _MenuTabTopState createState() => _MenuTabTopState();
}

class _MenuTabTopState extends State<MenuTabTop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
            title: "MENU ITEMS",
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
                    inputText: "+ Add Item",
                    height: 35,
                    width: 120,
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
                                maxCrossAxisExtent: 210,
                                crossAxisSpacing: 20,
                                childAspectRatio: 1,
                                mainAxisSpacing: 10),
                        itemBuilder: (BuildContext, int index) {
                          return const ProductCard(
                            cardHeight: 200,
                            imageHeight: 45,
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
                            imageHeight: 45,
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
                            imageHeight: 45,
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
