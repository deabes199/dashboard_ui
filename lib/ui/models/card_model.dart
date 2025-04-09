import 'package:dashboard_ui/uitils/helper/app_assets.dart';

class CardModel {
  final String iamge, title, subTitle;

  const CardModel({
    required this.iamge,
    required this.title,
    required this.subTitle,
  });
  static List<CardModel> userInfoList = [
    CardModel(
      iamge: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
      CardModel(
      iamge: Assets.imagesAvatar2,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
      CardModel(
      iamge: Assets.imagesAvatar3,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
      CardModel(
      iamge: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),

  ];
}
