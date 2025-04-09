import 'package:dashboard_ui/ui/widgets/desktop/part3/transctions/transction_header.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part3/transctions/transction_list_view.dart';
import 'package:dashboard_ui/uitils/helper/spacing.dart';
import 'package:flutter/material.dart';

class TransctionsHistory extends StatelessWidget {
  const TransctionsHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            TransctionHeader(),
            verticalSpace(10),
            TransctionListView()
          ],
        )
      ],
    );
  }
}