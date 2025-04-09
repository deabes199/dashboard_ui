import 'package:dashboard_ui/uitils/helper/app_colors.dart';
import 'package:dashboard_ui/uitils/helper/spacing.dart';
import 'package:dashboard_ui/uitils/shared_compenet/custom_button.dart';
import 'package:dashboard_ui/uitils/shared_compenet/custom_text_feild.dart';
import 'package:flutter/material.dart';

class QuickTextFeildAndButton extends StatelessWidget {
  const QuickTextFeildAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                  title: 'Customer name', hint: 'Type customer name'),
            ),
            horizintalSpace(8),
            Expanded(
              child: CustomTextField(
                  title: 'Customer Email', hint: 'Type customer Email'),
            ),
          ],
        ),
        verticalSpace(12),
        Row(
          children: [
            Expanded(
              child:
                  CustomTextField(title: 'Item name', hint: 'Type item name'),
            ),
            horizintalSpace(8),
            Expanded(
              child: CustomTextField(
                  title: 'Item amount', hint: 'Type item amount'),
            ),
          ],
        ),
        verticalSpace(20),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              text: 'Add more details',
              color: Colors.white,
              textColor: AppColors.primaryColor,
            )),
            horizintalSpace(8),
            Expanded(
                child: CustomButton(
              text: 'Send Invoice',
            )),
          ],
        )
      ],
    );
  }
}
