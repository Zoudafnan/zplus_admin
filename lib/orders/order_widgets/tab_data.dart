import 'package:admian_app/constants/color.dart';
import 'package:flutter/material.dart';

import 'order_list.dart';

class TabData extends StatelessWidget {
  const TabData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //create tabs here
              DefaultTabController(
                  length: 4, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          child: const TabBar(
                            indicatorColor: AppColor.primary,
                            labelColor: AppColor.primary,
                            unselectedLabelColor: Colors.black,
                            tabs: [
                              Tab(text: 'All Orders'),
                              Tab(text: 'Delivered'),
                              Tab(text: 'Processing'),
                              Tab(text: 'Rejected'),
                            ],
                          ),
                        ),
                        Container(
                            height: height / 1.1,
                            //height of TabBarView
                            decoration: const BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.grey, width: 0.5))),
                            child: const TabBarView(children: <Widget>[
                              OrderData(),
                              OrderData(),
                              OrderData(),
                              OrderData(),
                            ]))
                      ])),
            ]),
      ),
    );
  }
}
