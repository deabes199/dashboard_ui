import 'package:dashboard_ui/uitils/helper/app_assets.dart';

class DrawerModel {
  final String icon, title;

  DrawerModel({required this.icon, required this.title});
  static List<DrawerModel> drawerList = [
    DrawerModel(icon: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerModel(icon: Assets.imagesMyTransctions, title: 'My Transaction'),
    DrawerModel(icon: Assets.imagesStatistics, title: 'Statistics'),
    DrawerModel(icon: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerModel(icon: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
}
