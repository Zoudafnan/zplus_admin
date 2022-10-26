import 'package:admian_app/constant_widgets/view_vendor_request_data_table.dart';
import 'package:admian_app/constants/bold_text.dart';
import 'package:admian_app/constants/regular_text.dart';
import 'package:admian_app/constant_widgets/custom_button.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

/// Example without a datasource
class RestDataTable extends StatelessWidget {
  final String heading;
  final String actions;
  final double? tableWidth;

  const RestDataTable({
    Key? key,
    required this.heading,
    required this.actions,
    this.tableWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        height: 440,
        width: tableWidth,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BoldText(text: heading),
                  CustomButton(
                      inputText: actions,
                      height: 30,
                      width: 100,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const Center(
                                child: Card(child: vendorRequest()),
                              );
                            });
                      }),
                ],
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
                    columnSpacing: 12,
                    horizontalMargin: 12,
                    minWidth: 600,
                    columns: [
                      DataColumn2(
                        label: BoldText(text: "Name"),
                        size: ColumnSize.L,
                      ),
                      DataColumn(
                        label: BoldText(text: "Email"),
                      ),
                      DataColumn(
                        label: BoldText(text: "Phone"),
                      ),
                    ],
                    rows: List<DataRow>.generate(
                        5,
                        (index) => DataRow(cells: [
                              DataCell(Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.network(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8YK81qS75QSeArVnhPrfSmWEMnZatBz0OeQ&usqp=CAU",
                                      height: 40,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Flexible(
                                    child: RegularText(
                                      text: "Pizzas sh xba",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              )),
                              DataCell(RegularText(
                                  text: "restaurants@gmail.com",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black)),
                              DataCell(RegularText(
                                  text: "1234567890",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black)),
                            ]))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
