import 'package:admian_app/constant_widgets/custom_button.dart';
import 'package:admian_app/constants/bold_text.dart';
import 'package:admian_app/constants/color.dart';
import 'package:admian_app/constants/regular_text.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

/// Example without a datasource
class OrderData extends StatelessWidget {
  final double? tableWidth;

  const OrderData({
    Key? key,
    this.tableWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        color: Colors.white,
        height: 440,
        width: tableWidth,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: DataTable2(
                    showBottomBorder: true,
                    dividerThickness: 1,
                    dataRowHeight: 60,
                    columnSpacing: 10,
                    horizontalMargin: 12,
                    minWidth: 600,
                    columns: [
                      DataColumn2(
                        label: BoldText(
                          text: "ORDER ID",
                          size: 12,
                        ),
                      ),
                      DataColumn2(
                        label: BoldText(
                          text: "RESTAURANT",
                          size: 12,
                        ),
                      ),
                      DataColumn(
                        label: BoldText(
                          text: "ITEMS",
                          size: 12,
                        ),
                      ),
                      DataColumn(
                        label: BoldText(
                          text: "ORDER DATE",
                          size: 12,
                        ),
                      ),
                      DataColumn(
                        label: BoldText(
                          text: "PAYMENT METHOD",
                          size: 12,
                        ),
                      ),
                      DataColumn(
                        label: BoldText(
                          text: "AMOUNT",
                          size: 12,
                        ),
                      ),
                      DataColumn(
                        label: BoldText(
                          text: "STATUS",
                          size: 12,
                        ),
                      ),
                      DataColumn(
                        label: BoldText(
                          text: "",
                          size: 12,
                        ),
                      ),
                    ],
                    rows: List<DataRow>.generate(
                        15,
                        (index) => DataRow(cells: [
                              DataCell(RegularText(
                                text: "#67363",
                                color: Colors.black,
                              )),
                              DataCell(RegularText(
                                text: "Shisha Food Hub",
                                color: Colors.black,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )),
                              DataCell(
                                  RegularText(text: "2", color: Colors.black)),
                              DataCell(RegularText(
                                text: "12 jan, 2022",
                                color: Colors.black,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )),
                              DataCell(RegularText(
                                text: "COD",
                                color: Colors.black,
                              )),
                              DataCell(RegularText(
                                text: "₹200.00",
                                color: Colors.black,
                              )),
                              DataCell(RegularText(
                                text: "New",
                                color: AppColor.primary,
                              )),
                              DataCell(CustomButton(
                                inputText: "View",
                                height: 30,
                                width: 100,
                                onPressed: () {},
                              )),
                            ]))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
