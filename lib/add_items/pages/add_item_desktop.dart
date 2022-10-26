import 'package:admian_app/add_items/widgets/form.dart';
import 'package:flutter/material.dart';

import '../../constant_widgets/appbar.dart';
import '../../constant_widgets/drawer.dart';
import '../../constants/color.dart';

class AddItemDesktop extends StatefulWidget {
  const AddItemDesktop({Key? key}) : super(key: key);

  @override
  _AddItemDesktopState createState() => _AddItemDesktopState();
}

class _AddItemDesktopState extends State<AddItemDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.background,
        appBar: const CustomAppBar(
            title: "ADD ITEMS",
            centerTitle: false,
            image: "unnamed copy.png",
            textSize: 16,
            titleSpacing: 330,
            elevation: 0,
            radius: 18),
        body:
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: const [
          // Drawer
          CustomDrawer(headerWidth: 150),
          // Rest of the body
          Expanded(
              child: Padding(
            padding:
                EdgeInsets.only(left: 50.0, right: 50, top: 20, bottom: 20),
            child: ItemForm(),
          ))
        ]));
  }
}
