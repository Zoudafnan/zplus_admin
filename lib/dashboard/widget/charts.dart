import 'package:admian_app/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Charts extends StatelessWidget {
  final double chartHeight;

  Charts({super.key, required this.chartHeight});

  List<SalesData> data = [
    SalesData('Jan', 35),
    SalesData('Feb', 5),
    SalesData('Mar', 34),
    SalesData('Apr', 32),
    SalesData('May', 40)
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3, right: 3),
      child: Container(
        height: chartHeight,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        child: SfCartesianChart(
          margin: const EdgeInsets.all(10),
          primaryXAxis: CategoryAxis(),
          title: ChartTitle(
              text: 'SALE STATISTICS',
              textStyle:
                  const TextStyle(fontSize: 12, color: AppColor.textLight),
              alignment: ChartAlignment.near),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries<SalesData, String>>[
            LineSeries<SalesData, String>(
                dataSource: data,
                xValueMapper: (SalesData sales, _) => sales.month,
                yValueMapper: (SalesData sales, _) => sales.sales,
                dataLabelSettings: const DataLabelSettings(isVisible: true),
                color: AppColor.primary,
                opacity: 1),
          ],
        ),
      ),
    );
  }
}

class SalesData {
  final String month;
  final double sales;

  SalesData(this.month, this.sales);
}
