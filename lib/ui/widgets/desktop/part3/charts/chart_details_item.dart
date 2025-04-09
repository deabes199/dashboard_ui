import 'package:dashboard_ui/ui/models/chart_model.dart';
import 'package:dashboard_ui/uitils/helper/app_colors.dart';
import 'package:dashboard_ui/uitils/helper/app_styles.dart';
import 'package:flutter/material.dart';

class ChartDetailsItem extends StatelessWidget {
  const ChartDetailsItem({super.key, required this.model});
  final ChartModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 5,
            backgroundColor: model.color,
          ),
          Text(
            model.value,
            style: AppStyles.styleRegular12(context)
                .copyWith(color: AppColors.primaryColor),
          ),
          Text(
            model.precent,
            style: AppStyles.styleRegular14(context),
          ),
        ],
      ),
    );

    //
  }
}
