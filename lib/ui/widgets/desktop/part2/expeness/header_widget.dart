import 'package:dashboard_ui/uitils/helper/app_assets.dart';
import 'package:dashboard_ui/uitils/helper/app_styles.dart';
import 'package:dashboard_ui/uitils/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.grey.shade300,
            ),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleSemiBold16(context),
              ),
              horizintalSpace(18),
              SvgPicture.asset(Assets.imagesMenu),
            ],
          ),
        )
      ],
    );
  }
}
