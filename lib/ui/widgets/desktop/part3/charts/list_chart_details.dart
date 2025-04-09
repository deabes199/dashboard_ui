import 'package:dashboard_ui/ui/models/chart_model.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part3/charts/chart_details_item.dart';
import 'package:flutter/material.dart';

class ChartDetailsList extends StatelessWidget {
  const ChartDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: ChartModel.detailsList
          .map((e) => ChartDetailsItem(model: e))
          .toList(),
    );
  }
}

