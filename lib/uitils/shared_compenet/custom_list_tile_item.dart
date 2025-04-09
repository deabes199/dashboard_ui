import 'package:dashboard_ui/ui/models/drawer_model.dart';
import 'package:dashboard_ui/uitils/helper/app_colors.dart';
import 'package:dashboard_ui/uitils/helper/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListTileItem extends StatelessWidget {
  const CustomListTileItem(
      {super.key, required this.model, required this.isActive,});
  final DrawerModel model;
  final bool isActive;
  

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 16),
      leading: SvgPicture.asset(model.icon),
      title: Text(
        model.title,
        style: AppStyles.styleMedium16(context),
      ),
      trailing: isActive?Container(
        width: 4,
        color: AppColors.primaryColor,
      ):SizedBox.shrink(),
    );
  }
}
