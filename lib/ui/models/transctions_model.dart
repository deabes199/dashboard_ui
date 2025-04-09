class TransctionsModel {
  final String title, date, price;
  final bool inputOrOutPut;

  const TransctionsModel(
      {required this.title,
      required this.date,
      required this.price,
      required this.inputOrOutPut});
  static List<TransctionsModel> transctionList = [
    TransctionsModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        price: r'$20,129',
        inputOrOutPut: false),
    TransctionsModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 ',
        price: r'$20,129',
        inputOrOutPut: true),
    TransctionsModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 ',
        price: r'$20,129',
        inputOrOutPut: false),
  ];
}
