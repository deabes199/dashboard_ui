import 'package:dashboard_ui/uitils/helper/app_colors.dart';
import 'package:dashboard_ui/uitils/helper/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title, required this.hint});
  final String title, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        TextField(
          decoration: InputDecoration(
            hintStyle: AppStyles.styleRegular16(context)
                .copyWith(color: AppColors.lighterGrey),
            filled: true,
            fillColor: Colors.grey.shade50,
            hintText: hint,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none),
          ),
        )
      ],
    );
  }
}
