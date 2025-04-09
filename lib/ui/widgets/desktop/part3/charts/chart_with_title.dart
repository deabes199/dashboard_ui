import 'package:dashboard_ui/uitils/helper/app_colors.dart';
import 'package:dashboard_ui/uitils/helper/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartWithTitle extends StatefulWidget {
  const ChartWithTitle({super.key});

  @override
  State<ChartWithTitle> createState() => _ChartWithTitleState();
}

int isActive = -1;

class _ChartWithTitleState extends State<ChartWithTitle> {
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
            title: isActive == 0 ? 'Design service' : '%40',
            titlePositionPercentageOffset: isActive == 0 ? 1.5 : null,
            color: AppColors.primaryColor,
            radius: isActive == 0 ? 40 : 30,
            value: 40,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: isActive == 0 ? null : Colors.white),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: isActive == 1 ? 2.5 : null,
            title: isActive == 1 ? 'Design product' : '%20',
            color: AppColors.deepBlue,
            radius: isActive == 1 ? 40 : 30,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: isActive == 1 ? null : Colors.white),
            value: 20,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: isActive == 2 ? 1.5 : null,
            title: isActive == 2 ? 'Product royalti' : '%22',
            color: AppColors.lighterGrey,
            radius: isActive == 2 ? 40 : 30,
            value: 22,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: isActive == 2 ? null : Colors.white),
          ),
          PieChartSectionData(
            title: isActive == 3 ? 'Other' : '%20',
            titlePositionPercentageOffset: isActive == 3 ? 1.5 : null,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: isActive == 3 ? null : Colors.white),
            color: Colors.greenAccent,
            radius: isActive == 3 ? 40 : 30,
            value: 20,
          ),
        ]);
  }
}
