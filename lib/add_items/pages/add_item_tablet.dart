import 'package:admian_app/add_items/widgets/form.dart';
import 'package:flutter/material.dart';

import '../../constant_widgets/appbar.dart';
import '../../constant_widgets/drawer.dart';
import '../../constants/color.dart';

class AddItemTablet extends StatefulWidget {
  const AddItemTablet({Key? key}) : super(key: key);

  @override
  _AddItemTabletState createState() => _AddItemTabletState();
}

class _AddItemTabletState extends State<AddItemTablet> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(
            title: "ADD ITEMS",
            image: "unnamed copy.png",
            textSize: 16,
            centerTitle: true,
            elevation: 2,
            radius: 16),
        backgroundColor: AppColor.background,
        drawer: CustomDrawer(headerWidth: 150),
        body: ItemForm());
  }
}
