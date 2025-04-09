import 'package:dashboard_ui/uitils/helper/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartData extends StatefulWidget {
  const ChartData({super.key});

  @override
  State<ChartData> createState() => _ChartDataState();
}

int isActive = -1;

class _ChartDataState extends State<ChartData> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, response) {
            isActive = response?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
              color: AppColors.primaryColor,
              radius: isActive == 0 ? 30 : 20,
              value: 40,
              showTitle: false),
          PieChartSectionData(
              color: AppColors.deepBlue,
              radius: isActive == 1 ? 30 : 20,
              value: 20,
              showTitle: false),
          PieChartSectionData(
              color: AppColors.lighterGrey,
              radius: isActive == 2 ? 30 : 20,
              value: 22,
              showTitle: false),
          PieChartSectionData(
            color: Colors.greenAccent,
            radius: isActive == 3 ? 30 : 20,
            value: 20,
            showTitle: false,
          ),
        ]);
  }
}
