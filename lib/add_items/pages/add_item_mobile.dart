import 'package:admian_app/add_items/widgets/form.dart';
import 'package:flutter/material.dart';

import '../../constant_widgets/appbar.dart';
import '../../constant_widgets/drawer.dart';
import '../../constants/color.dart';

class AddItemMobile extends StatefulWidget {
  const AddItemMobile({Key? key}) : super(key: key);

  @override
  _AddItemMobileState createState() => _AddItemMobileState();
}

class _AddItemMobileState extends State<AddItemMobile> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  String dropDownValue = 'Starters';
  var items = [
    'Starters',
    'Roti',
    'Chinese',
    'Dinner',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return const Scaffold(
        appBar: CustomAppBar(
            title: 'ADD ITEMS',
            image: 'unnamed copy.png',
            textSize: 15,
            radius: 15,
            elevation: 1,
            centerTitle: true),
        backgroundColor: AppColor.background,
        drawer: CustomDrawer(headerWidth: 120),
        body: ItemForm());
  }
}
