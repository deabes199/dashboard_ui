import 'package:dashboard_ui/ui/models/transctions_model.dart';
import 'package:dashboard_ui/uitils/helper/app_styles.dart';
import 'package:flutter/material.dart';

class TransctionItem extends StatelessWidget {
  const TransctionItem({super.key, required this.model});
  final TransctionsModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.grey.shade50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          model.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          model.date,
          style: AppStyles.styleRegular14(context).copyWith(fontSize: 16),
        ),
        trailing: Text(
          model.price,
          style: AppStyles.styleSemiBold16(context)
              .copyWith(color: model.inputOrOutPut ? Colors.green : Colors.red),
        ),
      ),
    );
  }
}
