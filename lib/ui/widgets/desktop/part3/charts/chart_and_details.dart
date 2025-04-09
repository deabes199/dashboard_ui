import 'package:dashboard_ui/ui/widgets/desktop/part3/charts/chart_data.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part3/charts/chart_with_title.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part3/charts/list_chart_details.dart';
import 'package:dashboard_ui/uitils/helper/size_config.dart';
import 'package:flutter/material.dart';

class ChartAndDetails extends StatelessWidget {
  const ChartAndDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1410
        ? Padding(
            padding: const EdgeInsets.all(16),
            child: ChartWithTitle(),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: ChartData()),
              Expanded(flex: 2, child: ChartDetailsList())
            ],
          );
  }
}
