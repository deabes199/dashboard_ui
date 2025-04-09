import 'package:dashboard_ui/ui/widgets/desktop/part2/expeness/expnesess_and_quick.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part3/card_section.dart';
import 'package:flutter/material.dart';

class MobileSectionFromTablet extends StatelessWidget {
  const MobileSectionFromTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpnesessAndQuick(),
          CardSection(),
        ],
      ),
    );
  }
}
