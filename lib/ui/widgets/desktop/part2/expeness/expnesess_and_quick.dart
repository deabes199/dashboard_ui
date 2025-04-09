import 'package:dashboard_ui/ui/widgets/desktop/part2/expeness/all_expeness.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part2/expeness/quick/quick_transiction.dart';
import 'package:dashboard_ui/uitils/helper/spacing.dart';
import 'package:flutter/material.dart';

class ExpnesessAndQuick extends StatelessWidget {
  const ExpnesessAndQuick({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpeness(),
        verticalSpace(8),
        QuickTransctions(),
      ],
    );
  }
}
