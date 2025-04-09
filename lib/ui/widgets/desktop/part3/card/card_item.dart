import 'package:dashboard_ui/uitils/helper/app_assets.dart';
import 'package:dashboard_ui/uitils/helper/app_colors.dart';
import 'package:dashboard_ui/uitils/helper/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return    AspectRatio(
          aspectRatio: 420 / 215,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.primaryColor,
              image: DecorationImage(
                image: AssetImage(
                  Assets.imagesCardBackground,
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    'Name card',
                    style: AppStyles.styleRegular12(context)
                        .copyWith(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Syah Bandi',
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                  trailing: SvgPicture.asset(Assets.imagesGallery),
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      '0918 8124 0042 8129',
                      style: AppStyles.styleSemiBold24(context)
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      '2012-121',
                      style: AppStyles.styleRegular14(context)
                          .copyWith(color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
  }
}