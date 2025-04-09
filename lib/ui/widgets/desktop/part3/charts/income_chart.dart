import 'package:dashboard_ui/ui/widgets/desktop/part3/charts/chart_and_details.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part3/charts/income_header.dart';
import 'package:dashboard_ui/uitils/helper/spacing.dart';
import 'package:flutter/material.dart';

class IncomeCharts extends StatelessWidget {
  const IncomeCharts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IncomeHeader(),
        verticalSpace(8),
        ChartAndDetails(),
      ],
    );
  }
}