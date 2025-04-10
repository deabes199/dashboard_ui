import 'package:dashboard_ui/ui/widgets/desktop/part2/expeness/expensess_list.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part2/expeness/header_widget.dart';
import 'package:dashboard_ui/uitils/helper/spacing.dart';
import 'package:flutter/material.dart';

class AllExpeness extends StatelessWidget {
  const AllExpeness({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        children: [
          HeaderWidget(),
          verticalSpace(16),
          ExpensessList(),
        ],
      ),
    );
  }
}
