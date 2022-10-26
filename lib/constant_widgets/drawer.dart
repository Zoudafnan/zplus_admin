import 'package:admian_app/constants/color.dart';
import 'package:flutter/material.dart';

import '../constants/bold_text.dart';

class CustomDrawer extends StatelessWidget {
  final double headerWidth;

  const CustomDrawer({super.key, required this.headerWidth});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        DrawerHeader(
            child: Image.asset(
          'assets/name.png',
          width: headerWidth,
        )),
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, '/dashboard');
          },
          leading: const Icon(Icons.dashboard),
          title: BoldText(
            text: "Dashboard",
            color: AppColor.textLight,
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, '/orders');
          },
          leading: const Icon(Icons.list),
          title: BoldText(
            text: "Orders",
            color: AppColor.textLight,
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, '/menuItems');
          },
          leading: const Icon(Icons.food_bank_rounded),
          title: BoldText(
            text: "Menu Items",
            color: AppColor.textLight,
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, '/vendors');
          },
          leading: const Icon(Icons.sell_rounded),
          title: BoldText(
            text: "Sellers",
            color: AppColor.textLight,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.settings),
          title: BoldText(
            text: "Settings",
            color: AppColor.textLight,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.logout),
          title: BoldText(
            text: "logout",
            color: AppColor.textLight,
          ),
        ),
      ]),
    );
  }
}
