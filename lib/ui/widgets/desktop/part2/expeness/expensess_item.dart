import 'package:dashboard_ui/ui/models/expensess_model.dart';
import 'package:dashboard_ui/uitils/helper/app_colors.dart';
import 'package:dashboard_ui/uitils/helper/app_styles.dart';
import 'package:dashboard_ui/uitils/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpensessItem extends StatelessWidget {
  const ExpensessItem(
      {super.key, required this.isSelected, required this.model});
  final bool isSelected;
  final ExpensessModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isSelected ? AppColors.primaryColor : Colors.white,
        border: Border.all(
          color: Colors.grey.shade300,
          width: .2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 60),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        shape: BoxShape.circle,
                      ),
                      child: Center(child: SvgPicture.asset(model.image)),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_back_ios,
                color: isSelected ? Colors.white : Colors.black,
              )
            ],
          ),
          verticalSpace(16),
          Text(
            model.title,
            style: isSelected
                ? AppStyles.whiteStyleBold16(context)
                : AppStyles.styleSemiBold16(context),
          ),
          verticalSpace(8),
          Text(
            model.date,
            style: isSelected
                ? AppStyles.whiteStyleBold16(context).copyWith(
                    fontSize: 14,
                  )
                : AppStyles.styleRegular14(context),
          ),
          verticalSpace(8),
          Text(
            model.price,
            style: isSelected
                ? AppStyles.styleSemiBold24(context).copyWith(
                    color: Colors.white,
                  )
                : AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
