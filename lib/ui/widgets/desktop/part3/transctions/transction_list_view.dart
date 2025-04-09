import 'package:dashboard_ui/ui/models/transctions_model.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part3/transctions/transction_item.dart';
import 'package:flutter/material.dart';

class TransctionListView extends StatelessWidget {
  const TransctionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: TransctionsModel.transctionList
          .map((e) => TransctionItem(model: e))
          .toList(),
    );
  }
}
