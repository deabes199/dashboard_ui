import 'package:dashboard_ui/ui/models/card_model.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part1/drawer/user_info_card.dart';
import 'package:dashboard_ui/uitils/helper/app_styles.dart';
import 'package:dashboard_ui/uitils/helper/spacing.dart';
import 'package:flutter/material.dart';

class LatsetTransictionsList extends StatelessWidget {
  const LatsetTransictionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        verticalSpace(12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: CardModel.userInfoList
                .map(
                  (e) => IntrinsicWidth(
                    child: UserInfoCard(cardModel: e),
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}
