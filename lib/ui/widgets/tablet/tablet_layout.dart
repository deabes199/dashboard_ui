import 'package:dashboard_ui/ui/widgets/desktop/part1/drawer/custom_drawer.dart';
import 'package:dashboard_ui/ui/widgets/tablet/tablet_use_mobile.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 2,
          child: MobileSectionFromTablet(),
        )
      ],
    );
  }
}

