import 'package:dashboard_ui/ui/widgets/desktop/part2/expeness/quick/latset_transctions_list.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part2/expeness/quick/quick_header.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part2/expeness/quick/quick_text_form_and_button.dart';
import 'package:flutter/material.dart';

class QuickTransctions extends StatelessWidget {
  const QuickTransctions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickHeader(),
          LatsetTransictionsList(),
          Divider(
            height: 10,
            thickness: 1,
          ),
          QuickTextFeildAndButton()
        ],
      ),
    );
  }
}
