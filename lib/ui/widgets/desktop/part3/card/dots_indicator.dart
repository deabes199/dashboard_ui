import 'package:dashboard_ui/uitils/helper/app_colors.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currntIndex});
  final int currntIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Container(
                margin: EdgeInsets.only(right: 5),
                width: currntIndex == index ? 24 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: currntIndex == index
                      ? AppColors.primaryColor
                      : AppColors.lighterGrey,
                  borderRadius: BorderRadius.circular(4),
                ),
              )),
    );
  }
}
