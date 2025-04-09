import 'package:dashboard_ui/ui/widgets/desktop/part2/expeness/expnesess_and_quick.dart';
import 'package:dashboard_ui/ui/widgets/desktop/part3/card_section.dart';
import 'package:flutter/material.dart';

class DesktopScrollWidget extends StatelessWidget {
  const DesktopScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ExpnesessAndQuick(),
                    ),
                    Expanded(
                      flex: 1,
                      child: CardSection(),
                    )
                  ],
                ),
              )
            ],
          ),
        );
  }
}