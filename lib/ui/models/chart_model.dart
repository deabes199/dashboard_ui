import 'dart:ui';

import 'package:dashboard_ui/uitils/helper/app_colors.dart';

class ChartModel {
  final Color color;
  final String value, precent;

  const ChartModel({
    required this.color,
    required this.value,
    required this.precent,
  });
  static const List<ChartModel> detailsList = [
    ChartModel(
        color: AppColors.primaryColor, value: 'Design service', precent: '%40'),
    ChartModel(
        color: AppColors.deepBlue, value: 'Design product', precent: '%25'),
    ChartModel(
        color: Color(0xFF208BC7), value: 'Product royalti', precent: '%22'),
    ChartModel(color: AppColors.lighterGrey, value: 'Other', precent: '%10'),
  ];
}
