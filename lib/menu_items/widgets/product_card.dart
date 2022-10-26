import 'package:admian_app/constants/color.dart';
import 'package:admian_app/constants/regular_text.dart';
import 'package:flutter/material.dart';

import '../../constants/semi_bold.dart';

class ProductCard extends StatelessWidget {
  final double cardHeight;
  final double imageHeight;
  const ProductCard(
      {Key? key, required this.cardHeight, required this.imageHeight})
      : super(key: key);

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
            width: 200,
            height: cardHeight,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 5, left: 5, right: 5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chorizo-mozarella-gnocchi-bake-cropped-9ab73a3.jpg?quality=90&resize=768,574",
                        width: imageHeight,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Product Name
                    SemiBoldText(
                      text: "Chicken Cutlet",
                      color: Colors.black,
                      size: 12,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // Product Category
                    RegularText(
                      text: "Starters",
                      color: AppColor.textLight,
                      size: 12,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // Product Description
                    Flexible(
                      child: RegularText(
                        text:
                            "They say time heals everything but no it teaches us how to live with pain.  hgyt gvyhv g jbu ywy hcsd chsd vhsad vchsav s djjah shwbdahdw auxga whd asyd asduysa uyc dcuwya shcbua xyuabsc xashc as",
                        color: AppColor.textLight,
                        size: 10,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
