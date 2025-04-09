import 'package:dashboard_ui/ui/models/card_model.dart';
import 'package:dashboard_ui/ui/models/drawer_model.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part1/drawer/drawer_list_view.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part1/drawer/user_info_card.dart';
import 'package:dashboard_ui/uitils/helper/app_assets.dart';
import 'package:dashboard_ui/uitils/shared_compenet/custom_list_tile_item.dart';
import 'package:dashboard_ui/uitils/helper/spacing.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.sizeOf(context).width * .6,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoCard(
              cardModel: CardModel(
                  iamge: Assets.imagesAvatar1,
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com'),
            ),
          ),
          SliverToBoxAdapter(
            child: verticalSpace(32),
          ),
          DrawerListview(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                CustomListTileItem(
                  isActive: false,
                  model: DrawerModel(
                    icon: Assets.imagesSettings,
                    title: 'Setting system',
                  ),
                ),
                CustomListTileItem(
                  isActive: false,
                  model: DrawerModel(
                    icon: Assets.imagesLogout,
                    title: 'Logout account',
                  ),
                ),
                verticalSpace(48),
              ],
            ),
          )
        ],
      ),
    );
  }
}
