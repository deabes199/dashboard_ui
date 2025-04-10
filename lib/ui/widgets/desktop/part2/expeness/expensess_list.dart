import 'package:dashboard_ui/ui/models/expensess_model.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part2/expeness/expensess_item.dart';
import 'package:flutter/material.dart';

class ExpensessList extends StatefulWidget {
  const ExpensessList({super.key});

  @override
  State<ExpensessList> createState() => _ExpensessListState();
}

class _ExpensessListState extends State<ExpensessList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: ExpensessModel.itemsList.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
            child: InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 1 ? 4 : 0),
            child: ExpensessItem(
              isSelected: selectedIndex == index,
              model: item,
            ),
          ),
        ));
      }).toList(),
    );
  }
}
