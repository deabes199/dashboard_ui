import 'package:dashboard_ui/ui/widgets/desktop/part3/card/page_view_dots_and_card.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part3/charts/income_chart.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part3/transctions/transction_history.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 8,
        bottom: 8,
        right: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageViewCardAndDots(),
          Divider(
            height: 40,
          ),
          TransctionsHistory(),
          IncomeCharts()
        ],
      ),
    );
  }
}
