import 'package:dashboard_ui/uitils/helper/app_colors.dart';
import 'package:dashboard_ui/uitils/helper/app_styles.dart';
import 'package:flutter/material.dart';

class QuickHeader extends StatelessWidget {
  const QuickHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        Spacer(),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey.shade50,
          child: Icon(
            Icons.add,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
