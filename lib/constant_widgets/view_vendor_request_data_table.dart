import 'package:admian_app/constant_widgets/custom_button.dart';
import 'package:admian_app/constants/bold_text.dart';
import 'package:admian_app/constants/regular_text.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

/// Example without a datasource
class vendorRequest extends StatelessWidget {
  const vendorRequest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        color: Colors.white,
        height: height / 1.3,
        width: width / 1.2,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Heading
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: BoldText(text: "Vendor Requests"),
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                thickness: 1,
              ),
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
                          text: "NAME",
                          size: 12,
                        ),
                      ),
                      DataColumn2(
                        label: BoldText(
                          text: "EMAIL",
                          size: 12,
                        ),
                      ),
                      DataColumn(
                        label: BoldText(
                          text: "PHONE",
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
                                text: "Shisha Food Hub",
                                color: Colors.black,
                              )),
                              DataCell(RegularText(
                                text: "restaurant@gmail.com",
                                color: Colors.black,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )),
                              DataCell(RegularText(
                                text: "1234567890",
                                color: Colors.black,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )),
                              DataCell(CustomButton(
                                inputText: "View",
                                height: 30,
                                width: 100,
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/vendorDetails');
                                },
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
