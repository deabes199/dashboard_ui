import 'package:dashboard_ui/uitils/helper/app_colors.dart';
import 'package:dashboard_ui/uitils/helper/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.text, this.color, this.textColor});
  final String text;
  final Color? color, textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color ?? AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          onPressed: () {},
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              style: AppStyles.styleSemiBold18(context).copyWith(
                color: textColor,
              ),
            ),
          )),
    );
  }
}
