import 'package:admian_app/Login_page/widgets/login_page.dart';
import 'package:admian_app/Login_page/widgets/otp_page.dart';
import 'package:admian_app/view_vendor_details/pages/vendor_detai_tab_top.dart';
import 'package:admian_app/view_vendor_details/pages/vendor_detail_desktop.dart';
import 'package:admian_app/view_vendor_details/pages/vendor_detail_mobile.dart';
import 'package:admian_app/view_vendor_details/pages/vendor_detail_resposive.dart';
import 'package:admian_app/view_vendor_details/pages/vendor_detail_tablet.dart';
import 'package:flutter/material.dart';

import 'Vendors/pages/vendor_desktop.dart';
import 'Vendors/pages/vendor_mobile.dart';
import 'Vendors/pages/vendor_responsive.dart';
import 'Vendors/pages/vendor_tab_top.dart';
import 'Vendors/pages/vendor_tablet.dart';
import 'add_items/pages/add_item_desktop.dart';
import 'add_items/pages/add_item_mobile.dart';
import 'add_items/pages/add_item_responsive.dart';
import 'add_items/pages/add_item_tablet.dart';
import 'add_items/pages/add_item_tabtop.dart';
import 'dashboard/pages/dashboard_res.dart';
import 'dashboard/pages/desktop_scaffold.dart';
import 'dashboard/pages/mobile_scaffold.dart';
import 'dashboard/pages/tab_top_scaffold.dart';
import 'menu_items/pages/menu_desktop.dart';
import 'menu_items/pages/menu_items_res.dart';
import 'menu_items/pages/menu_mobile.dart';
import 'menu_items/pages/menu_tab_top.dart';
import 'menu_items/pages/menu_tablet.dart';
import 'orders/order_pages/order_desktop.dart';
import 'orders/order_pages/order_mobile.dart';
import 'orders/order_pages/order_tab_top.dart';
import 'orders/order_pages/order_tablet.dart';
import 'orders/order_pages/orders_res.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: OtpPage(),
        initialRoute: '/loginPage',
        routes: {
          '/loginPage': (context) => const LoginPage(),
          '/otpPage': (context) => const OtpPage(),
          '/dashboard': (context) => const ResposiveLayout(
                mobileScaffold: MobileScaffold(),
                tabletScaffold: TabTopScaffold(),
                desktopScaffold: DesktopScaffold(),
                tabTopScaffold: TabTopScaffold(),
              ),
          '/orders': (context) => const Orders(
              orderMobile: OrderMobile(),
              orderTablet: OrderTablet(),
              orderTabTop: OrderTabTop(),
              orderDesktop: OrderDesktop()),
          '/menuItems': (context) => const MenuItems(
                menuMobile: MenuMobile(),
                menuDesktop: MenuDesktop(),
                menuTabTop: MenuTabTop(),
                menuTablet: MenuTablet(),
              ),
          '/addItems': (context) => const AddItem(
              addItemMobile: AddItemMobile(),
              addItemTablet: AddItemTablet(),
              addItemTabTop: AddItemTabTop(),
              addItemDesktop: AddItemDesktop()),
          '/vendors': (context) => const Vendors(
              vendorMobile: VendorMobile(),
              vendorTablet: VendorTablet(),
              vendorTabTop: VendorTabTop(),
              vendorDesktop: VendorDesktop()),
          '/vendorDetails': (context) => const vendorDetail(
              vendorDetailMobile: vendorDetailMobile(),
              vendorDetailTablet: vendorDetailTablet(),
              vendorDetailTabTop: vendorDetailTabTop(),
              vendorDetailDesktop: vendorDetailDesktop())
        });
  }
}
