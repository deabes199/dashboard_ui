import 'package:dashboard_ui/uitils/helper/app_assets.dart';

class ExpensessModel {
  final String image, title, date, price;

  const ExpensessModel({
    required this.image,
    required this.title,
    required this.date,
    required this.price,
  });
  static const List<ExpensessModel> itemsList = [
    ExpensessModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    ExpensessModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    ExpensessModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
}
