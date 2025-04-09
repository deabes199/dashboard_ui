import 'package:dashboard_ui/ui/models/card_model.dart';
import 'package:dashboard_ui/uitils/shared_compenet/custom_card.dart';
import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({super.key, required this.cardModel});
  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      image: cardModel.iamge,
      title: cardModel.title,
      subTitle: cardModel.subTitle,
    );
  }
}
